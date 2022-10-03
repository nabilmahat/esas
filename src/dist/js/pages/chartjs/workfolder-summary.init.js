$(async function () {
	"use strict";

	// get cust param and date
	const currentUrl = new URL(window.location.href);
	const custID = currentUrl.searchParams.get('cust_id');
	const reportDate = currentUrl.searchParams.get('report_date');

	const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
	var date = new Date(reportDate), y = date.getFullYear(), m = date.getMonth();
	var lastDay = new Date(new Date(y, m + 1, 0)).getDate();

	const reportDuration = (month[m]) + ' ' + '1-' + lastDay + ', ' + y;

	let arrayLabel = [];
	let arrayData = [];
	let chartData = {};

	let customer = '';

	let ajaxPost = new Promise(function (resolve, reject) {
		$.post("module/workfolderData.php",
			{
				cust_id: custID,
				report_date: reportDate
			},
			async function (res, status) {
				const data = JSON.parse(res);
				if (data.length != 0) {
					for (let d in data) {
						arrayLabel.push(data[d].folder_name);
						arrayData.push(data[d].usage_size / 1073741824);
						customer = data[d].cust_name;
					}
					chartData = {
						label: arrayLabel,
						data: arrayData
					}
					new Chart(document.getElementById("bar-chart-horizontal"), {
						type: 'horizontalBar',
						data: {
							labels: arrayLabel,
							datasets: [
								{
									label: "Size (GB)",
									backgroundColor: [
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500",
										"#FFA500"
									],
									data: arrayData
								}
							]
						},
						options: {
							legend: { display: false },
							title: {
								display: true,
								text: customer + ' ESAS ' + reportDuration
							}
						}
					});
				} else {
					document.getElementById('bar-chart-horizontal').style.display = "none";
					document.getElementById('printReport').style.display = "none";
				}
			});
		resolve(chartData);
	});

	await ajaxPost;
}); 