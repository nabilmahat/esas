$(async function () {
    
    // chart data
    const d = new Date();
    let year = d.getFullYear();

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
        month = dateParam[1]-1; // -1 because array start with 0
    }
    
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
                            arrayData.push((resData[rd].total_usage / 1073741824)/100000);
                        } else {
                            arrayData.push(0);
                        }
                    }
                    // console.log(arrayData);
                }

                // ==============================================================
                // Earning Stastics Chart
                // ==============================================================
                var chart = new Chartist.Line('.stats', {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'],
                    series: [
                        arrayData
                    ]
                }, {
                    low: 0,
                    high: 100,
                    showArea: true,
                    fullWidth: true,
                    plugins: [
                        Chartist.plugins.tooltip()
                    ],
                    axisY: {
                        onlyInteger: true,
                        scaleMinSpace: 40,
                        offset: 30,
                        labelInterpolationFnc: function (value) {
                            return (value / 10) + 'PB';
                        }
                    },
                });

                // Offset x1 a tiny amount so that the straight stroke gets a bounding box
                chart.on('draw', function (ctx) {
                    if (ctx.type === 'area') {
                        ctx.element.attr({
                            x1: ctx.x1 + 0.001
                        });
                    }
                });

                // Create the gradient definition on created event (always after chart re-render)
                chart.on('created', function (ctx) {
                    var defs = ctx.svg.elem('defs');
                    defs.elem('linearGradient', {
                        id: 'gradient',
                        x1: 0,
                        y1: 1,
                        x2: 0,
                        y2: 0
                    }).elem('stop', {
                        offset: 0,
                        'stop-color': 'rgba(255, 255, 255, 1)'
                    }).parent().elem('stop', {
                        offset: 1,
                        'stop-color': 'rgba(80, 153, 255, 1)'
                    });
                });

                $(window).on('resize', function () {
                    chart.update();
                });
            });
        resolve(arrayData);
    });

    await ajaxPost;
})