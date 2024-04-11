<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Attendance;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class AdminController extends Controller
{
    public function index(Request $request)
    {
        $selectedMonth = $request->month ? Carbon::parse($request->month)->format('Y-m') : Carbon::now()->format('Y-m');
        $startOfMonth = Carbon::parse($selectedMonth)->startOfMonth();
        $endOfMonth = Carbon::parse($selectedMonth)->endOfMonth();
        $userId = $request->user_id;

        $allAttendancesQuery = Attendance::with(['breakTimes', 'user'])
            ->when($userId, function ($query, $userId) {
                $query->where('user_id', $userId);
            })
            ->whereBetween('work_date', [$startOfMonth, $endOfMonth]);


        $totalWorkSeconds = $allAttendancesQuery->get()->reduce(function ($carry, $attendance) {
            return $carry + $attendance->work_seconds;
        }, 0);

        $hours = floor($totalWorkSeconds / 3600);
        $minutes = floor(($totalWorkSeconds % 3600) / 60);
        $seconds = $totalWorkSeconds % 60;
        $totalWorkTime = sprintf('%02d:%02d:%02d', $hours, $minutes, $seconds);

        $attendances = $allAttendancesQuery->orderBy('work_date', 'desc')
            ->orderBy('work_date', 'desc')
            ->orderBy('start_time', 'desc')
            ->paginate(5);

            $users = User::all();

        return view('admin', compact('attendances','selectedMonth','users','userId','totalWorkTime'));
    }

    public function usersList()
    {
        $users = User::paginate(5);
        return view('users_list', ['users' => $users]);
    }
}
