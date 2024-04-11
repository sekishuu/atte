@extends('layouts.app')

@section('content')

<div class="select__user__date">
    <p class="show__user_name">こんにちは、{{ Auth::user()->name }}さん【管理者画面】</p>
    <form class="select__user__form" action="{{ route('admin.index') }}" method="GET">
        <div class="select__date">
            <div class="choose__user__form">
                <p>ユーザー名を選択</p>
                <div class="choose__user">
                    <div class="choose__user__list">
                        <select name="user_id">
                            <option value="">すべて</option>
                            @foreach($users as $user)
                            <option value="{{ $user->id }}" {{ request('user_id') == $user->id ? 'selected' : '' }}>{{ $user->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <button class="select__user__btn" type="submit">検索</button>
                </div>
            </div>
            <div class="date__form">
                <form action="{{ route('admin.index') }}" method="GET">
                    <div class="show__date__form">
                        <input class="show__date" type="month" name="month" value="{{ $selectedMonth }}">
                        <button class="submit__btn" type="submit">表示</button>
                    </div>
                    <div class="select__date__btn">
                        <a class="yesterday__btn" href="{{ route('admin.index', ['month' => \Carbon\Carbon::parse($selectedMonth)->subMonth()->format('Y-m'), 'user_id' => request('user_id')])}}">&lsaquo; 前月</a>
                        <a href="{{ route('admin.index', ['month' => \Carbon\Carbon::now()->format('Y-m'), 'user_id' => request('user_id')])}}">今月</a>
                        <a class="tomorrow__btn" href="{{ route('admin.index', ['month' => \Carbon\Carbon::parse($selectedMonth)->addMonth()->format('Y-m'), 'user_id' => request('user_id')])}}">翌月 &rsaquo;</a>
                    </div>
                </form>
            </div>
            <div class="total__working__time__form">
                <div class="total__working__time">
                    <p>合計勤務時間: {{ $totalWorkTime }}</p>
                </div>
            </div>
        </div>
    </form>
</div>

<table class="atte__table">
    <thead>
        <tr>
            <th class="table__th">日付</th>
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
            <td class="table__td">{{ \Carbon\Carbon::parse($attendance->work_date)->format('n月j日') }}</td>
            <td class="table__td">{{ $attendance->user->name }}</td>
            <td class="table__td">{{ $attendance->formatted_start_time }}</td>
            <td class="table__td">{{ $attendance->formatted_end_time }}</td>
            <td class="table__td">{{ $attendance->formatted_total_break_time }}</td>
            <td class="table__td">{{ $attendance->work_hours }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
{{ $attendances->appends(['user_id' => request('user_id'), 'month' => request('month')])->links('vendor.pagination.custom_admin') }}

</div>
@endsection