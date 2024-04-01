@extends('layouts.app')

@section('content')
@if (session('success'))
<div class="alert alert-success">
    {{ session('success') }}
</div>
@endif
<p class="show__user_name">{{ Auth::user()->name }}さんお疲れ様です！</p>
<div id="clock" class="clock">現在日時</div>
<script src="/js/updateTime.js"></script>

<div class="stamp__btn">
    <form class="start__form" action="{{ route('work.start') }}" method="POST">
        @csrf
        <button type="submit" class="btn__start" @if(session('work_started')) disabled @endif>勤務開始</button>
    </form>
    <form class="start__form" action="{{ route('work.end') }}" method="POST">
        @csrf
        <button type="submit" class="btn__end" @if(!session('work_started', false) || session('break_started', false)) disabled @endif>勤務終了</button>
    </form>
</div>

<div class="stamp__btn">
    <form class="start__form" action="{{ route('break.start') }}" method="POST">
        @csrf
        <button type="submit" class="btn__break_start" @if(!session('work_started') || session('break_started')) disabled @endif>休憩開始</button>
    </form>
    <form class="start__form" action="{{ route('break.end') }}" method="POST">
        @csrf
        <button type="submit" class="btn__break_end" @if(!session('break_started')) disabled @endif>休憩終了</button>
    </form>
</div>
@endsection