@extends('layouts.app')

@section('content')
<p class="show__user_name">こんにちは、{{ Auth::user()->name }}さん【管理者画面】</p>
<div class="select__date">
    <form class="date__form" action="{{ route('admin.index') }}" method="GET">
        <input type="date" name="date" value="{{ $selectedDate }}">
        <button class="submit__btn" type="submit">表示</button>
    </form>
    <div class="select__date__btn">
        <a class="yesterday__btn" href="{{ route('admin.index', ['date' => \Carbon\Carbon::parse($selectedDate)->subDay()->format('Y-m-d')]) }}">&lsaquo; 前日</a>
        <a href="{{ route('admin.index', ['date' => \Carbon\Carbon::now()->format('Y-m-d')]) }}">今日</a>
        <a class="tomorrow__btn" href="{{ route('admin.index', ['date' => \Carbon\Carbon::parse($selectedDate)->addDay()->format('Y-m-d')]) }}">翌日 &rsaquo;</a>
    </div>
</div>

<table class="atte__table">
    <thead>
        <tr>
            <th class="table__th">名前</th>
            <th class="table__th">勤務開始</th>
            <th class="table__th">勤務終了</th>
            <th class="table__th">休憩時間</th>
            <th class="table__th">勤務時間</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($attendances as $attendance)
        <tr>
            <td class="table__td">{{ $attendance->user->name }}</td>
            <td class="table__td">{{ $attendance->formatted_start_time }}</td>
            <td class="table__td">{{ $attendance->formatted_end_time }}</td>
            <td class="table__td">{{ $attendance->formatted_total_break_time }}</td>
            <td class="table__td">{{ $attendance->work_hours }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
{{ $attendances->links('vendor.pagination.custom') }}

</div>
@endsection