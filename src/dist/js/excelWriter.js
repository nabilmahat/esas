$.post("module/excelReport.php",
    {
        file_name: "directories_ESAS-DM_10808_1672699983",
        month: "02",
        year: "2023"
    },
    async function (resData, status) {
        // console.log("Data: " + data + "\nStatus: " + status);
        var result = JSON.parse(resData);

        var data = [
            ["path[directory:/ifs/]", "dir_cnt (count)", "file_cnt (count)", "ads_cnt", "other_cnt (count)", "phys_size_sum (bytes)", "log_size_sum_overflow", "report_date: 1672500620", "GB", "GB (Rounded up)", "GB quote in invoice", "Var"]
        ];

        let count = 2;

        for (var res in result) {
            data.push([result[res].directory, result[res].dir_count, result[res].file_count, result[res].ads_count, result[res].other_count, result[res].physical_size, "", "", { t: "n", v: 4, f: "F"+count+"/$F$"+(result.length+8)+"" },  { t: "n", f: "ROUNDUP(I"+count+",0)" }, 0, { t: "n", f: "J"+count+"-K"+count+"" }]);
            count++;           
        }

        data.push([], ["", "", "", "", "", "", "", "", { t: "n", f: "SUM(I"+2+":I"+result.length+")" }, { t: "n", f: "SUM(J"+2+":J"+result.length+")" }, { t: "n", f: "SUM(K"+2+":K"+result.length+")" }, { t: "n", f: "SUM(L"+2+":L"+result.length+")" }], [], ["1 Byte = 8 Bit", "", "", "", "", ""],
            ["1 Kilobyte = 1,024 Bytes", "", "", "", "1024", ""],
            ["1 Megabyte = 1,048,576 Bytes", "", "", "", "1024", ""],
            ["1 Gigabyte = 1,073,741,824 Bytes", "", "", "", "1024", "1073741824"],
            ["1 Terabyte = 1,099,511,627,776 Bytes", "", "", "", "", ""]);

        // console.log(data);
        await test(data);
    });


async function test(data) {

    const worksheet = XLSX.utils.aoa_to_sheet(data)
    const workbook = XLSX.utils.book_new()

    XLSX.utils.book_append_sheet(workbook, worksheet, "directories_ESAS")

    const sheet = XLSX.writeFile(workbook, "Amended directories.xlsx")

    console.log(sheet)
}