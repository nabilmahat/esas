let deptID = "";

$(document).ready(function () {

    // Add Customer
    $("#addDirectory").click(function () {

        const currentUrl = new URL(window.location.href);

        const dir = document.getElementById("dir").value;
        const dir_name = document.getElementById("dir_name").value;
        const cust_id = currentUrl.searchParams.get('cust_id');

        if ((cust_id.length !== 0) && (dir.length !== 0) && (dir_name.length !== 0)) {

            $.post("module/addDirectory.php",
                {
                    dir: dir,
                    dir_name: dir_name,
                    cust_id: cust_id,
                    dept_id: deptID
                },
                function (res, status) {
                    console.log(res);
                    const data = JSON.parse(res);
                    if (data.status === true) {
                        // success alert
                        location.reload();
                    } else {
                        if (data.message === "dir_existed") {
                            document.getElementById("dir-error-exist").style.display = "block";
                        } else if (data.message === "") {

                        }
                    }
                });
        }
        if (dir.length === 0) {
            document.getElementById("dir-error").style.display = "block";
        }
        if (dir_name.length === 0) {
            document.getElementById("dir-name-error").style.display = "block";
        }
    });

    // button cancel
    $("#cancelAddDir").click(function () {

        document.getElementById("dir").value = "";
        document.getElementById("dir-error").style.display = "none";
        document.getElementById("dir-error-exist").style.display = "none";
        document.getElementById("dir_name").value = "";
        document.getElementById("dir-name-error").style.display = "none";
    });

});

// set folder name
function setFolderName(folder) {
    deptID = folder;
}