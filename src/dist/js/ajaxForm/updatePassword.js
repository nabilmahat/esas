$(document).ready(function () {

    // login
    $("#passwordUpdate").click(function () {

        const currPassword = document.getElementById("current-password").value;
        const newPassword = document.getElementById("new-password").value;
        const confirmPassword = document.getElementById("confirm-password").value;

        document.getElementById("password-error-null").style.display = "none";
        document.getElementById("password-error-wrong").style.display = "none";
        document.getElementById("new-password-error-null").style.display = "none";
        document.getElementById("confirm-password-error-null").style.display = "none";
        document.getElementById("confirm-password-error-match").style.display = "none";

        if (currPassword.length !== 0 && newPassword.length !== 0 && confirmPassword.length !== 0) {

            if (newPassword !== confirmPassword) {
                document.getElementById("confirm-password-error-match").style.display = "block";
            } else {

                $.post("module/passwordUpdate.php",
                    {
                        current_password: currPassword,
                        new_password: newPassword,
                        confirm_password: confirmPassword
                    },
                    async function (res, status) {

                        console.log(res);

                        if (res === 'invalid_user') {
                            location.href = 'authentication/logout.php';
                        } else if (res === "password_invalid") {
                            document.getElementById("password-error-wrong").style.display = "block";
                        } else if (res === 'success_change_password') {
                            location.reload();
                        }
                    });
            }

        } else {

            if (currPassword.length === 0) {
                document.getElementById("password-error-null").style.display = "block";
            }
            if (newPassword.length === 0) {
                document.getElementById("new-password-error-null").style.display = "block";
            }
            if (confirmPassword.length === 0) {
                document.getElementById("confirm-password-error-null").style.display = "block";
            }
        }
    });

});