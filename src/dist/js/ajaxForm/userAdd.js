$(document).ready(function () {

    // login
    $("#userAdd").click(function () {

        const email = document.getElementById("email").value;
        const username = document.getElementById("username").value;
        const fullname = document.getElementById("fullname").value;
        const role = document.getElementById("role").value;
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("confirmPassword").value;

        document.getElementById("email-error-exist").style.display = "none";
        document.getElementById("email-error-format").style.display = "none";
        document.getElementById("email-error-null").style.display = "none";
        document.getElementById("username-error-exist").style.display = "none";
        document.getElementById("username-error-null").style.display = "none";
        document.getElementById("fullname-error-null").style.display = "none";
        document.getElementById("password-error-null").style.display = "none";
        document.getElementById("password-confirm-error-null").style.display = "none";
        document.getElementById("password-confirm-error-match").style.display = "none";

        const emailFormat = /^[a-z0-9._]{1,64}@[a-z0-9.]{1,64}$/i.test(email);

        if (email.length !== 0 && username.length !== 0 && fullname.length !== 0 && password.length !== 0 && confirmPassword.length !== 0) {
            if (emailFormat) {

                $.post("module/userAdd.php",
                    {
                        email: email,
                        username: username,
                        fullname: fullname,
                        role: role,
                        password: password
                    },
                    async function (res, status) {

                        let result = await JSON.parse(res);

                        if (result.status === 'success_add_user') {
                            location.href = 'user.php';
                        } else if (result.status === "user_not_exist") {
                            location.href = 'user-detail.php?email=' + email;
                        } else if (result.status === 'failed') {
                            for (let err in result.message) {
                                if (result.message[err] === 'email_exist') {
                                    document.getElementById("email-error-exist").style.display = "block";
                                } else if (result.message[err] === 'username_exist') {
                                    document.getElementById("username-error-exist").style.display = "block";
                                }
                            }
                        }
                    });

            } else {
                document.getElementById("email-error-format").style.display = "block";
            }
        }
        if (email.length === 0) {
            document.getElementById("email-error-null").style.display = "block";
        }
        if (username.length === 0) {
            document.getElementById("username-error-null").style.display = "block";
        }
        if (fullname.length === 0) {
            document.getElementById("fullname-error-null").style.display = "block";
        }
        if (password.length === 0) {
            document.getElementById("password-error-null").style.display = "block";
        }
        if (confirmPassword.length === 0) {
            document.getElementById("password-confirm-error-null").style.display = "block";
        }
        if (password != confirmPassword) {
            document.getElementById("password-confirm-error-match").style.display = "block";
        }
    });

    // prevent whitespace
    $('#username').keypress(function (e) {
        if (e.which === 32)
            return false;
    });

});