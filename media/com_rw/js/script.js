'use strict';
$(document).ready(function () {
    $("input[name='date']").on('change', function (e) {
        const urlParams = new URLSearchParams(window.location.search);
        const direction = urlParams.get('direction');
        let url = `${window.location.protocol}//${window.location.hostname}${window.location.pathname}?date=${this.value}`;
        if (direction !== null) url += `&direction=${direction}`;
        if (window.location.pathname.indexOf('station') !== -1) window.location.href = url;
    });
    try {
        let fr = document.querySelector("select[name='from']");
        let to = document.querySelector("#rasp_to");
        if (fr !== null && to !== null) {
            const urlParams = new URLSearchParams(window.location.search);
            let is_from = urlParams.get('from');
            let is_to = urlParams.get('to');
            let url = "/index.php?option=com_rw&task=rw.searchStation";

            fetch(url)
                .then(function (response) {
                    return response.json();
                })
                .then(function (stations) {
                    for (let i = 0; i < stations.length; i++)
                    {
                        let option = document.createElement("option");
                        option.value = stations[i].value;
                        option.text = stations[i].text;
                        to.appendChild(option);
                    }
                    for (let i = 0; i < stations.length; i++)
                    {
                        let option = document.createElement("option");
                        option.value = stations[i].value;
                        option.text = stations[i].text;
                        fr.appendChild(option);
                    }
                    $(fr).selectpicker({
                        liveSearch: true,
                        title: 'Откуда',
                        liveSearchNormalize: true,
                        showIcon: true

                    });
                    $(to).selectpicker({
                        liveSearch: true,
                        title: 'Куда',
                        showIcon: true
                    });
                    $(fr).selectpicker('refresh');
                    $(to).selectpicker('refresh');
                    if (is_from !== null) $(fr).selectpicker('val', is_from);
                    if (is_to !== null) $(to).selectpicker('val', is_to);
                    $(fr).selectpicker('refresh');
                    $(to).selectpicker('refresh');
                });
        }
        $(fr).on('change', function () {
            let val = this.value;
            console.log(val);
            $(`#form_to > option[value='${val}']`).disabled = 'disabled';
            $(to).selectpicker('refresh');
        });
    }
    catch (e) {
        console.log('Fields not found', from, to);
    }
    $("button[id^='switch-']").on('click', function () {
        let val = this.id;
        val = val.split('-');
        val = val[1];
        $(`#table-schedule > tbody > tr`).hide();
        $(`#table-schedule > tbody > .thread-${val}`).show();
        $(`div.threads > div`).hide();
        $(`div.thread-${val}`).show();
        let btns = document.querySelectorAll(".schedule-types > button");
        for (let i = 0; i < btns.length; i++) {
            if (btns[i].id !== `switch-${val}`) {
                btns[i].classList.add('btn-outline-primary');
                btns[i].classList.remove('btn-primary');
            }
        }
        this.classList.add('btn-primary');
        this.classList.remove('btn-outline-primary');
        document.querySelector("button[id^='schedule_all']").classList.remove('btn-primary');
        document.querySelector("button[id^='schedule_all']").classList.add('btn-outline-primary');
    });
    $("button[id^='schedule_all']").on('click', function () {
        $(`#table-schedule > tbody > tr`).show();
        $(`div.threads > div`).show();
        let btns = document.querySelectorAll(".schedule-types > button");
        for (let i = 0; i < btns.length; i++) {
            btns[i].classList.add('btn-outline-primary');
            btns[i].classList.remove('btn-primary');
        }
        this.classList.add('btn-primary');
        this.classList.remove('btn-outline-primary');
    });
    $("#toggle-schedule-hide").on('click', function () {
        $('.schedule').toggleClass('d-none');
    });
    $(".input-group.date").datepicker({
        todayBtn: "linked",
        clearBtn: true,
        language: "ru",
        daysOfWeekHighlighted: "0,6",
        startDate: 0,
        calendarWeeks: true
    });
    $("form[name='raspSearch']").on('submit', function () {
        let dat = document.querySelector("input[name='date']");
        dat = dat.value.split('.');
        dat = `${dat[2]}-${dat[1]}-${dat[0]}`;
        document.querySelector("input[name='date']").value = dat;
        return true;
    });
});
