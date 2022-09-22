function selectDate() {
    const dateSelect = document.getElementById('report-date');

    const currentUrl = new URL(window.location.href);

    if (currentUrl) {
        currentUrl.searchParams.set('report_date', dateSelect.value);
        window.location.href = currentUrl.href;
    }
}