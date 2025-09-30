let deleteFolderID = "";

$(document).ready(function () {

    // Delete Directory
    $("#deleteDirectory").click(function () {

        const currentUrl = new URL(window.location.href);
        const cust_id = currentUrl.searchParams.get('cust_id');

        if (deleteFolderID.length !== 0 && cust_id.length !== 0) {

            $.post("module/deleteDirectory.php",
                {
                    folder_id: deleteFolderID,
                    cust_id: cust_id
                },
                function (res, status) {
                    console.log(res);
                    const data = JSON.parse(res);
                    if (data.status === true) {
                        // success - reload current page
                        window.location.reload();
                    } else {
                        alert("Error: " + data.message);
                    }
                });
        }
    });

    // button cancel
    $("#cancelDeleteDir").click(function () {
        deleteFolderID = "";
    });

});

// Set folder ID for deletion
function setDeleteFolderID(folderId) {
    deleteFolderID = folderId;
}