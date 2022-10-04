$(async function () {

    // chart data
    const d = new Date();
    let year = d.getFullYear();
    let month = d.getMonth();

    let arrayData = [];
    let colorArray = [
        '#5f76e8',
        '#ff4f70',
        '#01caf1'
    ];

    let totalRevenue = 0.00;
    document.getElementById("totalRevenue").innerHTML = totalRevenue;

    let ajaxPost = new Promise(function (resolve, reject) {
        $.post("module/revenue.php",
            {
                year: year
            },
            async function (res, status) {

                // console.log(res);
                const resData = JSON.parse(res);

                if (resData.length != 0) {
                    for (let rd in resData) {
                        if (resData[rd].total_usage != 0) {
                            arrayData.push(((resData[rd].total_usage / 1073741824) * resData[rd].price).toFixed(2));
                        } else {
                            arrayData.push(0);
                        }

                        totalRevenue = ((resData[month].total_usage / 1073741824) * resData[month].price).toFixed(2)
                        document.getElementById("totalRevenue").innerHTML = "RM " + totalRevenue;
                    }
                }

                // console.log(month);
                // console.log(arrayData);

                // ============================================================== 
                // income
                // ============================================================== 
                var data = {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'],
                    series: [
                        arrayData
                    ]
                };

                var options = {
                    axisX: {
                        showGrid: false
                    },
                    seriesBarDistance: 1,
                    chartPadding: {
                        top: 15,
                        right: 15,
                        bottom: 5,
                        left: 0
                    },
                    plugins: [
                        Chartist.plugins.tooltip()
                    ],
                    width: '100%'
                };

                var responsiveOptions = [
                    ['screen and (max-width: 640px)', {
                        seriesBarDistance: 5,
                        axisX: {
                            labelInterpolationFnc: function (value) {
                                return value[0];
                            }
                        }
                    }]
                ];
                new Chartist.Bar('.net-income', data, options, responsiveOptions);

                // set dashboard total revenue
            });
        resolve(arrayData);
    });

    await ajaxPost;
})