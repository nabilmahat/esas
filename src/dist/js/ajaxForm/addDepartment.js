$(document).ready(function () {

    // Add Customer
    $("#addDepartment").click(function () {
        const currentUrl = new URL(window.location.href);

        const dept_name = document.getElementById("dept_name").value;
        const cust_id = currentUrl.searchParams.get('cust_id');

        if (dept_name.length !== 0 && cust_id !== "") {

            $.post("module/addDepartment.php",
                {
                    dept_name: dept_name,
                    cust_id: cust_id
                },
                function (res, status) {
                    if (status === "success") {
                        const data = JSON.parse(res);
                        if (data.status === true) {
                            // success alert
                            location.reload();
                        } else {
                            if (data.message === "department_name_existed") {
                                document.getElementById("dept-name-error-exist").style.display = "block";
                            } else if (data.message === "") {

                            }
                        }
                    } else {
                        alert('Process failed');
                    }
                });
        }
        if (dept_name.length === 0) {
            document.getElementById("dept-name-error").style.display = "block";
        }
    });

    // button cancel
    $("#cancelAdd").click(function () {

        document.getElementById("dept_name").value = "";
        document.getElementById("dept-name-error").style.display = "none";
        document.getElementById("dept-name-error-exist").style.display = "none";
    });
});