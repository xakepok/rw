'use strict';
$(document).ready(function () {
    $("input[name='date']").on('change', function (e) {
        const urlParams = new URLSearchParams(window.location.search);
        const direction = urlParams.get('direction');
        let url = `${window.location.protocol}//${window.location.hostname}${window.location.pathname}?date=${this.value}`;
        if (direction !== null) url += `&direction=${direction}`;
        window.location.href = url;
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
});
