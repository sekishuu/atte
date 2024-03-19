<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atte</title>
    <link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css" />
    <link rel="stylesheet" href="{{ asset('css/common.css')}}">
    @yield('css')
</head>

<body>
    <div class="app">
        <header class="header">
            <h1 class="header__heading">Atte</h1>
            <ul class="header__right">
                <li class="header__right__menu">ホーム</li>
                <li class="header__right__menu">日付一覧</li>
                <li class="header__right__menu">ログアウト</li>
            </ul>
            @yield('link')
        </header>
        <div class="content">
            @yield('content')
        </div>
        <fotter class="fotter">
            <small class="small">
                Atte,inc.
            </small>
        </fotter>
    </div>
</body>

</html>