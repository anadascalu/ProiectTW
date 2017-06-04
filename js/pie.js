$(document).ready(function () {

	$.ajax({
		url : "http://localhost/TW/data.php",
		type : "GET",
		success : function(data) {

			console.log(data);

			var score = {
				TeamA : []
			};

			var len = data.length;

			for (var i = 0; i < len; i++) {
				if (data[i].magnitudine == "TeamA") {
					magnitudine.TeamA.push(data[i].magnitudine);
				}
				else if (data[i].magnitudine == "TeamB") {
					magnitudine.TeamB.push(data[i].magnitudine);
				}
			}
	var ctx1 = $("#pie-chartcanvas-1");

	var data1 = {
		labels : ["match1", "match2", "match3", "match4", "match5"],
		datasets : [
			{
				label : "TeamA score",
				data : [10, 50, 25, 70, 40],
				backgroundColor : [
                    "#DEB887",
                    "#A9A9A9",
                    "#DC143C",
                    "#F4A460",
                    "#2E8B57"
                ],
                borderColor : [
                    "#CDA776",
                    "#989898",
                    "#CB252B",
                    "#E39371",
                    "#1D7A46"
                ],
                borderWidth : [1, 1, 1, 1, 1]
			}
		]
	};

	var options = {
		title : {
			display : true,
			position : "top",
			text : "Pie Chart",
			fontSize : 18,
			fontColor : "#111"
		},
		legend : {
			display : true,
			position : "bottom"
		}
	};


	var chart1 = new Chart( ctx1, {
		type : "pie",
		data : data1,
		options : options
	});

});