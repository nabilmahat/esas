function printData() {
   var divToPrint1 = document.getElementById("isilon");
   var chart1 = document.getElementById("bar-chart-horizontal");
   var divToPrint2 = document.getElementById("workfolder");
   newWin = window.open("");
   newWin.document.write(divToPrint1.outerHTML);
   newWin.document.write("<br><img src='" + chart1.toDataURL() + "'/>");
   newWin.document.write(divToPrint2.outerHTML);
   newWin.print();
   newWin.close();
}

$('#printReport').on('click', function () {
   printData();
   
})