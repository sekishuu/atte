document.addEventListener('DOMContentLoaded', function() {
    const startButton = document.querySelector('.btn__start');
    const endButton = document.querySelector('.btn__end');
    const breakStartButton = document.querySelector('.btn__break_start');
    const breakEndButton = document.querySelector('.btn__break_end');

    // 初期状態設定
    endButton.disabled = true;
    breakStartButton.disabled = true;
    breakEndButton.disabled = true;

    // 勤務開始ボタンクリック時
    startButton.addEventListener('click', function() {
        startButton.disabled = true;
        endButton.disabled = false;
        breakStartButton.disabled = false;
    });

    // 休憩開始ボタンクリック時
    breakStartButton.addEventListener('click', function() {
        breakStartButton.disabled = true;
        breakEndButton.disabled = false;
    });

    // 休憩終了ボタンクリック時
    breakEndButton.addEventListener('click', function() {
        breakStartButton.disabled = false;
        breakEndButton.disabled = true;
    });

});