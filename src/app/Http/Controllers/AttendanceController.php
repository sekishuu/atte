<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Attendance;
use App\Models\BreakTime;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class AttendanceController extends Controller
{
     public function create()
     {
          return view('stamp');
     }

     public function index(Request $request)
     {
          $userId = auth()->id();
          $selectedDate = $request->date ? Carbon::parse($request->date)->format('Y-m-d') : Carbon::now()->format('Y-m-d');

          $attendances = Attendance::with(['breakTimes'])
               ->where('user_id', $userId)
               ->whereDate('work_date', '=', $selectedDate)
               ->orderBy('start_time', 'desc')
               ->paginate(5);

          return view('index', compact('attendances', 'selectedDate'));
     }

     public function startWork(Request $request)
     {
          Attendance::create([
               'user_id' => Auth::id(),
               'work_date' => now()->toDateString(),
               'start_time' => now(),
          ]);

          $request->session()->put('work_started', true);
          $request->session()->put('break_started', false);
          return redirect('/')->with('success', '勤務開始を記録しました。');
     }

     public function endWork(Request $request)
     {
          $attendance = Attendance::where('user_id', Auth::id())
               ->whereDate('work_date', now()->toDateString())
               ->latest('start_time')
               ->first();

          $isAdmin = Auth::user()->admin;

          if ($attendance) {
               $attendance->update(['end_time' => now()]);
               $request->session()->forget('work_started', 'break_started');

               if ($isAdmin){
                    return redirect('/admin/index')->with('success', '勤務終了を記録しました。');
               } else {
                    return redirect('/attendance')->with('success', '勤務終了を記録しました。');
               }

          } else {
               return redirect('/attendance')->with('error', '勤務開始記録が見つかりません。');
          }
     }


     public function startBreak(Request $request)
     {
          $attendanceId = Attendance::where('user_id', Auth::id())

          ->whereDate('work_date', now()->toDateString())
               ->latest('start_time')
               ->value('id');

          if ($attendanceId) {
               BreakTime::create([
                    'attendance_id' => $attendanceId,
                    'start_time' => now(),
               ]);
               $request->session()->put('break_started', true);
               return redirect('/')->with('success', '休憩開始を記録しました。');
          }
          return redirect('/')->with('error', '対応する勤務記録が見つかりません。');
     }

     public function endBreak(Request $request)
     {
          $breakTime = BreakTime::whereHas('attendance', function ($query) {
               $query->where('user_id', Auth::id())
                    ->whereDate('work_date', now()->toDateString());
          })
                    ->latest('start_time')
                    ->first();

          if ($breakTime) {
               $breakTime->update(['end_time' => now()]);
               $request->session()->forget('break_started');
               return redirect('/')->with('success', '休憩終了を記録しました。');
          }
          return redirect('/')->with('error', '休憩開始記録が見つかりません。');
     }
}