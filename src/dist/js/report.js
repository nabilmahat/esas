function selectDate() {
    const dateSelect = document.getElementById('report-date');

    const currentUrl = new URL(window.location.href);

    if (currentUrl) {
        currentUrl.searchParams.set('report_date', dateSelect.value);
        window.location.href = currentUrl.href;
    }
}

// prevent step input in number
$(document).ready(function () {
    $("input[type=number]").on("focus", function () {
        $(this).on("keydown", function (event) {
            if (event.keyCode === 38 || event.keyCode === 40) {
                event.preventDefault();
            }
        });
    });

    // set cust_id in param into input
    const currentUrl = new URL(window.location.href);
    document.getElementById('paramCustID').value = currentUrl.searchParams.get('cust_id');

});

// disable space typing in cust_id input
$('#cust_id').keypress(function (e) {
    if (e.which === 32) {
        alert('Space is not allowed in customer id.');
        return false;
    }
});