let deptId = ''; 
let oldDeptName = '';

$(document).ready(function () {

    // Add Customer
    $("#editDepartment").click(function () {
        const currentUrl = new URL(window.location.href);

        const dept_name = document.getElementById("dept_name_edit").value;
        const dept_desc = document.getElementById("dept_desc_edit").value;
        const cust_id = currentUrl.searchParams.get('cust_id');

        if (dept_name.length !== 0 && cust_id !== "" && dept_desc.length !== 0) {

            $.post("module/editDepartment.php",
                {
                    dept_id: deptId,
                    old_dept_name: oldDeptName,
                    dept_name: dept_name,
                    dept_desc: dept_desc,
                    cust_id: cust_id
                },
                function (res, status) {
                    if (status === "success") {
                        const data = JSON.parse(res);
                        if (data.status === true) {
                            // success alert
                            location.reload();
                        } else {
                            if (data.message === "duplicate_dept_name") {
                                document.getElementById("edit-dept-name-error-exist").style.display = "block";
                            } else if (data.message === "") {
                                document.getElementById("edit-dept-name-error-exist").style.display = "block";
                            }
                        }
                    } else {
                        alert('Process failed');
                    }
                });
        }
        if (dept_name.length === 0) {
            document.getElementById("edit-dept-name-error").style.display = "block";
        }
        if (dept_desc.length === 0) {
            document.getElementById("edit-dept-desc-error").style.display = "block";
        }
    });

    // button cancel
    $("#cancelEditDept").click(function () {

        document.getElementById("dept_name").value = "";
        document.getElementById("edit-dept-name-error").style.display = "none";
        document.getElementById("edit-dept-name-error-exist").style.display = "none";
        document.getElementById("dept_desc").value = "";
        document.getElementById("edit-dept-desc-error").style.display = "none";
    });
});

// set folder name
function setDeptName(dept_id, dept_name, dept_desc) {
    deptId = dept_id;
    oldDeptName = dept_name;
    document.getElementById("dept_name_edit").value = dept_name;
    document.getElementById("dept_desc_edit").value = dept_desc;
}