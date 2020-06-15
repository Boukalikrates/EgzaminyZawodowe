
var chart;
var graphsettings = {
    type: 'line',
    data: {
        labels: [],
        datasets: [{
            label: '',
            data: [],
            backgroundColor: 'transparent',
            borderColor: 'hotpink',
            borderWidth: 4,
            spanGaps: true
        }]
    },
    options: {
        legend: {
            display: false
        },
        scales: {
            yAxes: [{
                ticks: {
                    min: 0,
                    max: 100
                }
            }],
            xAxes: [{
                ticks: {
                    display: false
                }
            }]
        }
    }
}

function look(e) {
    var row = $(e.currentTarget).children().parents().filter("tr");
    window.location = "check_answers.php?previous=javascript:history.back()&examtype=" + row.attr("data-type") + "&" + row.attr("data-string");
}


function updateTable() {
    $.ajax({
        url: "db_generate_raport.php" + window.location.search,
        success: function (result) {
            graphsettings.data.labels = [];
            graphsettings.data.datasets[0].data = []
            $(".tablediv").html(result);
            if(chart) chart.update();
            $("tbody tr").dblclick(look);
            $("tbody tr .look").click(look);
            // $("#resultstable").tablesorter();
            setTimeout(updateTable,1000);
        }
    });
}
$(function () {
    $(".reload").click(updateTable);
    updateTable();
})
