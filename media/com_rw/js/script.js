'use strict';
$(document).ready(function () {
    $("input[name='date']").on('change', function (e) {
        const urlParams = new URLSearchParams(window.location.search);
        const direction = urlParams.get('direction');
        let url = `${window.location.protocol}//${window.location.hostname}${window.location.pathname}?date=${this.value}`;
        if (direction !== null) url += `&direction=${direction}`;
        window.location.href = url;
    });
});