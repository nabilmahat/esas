async function printData() {

   // report detail   
   const currentUrl = new URL(window.location.href);
   const reportDate = currentUrl.searchParams.get('report_date');

   const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
   var date = new Date(reportDate), y = date.getFullYear(), m = date.getMonth();
   var lastDay = new Date(new Date(y, m + 1, 0)).getDate();

   const reportDuration = (month[m]) + ' ' + '1 – ' + lastDay + ', ' + y;

   const custName = document.getElementById('custName').innerHTML;

   // print report
   try {

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
      // var breakdownContent = document.getElementById("breakdown");

      let newWin = window.open("");

      let myPromise = new Promise(function (resolve, reject) {
         let styling = newWin.document.write('<html><head><title>Print Invoice</title>');
         styling = newWin.document.write('<link href="src/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">');
         styling += newWin.document.write('<link href="src/assets/extra-libs/c3/c3.min.css" rel="stylesheet">');
         styling += newWin.document.write('<link href="src/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">');
         styling += newWin.document.write('<link href="src/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />');
         styling += newWin.document.write('<link href="src/dist/css/style.min.css" rel="stylesheet">');
         styling += newWin.document.write('<link href="src/dist/css/custom.css" rel="stylesheet">');         
         styling = newWin.document.write(css);
         styling += newWin.document.write('</head>');

         // start div tag
         styling += newWin.document.write("<div class='center'>");
         styling += newWin.document.write("<br><br><br>");
         styling += newWin.document.write("<h1>Project Name: Enterprise Storage Archiving System</h1>");
         styling += newWin.document.write("<h1>Customer: " + custName + "</h1>");
         styling += newWin.document.write("<h1>Report Month: " + reportDuration + "</h1>");
         styling += newWin.document.write("<br><br><br><br><br>");
         // styling += newWin.document.write("</div>");
         resolve(styling);
      });

      let myPromiseImg = new Promise(function (resolve, reject) {         

         var img = new Image();
         img.src = 'src/assets/images/ipsb_logo.png';
         
         let imgSrc = newWin.document.write('<img src="src/assets/images/ipsb_logo.png" class="logo"></img>');
         imgSrc += newWin.document.write('<div class="pagebreak"> </div>');
         resolve(imgSrc);
      });

      let myPromise1 = new Promise(function (resolve, reject) {
         let a = newWin.document.write('<b>1. Isilon Report</b> <br>') + newWin.document.write('<br>'+isilonContent.outerHTML) + newWin.document.write('<div class="pagebreak"> </div>');
         resolve(a);
      });

      let myPromise2 = new Promise(function (resolve, reject) {
         let b = newWin.document.write('<b>2.1 Workfolder Summary</b> <br>') + newWin.document.write("<br><img src='" + workfolderChart.toDataURL('image/png') + "' class='chart chart-image'><br><br><br>");
         resolve(b);
      });

      let myPromise3 = new Promise(function (resolve, reject) {
         let c = newWin.document.write(workfolderContent.outerHTML) + newWin.document.write('<div class="pagebreak"> </div>');
         resolve(c);
      });

      let myPromise4 = new Promise(function (resolve, reject) {
         let d = newWin.document.write('<b>2.2 Departmental Summary</b> <br>') + newWin.document.write("<br><img src='" + departmentalChart.toDataURL('image/png') + "' class='chart chart-image'><br><br><br>");
         resolve(d);
      });

      let myPromise5 = new Promise(function (resolve, reject) {
         let e = newWin.document.write(departmentalContent.outerHTML) 
         // e += newWin.document.write('<div class="pagebreak"> </div>');
         e += newWin.document.write("<br><br><br><br>");
         e += newWin.document.write('************************END REPORT**********************************');

         // end div tag
         e += newWin.document.write("</div>");
         
         e += newWin.document.write('</html>');
         resolve(e);
      });

      // let myPromise6 = new Promise(function (resolve, reject) {
      //    let f = 'a'; // newWin.document.write('<b>2.3 Business Unit Breakdown </b> <br>') + newWin.document.write(breakdownContent.outerHTML);
      //    resolve(f);
      // });

      await myPromise;
      await myPromiseImg;
      await myPromise1;
      await myPromise2;
      await myPromise3;
      await myPromise4;
      await myPromise5;
      // await myPromise6;

      newWin.print();
      newWin.close();
   } catch (error) {
      console.log(error);
   }

}

$('#printReport').on('click', function () {
   printData();

})