let foldID = "";
let oldDir = "";

$(document).ready(function () {

    $('#edit_dir').keypress(function (e) {
        if (e.which === 32)
            return false;
    });

    // Add Customer
    $("#editDirectory").click(function () {

        const currentUrl = new URL(window.location.href);

        const dir = document.getElementById("edit_dir").value;
        const dir_name = document.getElementById("edit_dir_name").value;
        const cust_id = currentUrl.searchParams.get('cust_id');

        if ((cust_id.length !== 0) && (dir.length !== 0) && (dir_name.length !== 0)) {

            $.post("module/editDirectory.php",
                {
                    dir: dir.replace(/\s/g, ''),
                    old_dir: oldDir,
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
    $("#cancelEditDir").click(function () {

        document.getElementById("edit_dir").value = "";
        document.getElementById("edit-dir-error").style.display = "none";
        document.getElementById("edit-dir-error-exist").style.display = "none";
        document.getElementById("edit_dir_name").value = "";
        document.getElementById("edit-dir-name-error").style.display = "none";
    });

});

// set folder name
function setDirectoryName(fold_id, fold_dir, fold_name) {
    foldID = fold_id;
    oldDir = fold_dir;
    document.getElementById("edit_dir").value = fold_dir;
    document.getElementById("edit_dir_name").value = fold_name;
}