const data = [
    // data from csv file
    ["path[directory:/ifs/]", "dir_cnt (count)", "file_cnt (count)", "ads_cnt", "other_cnt (count)", "phys_size_sum (bytes)", "log_size_sum_overflow", "report_date: 1672500620", "GB", "GB (Rounded up)", "GB quote in invoice", "Var"],
    ["/dir/name", "", "", "", "", 1170000000000000, "", "",  { t: "n", v: 4, f: "F2/F9" },  { t: "n", f: "ROUNDUP(I2,0)" }, "", ""],
    [],
    [],
    [],
    ["1 Byte = 8 Bit", "", "", "", "", ""],
    ["1 Kilobyte = 1,024 Bytes", "", "", "", "1024", ""],
    ["1 Megabyte = 1,048,576 Bytes", "", "", "", "1024", ""],
    ["1 Gigabyte = 1,073,741,824 Bytes", "", "", "", "1024", "1073741824"],
    ["1 Terabyte = 1,099,511,627,776 Bytes", "", "", "", "", ""],
]

// const worksheet = XLSX.utils.aoa_to_sheet(data)
// const workbook = XLSX.utils.book_new()

// XLSX.utils.book_append_sheet(workbook, worksheet, "directories_ESAS")

// const sheet = XLSX.writeFile(workbook, "Amended directories.xlsx")

// console.log(sheet)