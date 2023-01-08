function deleteUser(id, username) {
    document.getElementById('modalUserId').innerHTML = 'User: ' + username;
    document.getElementById('idDelete').value = id;
    $("#delete-user-modal").modal();
}

function confirmDelete() {
    var id = document.getElementById('idDelete').value;
    $.post("module/userDelete.php",
        {
            id: id,
        },
        async function (res, status) {
            if (res === 'success_delete') {
                location.href = 'user.php';
            }
        });
}