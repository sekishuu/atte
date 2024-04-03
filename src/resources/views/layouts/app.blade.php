<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atte</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css" />
    <link rel="stylesheet" href="{{ asset('css/common.css')}}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Concert+One&display=swap" rel="stylesheet">
    @yield('css')
</head>

<body>
    <div class="app">
        <header class="header">
            <h1 class="header__heading">
                <a href="/" style="text-decoration: none; color: inherit;">Atte</a>
            </h1>
            <ul class="header__right">
                <li class="header__right__menu">
                    <a href="/" style="text-decoration: none; color: inherit;">ホーム</a>
                </li>
                <li class="header__right__menu">
                    @if(Auth::check())
                    <a href="{{ auth()->user()->admin ? '/admin/index' : '/attendance' }}" style="text-decoration: none; color: inherit;">日付一覧</a>
                    @else
                    <a href="/attendance" style="text-decoration: none; color: inherit;">日付一覧</a>
                    @endif
                </li>
                @if(Auth::check() && auth()->user()->admin)
                <li class="header__right__menu">
                    <a href="/admin/users" style="text-decoration: none; color: inherit;">ユーザー一覧</a>
                </li>
                @endif
                <li class="header__right__menu">
                    <form action="{{ route('logout') }}" method="POST">
                        @csrf
                        <button type="submit">ログアウト</button>
                    </form>
                </li>
            </ul>
            @yield('link')
        </header>
        <div class="content">
            @yield('content')
        </div>
        <footer class="footer">
            <small class="small">
                Atte,inc.
            </small>
        </footer>
    </div>
</body>

</html>