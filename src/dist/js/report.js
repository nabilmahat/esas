function selectDate() {
    let dateSelect = document.getElementById('report-date');
    // dateSelect.addEventListener('change',
    //     () => {    
    //     }
    // );
    var href = window.location.href;
    // href.searchParams.set('report_date', dateSelect.value);
    href.replace(/(report_date=).*?(&)/,'$1' + dateSelect.value + '$2');
    console.log(href.toString()); // https://google.com/?q=dogs
    console.log(dateSelect.value);
}