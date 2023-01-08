$(document).ready(function () {

    // login
    $("#userUpdate").click(function () {

        const email_param = document.getElementById("email_param").value;
        const email = document.getElementById("email").value;
        const username_param = document.getElementById("username_param").value;
        const username = document.getElementById("username").value;
        const fullname = document.getElementById("fullname").value;

        document.getElementById("email-error-exist").style.display = "none";
        document.getElementById("username-error-exist").style.display = "none";
        document.getElementById("email-error-format").style.display = "none";
        document.getElementById("email-error-null").style.display = "none";
        document.getElementById("username-error-null").style.display = "none";
        document.getElementById("fullname-error-null").style.display = "none";

        const emailFormat = /^[a-z0-9._]{1,64}@[a-z0-9.]{1,64}$/i.test(email);

        if (email_param.length !== 0 && email.length !== 0 && username.length !== 0 && fullname.length !== 0) {

            if (emailFormat) {

                $.post("module/userUpdate.php",
                    {
                        email_param: email_param,
                        email: email,
                        username_param: username_param,
                        username: username,
                        fullname: fullname,
                    },
                    async function (res, status) {

                        let result = await JSON.parse(res);
                        console.log(result.message);

                        if (result.status === 'success_update_user') {
                            location.href = 'user-detail.php?email=' + email;
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
    });

});