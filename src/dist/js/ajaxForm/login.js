$(document).ready(function () {

    // login
    $("#signin").click(function () {

        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

        if (username.length !== 0 && password.length !== 0) {

            $.post("authentication/loginUser.php",
                {
                    username: username,
                    password: password,
                },
                function (res, status) {
                    console.log(res);
                    if (res === 'success') {
                        location.href = 'index.php';
                    } else if (res === "failed") {
                        document.getElementById("failed-login").style.display = "block";
                    }
                });
        }
        if (username.length === 0) {
            document.getElementById("username-empty").style.display = "block";
        }
        if (password.length === 0) {
            document.getElementById("password-empty").style.display = "block";
        }
    });

});