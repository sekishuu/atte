@extends('layouts.app')

@section('content')
<div class="container">
    <p>{{ Auth::user()->name }}さんがログイン中です。</p>
    <h2>勤怠記録一覧</h2>
    <table class="table">
        <thead>
            <tr>
                <th>ユーザー名</th>
                <th>勤務日</th>
                <th>勤務開始時刻</th>
                <th>勤務終了時刻</th>
                <th>実休憩時間（分）</th>
                <th>実労働時間（時間）</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($attendances as $attendance)
            <tr>
                <td>{{ $attendance->user->name }}</td>
                <td>{{ $attendance->work_date }}</td>
                <td>{{ $attendance->formatted_start_time }}</td>
                <td>{{ $attendance->formatted_end_time }}</td>
                <td>{{ $attendance->total_break_minutes }}</td>
                <td>{{ $attendance->work_hours }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection