$(function () {
	"use strict";
	// Bar chart
	new Chart(document.getElementById("bar-chart"), {
		type: 'bar',
		data: {
			labels: [
				"Production", 
				"News", 
				"Engineering", 
				"Archive"],
			datasets: [
				{
					label: "Size (GB)",
					backgroundColor: [
						"#FFA500",
						"#FFA500",
						"#FFA500",
						"#FFA500"
					],
					data: [
						1372354,
						448750,
						229668,
						7111074
					]
				}
			]
		},
		options: {
			legend: { display: false },
			title: {
				display: true,
				text: 'MEDIA PRIMA ESAS MAY 1-31, 2022'
			}
		}
	});
	// line second
}); 