@extends('layouts.app')

@section('content')
@if (session('success'))
<div class="alert alert-success">
    {{ session('success') }}
</div>
@endif
<div class="container">
    <h2>勤怠打刻</h2>
    <form class="start__form" action="{{ route('work.start') }}" method="POST">
        @csrf
        <button type="submit" class="btn__start">勤務開始</button>
    </form>
    <form class="start__form" action="{{ route('work.end') }}" method="POST">
        @csrf
        <button type="submit" class="btn__end">勤務終了</button>
    </form>
    <form class="start__form" action="{{ route('break.start') }}" method="POST">
        @csrf
        <button type="submit" class="btn__break_start">休憩開始</button>
    </form>
    <form class="start__form" action="{{ route('break.end') }}" method="POST">
        @csrf
        <button type="submit" class="btn__break_end">休憩終了</button>
    </form>
</div>
@endsection