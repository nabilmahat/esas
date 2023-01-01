function ImagetoPrint() {
    return "<html><head><script>function step1(){\n" +
        "setTimeout('step2()', 10);}\n" +
        "function step2(){window.print();window.close()}\n" +
        "</script></head><body onload='step1()'>\n" +
        "<div class='text-center'><img class='logo' src='src/assets/images/ipsb_logo.png' /></div></body></html>";
}

function PrintImage() {

    // report detail   
    const currentUrl = new URL(window.location.href);
    const reportDate = currentUrl.searchParams.get('report_date');

    const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var date = new Date(reportDate), y = date.getFullYear(), m = date.getMonth();
    var lastDay = new Date(new Date(y, m + 1, 0)).getDate();

    const reportDuration = (month[m]) + ' ' + '1 – ' + lastDay + ', ' + y;

    const custName = document.getElementById('custName').innerHTML;

    // style
    // css properties
    const css = '<style type="text/css">' +
        '.center {' +
        'text-align: justify;' +
        // 'border: 3px solid green;' +
        'padding: 30px;' +
        'margin: auto;' +
        '}' +
        'table, th, td {' +
        'border: 1px solid black;' +
        'border-collapse: collapse;' +
        'background-color: #D3D3D3;' +
        '}' +
        'table {' +
        'width: 70%;' +
        '}' +
        // 'th {' +
        // 'background-color: #D3D3D3;' +
        // '}' +
        '@media print {' +
        '.pagebreak { page-break-before: always; }' +
        '}' +
        '.chart-img {' +
        'border: 1px solid black;' +
        '}' +
        'h1 {' +
        'font-family: Arial, Helvetica, sans-serif;' +
        'font-weight: normal;' +
        '}' +
        '.chart {' +
        'width: 100%;' +
        'height: auto;' +
        'border: 1.5px solid black;' +
        '}' +
        '.logo {' +
        'height: 500px;' +
        'width: auto;' +
        '}' +
        '</style>';

    var isilonContent = document.getElementById("isilon");
    var workfolderChart = document.getElementById("bar-chart-horizontal");
    var workfolderContent = document.getElementById("workfolder");
    var departmentalChart = document.getElementById("bar-chart");
    var departmentalContent = document.getElementById("departmental");
    var businessUnit = document.getElementById("business_unit");

    // print report
    var Pagelink = "about:blank";
    var pwa = window.open(Pagelink, "_new");
    pwa.document.open();
    pwa.document.write('<html><head><title>Usage Report</title>');
    pwa.document.write('<link href="src/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">');
    pwa.document.write('<link href="src/assets/extra-libs/c3/c3.min.css" rel="stylesheet">');
    pwa.document.write('<link href="src/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">');
    pwa.document.write('<link href="src/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />');
    pwa.document.write('<link href="src/dist/css/style.min.css" rel="stylesheet">');
    pwa.document.write('<link href="src/dist/css/custom.css" rel="stylesheet">');
    pwa.document.write(css);
    pwa.document.write('</head>');

    // start div tag
    pwa.document.write("<div class='center'>");
    pwa.document.write("<br><br><br><br><br><br><br>");
    pwa.document.write("<h1>Project Name: Enterprise Storage Archiving System</h1><br>");
    pwa.document.write("<h1>Customer: " + custName + "</h1><br>");
    pwa.document.write("<h1>Report Month: " + reportDuration + "</h1>");
    pwa.document.write("<br><br><br><br>");
    pwa.document.write(ImagetoPrint());
    pwa.document.write('<div class="pagebreak"> </div>');
    pwa.document.write("<br><br>");
    pwa.document.write('<b>1. Isilon Report</b> <br>') + pwa.document.write('<br>' + isilonContent.outerHTML) + pwa.document.write('<div class="pagebreak"> </div>');
    pwa.document.write("<br><br>");
    pwa.document.write('<b>2.1 Workfolder Summary</b> <br>') + pwa.document.write("<br><img src='" + workfolderChart.toDataURL('image/png') + "' class='chart chart-image'><br><br><br>");
    pwa.document.write(workfolderContent.outerHTML) + pwa.document.write('<div class="pagebreak"> </div>');
    pwa.document.write("<br><br>");
    pwa.document.write('<b>2.2 Departmental Summary</b> <br>') + pwa.document.write("<br><img src='" + departmentalChart.toDataURL('image/png') + "' class='chart chart-image'><br><br><br>");
    pwa.document.write(departmentalContent.outerHTML) + pwa.document.write('<div class="pagebreak"> </div>');
    pwa.document.write("<br><br>");
    pwa.document.write('<b>2.3 ESAS Production Business Unit Breakdown</b> <br>') + pwa.document.write('<br>' + businessUnit.outerHTML);
    // e += pwa.document.write('<div class="pagebreak"> </div>');
    pwa.document.write("<br><br><br><br>");
    pwa.document.write('<div class="text-center">*******************************END REPORT*******************************</div>');

    // end div tag
    pwa.document.write("</div>");

    pwa.document.write('</html>');
    pwa.document.close();
}

$('#printReport').on('click', function () {
    PrintImage();
})