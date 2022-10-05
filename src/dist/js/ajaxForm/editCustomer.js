let custID = '';

$(document).ready(function () {

    // Add Customer
    $("#addCustomer").click(function () {
        const cust_name = document.getElementById("cust_name").value;
        const cust_desc = document.getElementById("cust_desc").value;
        const cust_price = document.getElementById("cust_price").value;

        if ((custID.length !== 0) &&
            (cust_name.length !== 0) &&
            (cust_desc.length !== 0) &&
            (cust_price.length !== 0 && cust_price > 0)) {

            $.post("module/editCustomer.php", {
                cust_id: custID,
                cust_name: document.getElementById("cust_name").value,
                cust_desc: document.getElementById("cust_desc").value,
                cust_price: document.getElementById("cust_price").value
            },
                function (res, status) {
                    const data = JSON.parse(res);
                    if (data.status === true) {
                        // success alert
                        location.reload();
                    } else {
                        if (data.message === "customer_id_existed") {
                            document.getElementById("cust-id-error-exist").style.display = "block";
                        } else if (data.message === "") {

                        }
                    }
                });
        }
        if (custID.length === 0) {
            document.getElementById("cust-id-error").style.display = "block";
        }
        if (cust_name.length === 0) {
            document.getElementById("cust-name-error").style.display = "block";
        }
        if (cust_desc.length === 0) {
            document.getElementById("cust-desc-error").style.display = "block";
        }
        if (cust_price.length === 0) {
            document.getElementById("cust-price-error").style.display = "block";
        }
        if (cust_price <= 0) {
            document.getElementById("cust-price-error-value").style.display = "block";
        }
    });

    // button cancel
    $("#cancelEdit").click(function () {        
        document.getElementById("cust_name").value = "";
        document.getElementById("cust-name-error").style.display = "none";
        document.getElementById("cust_desc").value = "";
        document.getElementById("cust-desc-error").style.display = "none";
        document.getElementById("cust_price").value = "";
        document.getElementById("cust-price-error").style.display = "none";
        document.getElementById("cust-price-error-value").style.display = "none";
    });
});

function setCustDetail(cust_id, cust_name, cust_description, price) {
    custID = cust_id;
    document.getElementById("cust_name").value = cust_name;
    document.getElementById("cust_desc").value = cust_description;
    document.getElementById("cust_price").value = price;
}