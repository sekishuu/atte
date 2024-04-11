@extends('layouts.app')

@section('content')
<p class="show__user_name">こんにちは、{{ Auth::user()->name }}さん【管理者画面】</p>

<table class="atte__table">
    <thead>
        <tr>
            <th class="table__th">ID</th>
            <th class="table__th">名前</th>
            <th class="table__th">email</th>
            <th class="table__th">ユーザー種別</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($users as $user)
        <tr>
            <td class="table__td">{{ $user->id }}</td>
            <td class="table__td">{{ $user->name }}</td>
            <td class="table__td">{{ $user->email }}</td>
            <td class="table__td">{{ $user->admin ? '管理者' : '一般' }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
{{ $users->links('vendor.pagination.custom') }}

</div>
@endsection