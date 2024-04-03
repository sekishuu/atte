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
        $selectedDate = $request->date ? Carbon::parse($request->date)->format('Y-m-d') : Carbon::now()->format('Y-m-d');

        $attendances = Attendance::with(['breakTimes'])
            ->whereDate('work_date', '=', $selectedDate)
            ->orderBy('start_time', 'desc')
            ->paginate(5);

        return view('admin', compact('attendances', 'selectedDate'));
    }

    public function usersList()
    {
        $users = User::paginate(5);
        return view('users_list', ['users' => $users]);
    }
}
