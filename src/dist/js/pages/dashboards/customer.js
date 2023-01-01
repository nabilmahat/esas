$(async function () {

    // chart data
    const currDate = new Date();
    var d = currDate.toLocaleDateString("en-GB", { // you can use undefined as first argument
        year: "numeric",
        month: "2-digit",
        day: "2-digit",
      })
    let year = d.year;
    let month = d.month; // +1 because in db april == 04

    let arrayData = [];
    let colorArray = [
        '#5f76e8',
        '#ff4f70',
        '#01caf1'
    ];

    if (!window.location.search) {
        console.log(' ');
    } else {
        const urlParams = new URLSearchParams(window.location.search);
        const dateParam = urlParams.get('report_date').split('-');
        year = dateParam[0];
        month = dateParam[1];
        
        console.log(year);
    }

    document.getElementById("totalCustomer").innerHTML = 0;
    document.getElementById("totalUsage").innerHTML = 0;

    let ajaxPost = new Promise(function (resolve, reject) {
        $.post("module/dashboardCurrentUsage.php",
            {
                year: year,
                month: month
            },
            async function (res, status) {

                // ==============================================================
                // Campaign
                // ==============================================================

                console.log(res);
                const data = JSON.parse(res);

                let totalUsage = 0;
                if (data.length != 0) {
                    for (let d in data) {
                        let sizeData = 0;
                        if (data[d].total_usage) {
                            sizeData = parseInt(data[d].total_usage);
                        }
                        arrayData.push([data[d].cust_name, sizeData]);
                    }
                    var div = '';
                    for (var i = 0; i < arrayData.length; i++) {
                        div += '<li class="mt-3">';
                        div += '<i class="fas fa-circle text-primary font-10 mr-2"></i>';
                        div += '<span class="text-muted">' + arrayData[i][0] + '</span>';
                        div += '<span class="text-dark float-right font-weight-medium">' + Math.ceil(arrayData[i][1] / 1073741824).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</span>';
                        div += "</li>";

                        totalUsage += Math.ceil(arrayData[i][1] / 1073741824)
                    }
                    document.getElementById("customer").innerHTML = div;
                    document.getElementById("totalCustomer").innerHTML = data.length
                    document.getElementById("totalUsage").innerHTML = totalUsage.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                }

                var chart1 = c3.generate({
                    bindto: '#campaign-v2',
                    data: {
                        columns:
                            arrayData
                        ,

                        type: 'donut',
                        tooltip: {
                            show: true
                        }
                    },
                    donut: {
                        label: {
                            show: false
                        },
                        title: 'Customer`s Usage (GB)',
                        width: 18
                    },

                    legend: {
                        hide: true
                    },
                    color: {
                        pattern: colorArray
                    }
                });

                d3.select('#campaign-v2 .c3-chart-arcs-title').style('font-family', 'Rubik');
            });
        resolve(arrayData);
    });

    await ajaxPost;
}); 