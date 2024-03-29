@extends('layouts.app')

@section('content')
<h2>勤怠記録一覧</h2>
<p>こんにちは、{{ Auth::user()->name }}さん</p>
<form action="{{ route('attendances.index') }}" method="GET">
    <input type="date" name="date" value="{{ $selectedDate }}">
    <button type="submit">表示</button>
</form>

<div>
    <a href="{{ route('attendances.index', ['date' => \Carbon\Carbon::parse($selectedDate)->subDay()->format('Y-m-d')]) }}">前日</a>
    <a href="{{ route('attendances.index', ['date' => \Carbon\Carbon::now()->format('Y-m-d')]) }}">今日</a>
    <a href="{{ route('attendances.index', ['date' => \Carbon\Carbon::parse($selectedDate)->addDay()->format('Y-m-d')]) }}">翌日</a>
</div>

<table>
    <thead>
        <tr>
            <th>ユーザー名</th>
            <th>勤務開始時刻</th>
            <th>勤務終了時刻</th>
            <th>実休憩時間</th>
            <th>実労働時間</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($attendances as $attendance)
        <tr>
            <td>{{ $attendance->user->name }}</td>
            <td>{{ $attendance->formatted_start_time }}</td>
            <td>{{ $attendance->formatted_end_time }}</td>
            <td>{{ $attendance->formatted_total_break_time }}</td>
            <td>{{ $attendance->work_hours }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
{{ $attendances->links('vendor.pagination.custom') }}

</div>
@endsection