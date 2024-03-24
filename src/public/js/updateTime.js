function updateClock() {
    const now = new Date();
    const formattedTime = now.getFullYear() + '年' +
                        (now.getMonth() + 1).toString().padStart(2, '0') + '月' +
                        now.getDate().toString().padStart(2, '0') + '日' +
                        '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' +
                        now.getHours().toString().padStart(2, '0') + ':' +
                        now.getMinutes().toString().padStart(2, '0') + ':' +
                        now.getSeconds().toString().padStart(2, '0');

    document.getElementById('clock').innerHTML = formattedTime;
}

setInterval(updateClock, 1000);