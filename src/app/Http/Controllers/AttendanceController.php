<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
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


     public function index()
     {
          // $userId = auth()->id();
          $attendances = Attendance::with(['breakTimes'])
               // ->where('user_id', $userId)
               ->orderBy('work_date', 'desc')
               ->orderBy('start_time', 'desc')
               ->get()
               ->map(function ($attendance) {

                    $attendance->formatted_start_time = Carbon::parse($attendance->start_time)->format('H:i');


                    $attendance->formatted_end_time = $attendance->end_time
                    ? Carbon::parse($attendance->end_time)->format('H:i')
                    : '記録なし';

                    return $attendance;
               });

          return view('index', compact('attendances'));
     }

     public function startWork(Request $request)
     {
          Attendance::create([
               // 'user_id' => Auth::id(),
               'user_id' => 1,
               'work_date' => now()->toDateString(),
               'start_time' => now(),
          ]);

          return redirect('/')->with('success', '勤務開始を記録しました。');
     }


     public function endWork(Request $request)
     {
          // $attendance = Attendance::where('user_id', Auth::id())
          //      ->whereDate('work_date', now()->toDateString())
          $attendance = Attendance::whereDate('work_date', now()->toDateString())
               ->latest()
               ->first();

          if ($attendance) {
               $attendance->end_time = now();
               $attendance->save();

               return redirect('/attendance')->with('success', '勤務終了を記録しました。');
          }

          return redirect('/')->with('error', '勤務開始記録が見つかりません。');
     }


     public function startBreak(Request $request)
     {
          // $attendanceId = Attendance::where('user_id', Auth::id())
          //      ->whereDate('work_date', now()->toDateString())
          $attendanceId = Attendance::whereDate('work_date', now()->toDateString())
               ->latest()
               ->value('id');

          if ($attendanceId) {
               BreakTime::create([
                    'attendance_id' => $attendanceId,
                    'start_time' => now(),
               ]);

               return redirect('/')->with('success', '休憩開始を記録しました。');
          }

          return redirect('/')->with('error', '対応する勤務記録が見つかりません。');
     }


     public function endBreak(Request $request)
     {
          $breakTime = BreakTime::whereHas('attendance', function ($query) {
               // $query->where('user_id', Auth::id())
               //      ->whereDate('work_date', now()->toDateString());
               $query->whereDate('work_date', now()->toDateString());
          })
               ->latest()
               ->first();

          if ($breakTime) {
               $breakTime->end_time = now();
               $breakTime->save();

               return redirect('/attendance')->with('success', '休憩終了を記録しました。');
          }

          return redirect('/')->with('error', '休憩開始記録が見つかりません。');
     }
}
