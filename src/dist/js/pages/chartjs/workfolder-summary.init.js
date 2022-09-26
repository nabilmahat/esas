$(function () {
	"use strict";

	// Horizental Bar Chart
	new Chart(document.getElementById("bar-chart-horizontal"), {
		type: 'horizontalBar',
		data: {
			labels: [
				"ESAS MXFSERVER",
				"ESAS Aspera",
				"ESAS ARCHIVE - Dalet DPSHARE/RSU",
				"ESAS ARCHIVE - Dalet DPSHARE/LSU",
				"ESAS ARCHIVE - Dalet DPSHARE/ESU",
				"ESAS ARCHIVE - Dalet MediaPrimaShare",
				"ESAS ARCHIVE - Dalet Diva_Restore",
				"ESAS ARCHIVE -Dalet Diva_Direct",
				"ESAS ARCHIVE - NRCS",
				"ESAS ARCHIVE -IMS",
				"ESAS ARCHIVE -RC_Transit",
				"ESAS ARCHIVE -AsperaData",
				"ESAS ARCHVIE - Dalet Amberfin_WC",
				"ESAS ARCHIVE -Diva",
				"PWD_Clean_Version",
				"ESAS ARCHIVE - Dalet DPSHARE EXPORTS",
				"ESAS ARCHIVE -Tonton_DailyTransit",
				"ESAS ARCHIVE -PE_Transit_Folder"

			],
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
					data: [
						1363974,
						0,
						5276249,
						1205627,
						569350,
						59027,
						0,
						0,
						448750,
						31614,
						691,
						198054,
						0,
						0,
						8380,
						0,
						0,
						130

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