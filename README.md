# Atte

## 概要
勤怠管理アプリ

## 環境構築
以下の手順に従ってください：
1. `git clone git@github.com:estra-inc/confirmation-test-contact-form.git`
2. `mv laravel-docker-template atte`
3. `git remote set-url origin git@github.com:sekishuu/atte.git`
4. `docker-compose up -d --build`

## Laravel環境構築
1. `docker-compose exec php bash`
2. `composer install`
3. 新しく`.env`ファイルを作成
4. `.env`に以下の環境変数を追加
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel_db
DB_USERNAME=laravel_user
DB_PASSWORD=laravel_pass
5. アプリケーションキーの作成: `php artisan key:generate`
6. マイグレーションの実行: `php artisan migrate`

## 使用技術(実行環境)
- PHP 7.4.9-fpm
- Laravel 8.83.27
- MySQL 8.0.26
- nginx 1.21.1

## ER図
![ER図](https://private-user-images.githubusercontent.com/156386526/326194884-c7b01383-0562-4ea0-aaae-fbaa808619ab.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQyMzg1MTMsIm5iZiI6MTcxNDIzODIxMywicGF0aCI6Ii8xNTYzODY1MjYvMzI2MTk0ODg0LWM3YjAxMzgzLTA1NjItNGVhMC1hYWFlLWZiYWE4MDg2MTlhYi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwNDI3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDQyN1QxNzE2NTNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1kODZkNTFiOTc0YWIyNWM1NWUxNGI4YTcyMWExYzMzZTI4OTRiZGVkZjEwMDU5Y2VlZGM1YThiNDJhNWEyNTcyJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.EzO8vt2h7Xl1k49tfKvWRSsGU76BK2ycs96sH1n_xxw)

## 追加実装項目
1. 認証
- メールによる本人確認機能
2. ユーザーページ
- 管理者ユーザーでログインするとユーザー一覧ボタンが表示され、ユーザー一覧ページが表示される。
- 日付一覧画面にて任意のユーザーを選択してユーザーごとの勤怠記録を表示させることが可能。

## 要件定義書外の機能
- ホーム画面（勤怠打刻画面）にて現在時刻を秒単位で表示。
![勤怠打刻画面](https://private-user-images.githubusercontent.com/156386526/326194899-d17cc738-ac3d-4dc3-9d1a-742c7f555eb7.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQyMzg1MTMsIm5iZiI6MTcxNDIzODIxMywicGF0aCI6Ii8xNTYzODY1MjYvMzI2MTk0ODk5LWQxN2NjNzM4LWFjM2QtNGRjMy05ZDFhLTc0MmM3ZjU1NWViNy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwNDI3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDQyN1QxNzE2NTNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zZjFlZWJhNWI2MDU3MjA3NGMyOTVjZDAxNDI2ZTQ2MDA4OTkxZTY0YzQ5N2FiZGIxOTAzMDkzZTA4ZWNiZWQ2JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.RRz6TvLASNm0UDXXgN56cVVeWrL_hifhVKnlwGkFFK4)
- 管理者ユーザーログイン状態での日付一覧画面では勤怠記録は月単位で表示され、右上に選択したユーザーの月の合計勤務時間が表示される。

## URL
- 開発環境：[http://localhost/](http://localhost/)
- phpMyAdmin：[http://localhost:8080/](http://localhost:8080/)
