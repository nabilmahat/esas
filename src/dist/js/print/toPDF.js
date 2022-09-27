async function printData() {

   try {
      const css = '<style type="text/css">' +
                     'table, th, td {' +
                        'border: 1px solid black;' +
                        'border-collapse: collapse;' +
                     '}' +
                     'table {' +
                        'width: 70%;' +
                     '}' +
                     '@media print {' +
                        '.pagebreak { page-break-before: always; }' +
                     '}' +
                     'img {'+
                        'border: 1px solid black;'+
                      '}'+
                  '</style>';

      var img = new Image();
      img.src = 'src/assets/images/ipsb_logo.png';

      var isilonContent = document.getElementById("isilon");
      var workfolderChart = document.getElementById("bar-chart-horizontal");
      var workfolderContent = document.getElementById("workfolder");
      var departmentalChart = document.getElementById("bar-chart");
      var departmentalContent = document.getElementById("departmental");
      var breakdownContent = document.getElementById("breakdown");

      let newWin = window.open("");      

      let myPromise = new Promise(function (resolve, reject) {
         let styling = newWin.document.write(css);
         styling += newWin.document.write("Project Name: Enterprise Storage Archiving System <br>");
         styling += newWin.document.write("Customer: Media Prima Berhad <br>");
         styling += newWin.document.write("Report Month: May 1 – 31, 2022 <br>");
         resolve(styling);
      });      

      let myPromiseImg = new Promise(function (resolve, reject) {
         let imgSrc = newWin.document.write("<img src='"+img.src+"'><br>");
         imgSrc += newWin.document.write('<div class="pagebreak"> </div>');
         resolve(imgSrc);
      });

      let myPromise1 = new Promise(function (resolve, reject) {
         let a = newWin.document.write('<b>1. Isilon Report</b> <br>') + newWin.document.write(isilonContent.outerHTML) + newWin.document.write('<div class="pagebreak"> </div>');
         resolve(a);
      });

      let myPromise2 = new Promise(function (resolve, reject) {
         let b = newWin.document.write('<b>2.1 Workfolder Summary</b> <br>') + newWin.document.write("<br><img src='" + workfolderChart.toDataURL('image/png') + "'><br><br><br>");
         resolve(b);
      });

      let myPromise3 = new Promise(function (resolve, reject) {
         let c = newWin.document.write(workfolderContent.outerHTML) + newWin.document.write('<div class="pagebreak"> </div>');
         resolve(c);
      });

      let myPromise4 = new Promise(function (resolve, reject) {
         let d = newWin.document.write('<b>2.2 Departmental Summary</b> <br>') + newWin.document.write("<br><img src='" + departmentalChart.toDataURL('image/png') + "'><br><br><br>");
         resolve(d);
      });

      let myPromise5 = new Promise(function (resolve, reject) {
         let e = newWin.document.write(departmentalContent.outerHTML) + newWin.document.write('<div class="pagebreak"> </div>');
         resolve(e);
      });

      let myPromise6 = new Promise(function (resolve, reject) {
         let f = newWin.document.write('<b>2.3 Business Unit Breakdown </b> <br>') + newWin.document.write(breakdownContent.outerHTML);
         resolve(f);
      });

      await myPromise;
      await myPromiseImg;
      await myPromise1;
      await myPromise2;
      await myPromise3;
      await myPromise4;
      await myPromise5;
      await myPromise6;

      newWin.print();
      newWin.close();
   } catch (error) {
      console.log(error);
   }

}

$('#printReport').on('click', function () {
   printData();

})