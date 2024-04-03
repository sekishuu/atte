@extends('layouts.app')

@section('content')
<p class="show__user_name">こんにちは、{{ Auth::user()->name }}さん【管理者画面】</p>

<table class="atte__table">
    <thead>
        <tr>
            <th class="table__th">名前</th>
            <th class="table__th">email</th>
            <th class="table__th">管理者ユーザー</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($users as $user)
        <tr>
            <td class="table__td">{{ $user->name }}</td>
            <td class="table__td">{{ $user->email }}</td>
            <td class="table__td">{{ $user->admin ? 'Yes' : 'No' }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
{{ $users->links('vendor.pagination.custom') }}

</div>
@endsection