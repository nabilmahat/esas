$('#print').on('click', function () {

    // report detail   
    const currentUrl = new URL(window.location.href);
    const reportDate = currentUrl.searchParams.get('report_date');
    var date = new Date(reportDate), y = date.getFullYear(), m = ('0' + (date.getMonth() + 1)).slice(-2);

    var reportNum = $('#reportName').find(":selected").val();
    var reportName = $('#reportName').find(":selected").text();

    if (reportName === 'PDF Report') {
        PrintImage();
    } else {

        var fileName = reportName.substring(0, 31);

        $.post("module/excelReport.php",
            {
                file_name: reportName,
                month: m,
                year: y
            },
            async function (resData, status) {
                // console.log("Data: " + data + "\nStatus: " + status);
                var result = JSON.parse(resData);

                var data = [
                    ["path[directory:/ifs/]", "dir_cnt (count)", "file_cnt (count)", "ads_cnt", "other_cnt (count)", "phys_size_sum (bytes)", "log_size_sum_overflow", "report_date: 1672500620", "GB", "GB (Rounded up)", "GB quote in invoice", "Var"]
                ];

                let count = 2;

                for (var res in result) {
                    data.push([result[res].directory, result[res].dir_count, result[res].file_count, result[res].ads_count, result[res].other_count, result[res].physical_size, "", "", { t: "n", v: 4, f: "ROUND(F" + count + "/$F$" + (result.length + 8) + ",2)" }, { t: "n", f: "ROUNDUP(I" + count + ",0)" }, 0, { t: "n", f: "J" + count + "-K" + count + "" }]);
                    count++;
                }

                data.push([], ["", "", "", "", "", "", "", "", { t: "n", f: "SUM(I" + 2 + ":I" + (result.length+1) + ")" }, { t: "n", f: "SUM(J" + 2 + ":J" + (result.length+1) + ")" }, { t: "n", f: "SUM(K" + 2 + ":K" + (result.length+1) + ")" }, { t: "n", f: "SUM(L" + 2 + ":L" + (result.length+1) + ")" }], [], ["1 Byte = 8 Bit", "", "", "", "", ""],
                    ["1 Kilobyte = 1,024 Bytes", "", "", "", "1024", ""],
                    ["1 Megabyte = 1,048,576 Bytes", "", "", "", "1024", ""],
                    ["1 Gigabyte = 1,073,741,824 Bytes", "", "", "", "1024", "1073741824"],
                    ["1 Terabyte = 1,099,511,627,776 Bytes", "", "", "", "", ""]);

                // console.log(data);
                await test(data, fileName, reportNum);
            });

    }
})

async function test(data, fileName, reportNum) {
    const worksheet = XLSX.utils.aoa_to_sheet(data)
    const workbook = XLSX.utils.book_new()

    XLSX.utils.book_append_sheet(workbook, worksheet, fileName)

    const sheet = XLSX.writeFile(workbook, reportNum + ". Amended " + fileName + ".xlsx")

    console.log(sheet)
}