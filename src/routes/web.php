<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AttendanceController;
use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Mail;
use App\Mail\TestEmail;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/', [AttendanceController::class, 'create'])->name('attendances.create');
    Route::post('/attendances', [AttendanceController::class, 'store'])->name('attendances.store');
    Route::get('/attendance', [AttendanceController::class, 'index'])->name('attendances.index');
    Route::post('/work/start', [AttendanceController::class, 'startWork'])->name('work.start');
    Route::post('/work/end', [AttendanceController::class, 'endWork'])->name('work.end');
    Route::post('/break/start', [AttendanceController::class, 'startBreak'])->name('break.start');
    Route::post('/break/end', [AttendanceController::class, 'endBreak'])->name('break.end');
});

Route::middleware(['auth', 'is_admin', 'verified'])->group(function () {
    Route::get('/admin/index', [AdminController::class, 'index'])->name('admin.index');
    Route::get('/admin/users', [AdminController::class, 'usersList'])->name('admin.usersList');
});

Route::get('/send-test-email', function () {
    Mail::to('tobenaibutawa.tadanobuta21@gmail.com')->send(new TestEmail());

    return 'メールが送信されました。';
});