function f1req(ctype) {
    $.ajax({
        url: "data2.php?q=one",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
            var dt = [];
            var tx1 = [];
            var tx2 = [];
            var tx3 = [];

            for (var i in data) {
                dt.push(data[i].month);
                tx1.push(data[i].An_gambiae);
                tx2.push(data[i].An_funestus);
                tx3.push(data[i].Aedes_sp);
            }

            var chartdata =
                {
                    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                    datasets: [
                        {
                            label: 'An. gambiae s.l',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx1
                        },
                        {
                            label: 'An. funestus s.l',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx2
                        },
                        {
                            label: 'Aedes sp.',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx3
                        }
                    ]
                };


            //var canvas = $("#canvas1");

            //LineChart(canvas, chartdata,"Summary");

            var type = ctype;

            if (type == "B") {

                $("#canvas1").show();
                $("#canvas1l").hide();
                $("#canvas1p").hide();
                $("#canvas1d").hide();
                var canvas = $("#canvas1");
                BarChart(canvas, chartdata, "Female Mosquito Caught vs Month");

            } else if (type == "L") {

                $("#canvas1").hide();
                $("#canvas1l").show();
                $("#canvas1p").hide();
                $("#canvas1d").hide();
                var canvas = $("#canvas1l");
                LineChart(canvas, chartdata, "Female Mosquito Caught vs Month");


            } else if (type == "P") {

                $("#canvas1").hide();
                $("#canvas1l").hide();
                $("#canvas1p").show();
                $("#canvas1d").hide();
                var canvas = $("#canvas1p");
                PieChart(canvas, chartdata, "Female Mosquito Caught vs Month");

            } else if (type == "D") {

                $("#canvas1").hide();
                $("#canvas1l").hide();
                $("#canvas1p").hide();
                $("#canvas1d").show();
                var canvas = $("#canvas1d");
                PolarChart(canvas, chartdata, "Female Mosquito Caught vs Month");


            }


            $('#tbl1').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f1req error");
            console.log(data);
        },
        complete: function (data) {

            console.log("Request f1req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load1').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            f2req('B');
        }

    });
}

function f2req(ctype) {
    $.ajax({
        url: "data2.php?q=two",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
            //var taxon = ["An. gambiae s.l","An. funestus s.l","Culex sp.","Mansonia sp."];
            var taxon = [];
            var tx1 = [];
            var tx2 = [];
            var tx3 = [];
            var tx4 = [];
            var tx5 = [];
            var tx6 = [];

            for (var i in data) {
                taxon.push(data[i].TaxonName);
                tx1.push(data[i].TotalMale);
                tx2.push(data[i].Unfed);
                tx3.push(data[i].Fed);
                tx4.push(data[i].PartlyFed);
                tx5.push(data[i].Gravid);
                tx6.push(data[i].TotalFemale);
            }

            var chartdata =
                {
                    labels: taxon,
                    datasets: [

                        {
                            label: 'Unfed',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx2
                        },

                        {
                            label: 'Fed',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx3
                        },

                        {
                            label: 'PartlyFed',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx4
                        },

                        {
                            label: 'Gravid',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx5
                        },
                        {
                            label: 'TotalFemale',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx6
                        },

                        {
                            label: 'Total Male',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx1
                        }

                    ]
                };

            var type = ctype;

            if (type == "B") {

                $("#canvas2").show();
                $("#canvas2l").hide();
                $("#canvas2p").hide();
                $("#canvas2d").hide();
                var canvas = $("#canvas2");
                BarChart(canvas, chartdata, "Mosquito Population Summary");

            } else if (type == "L") {

                $("#canvas2").hide();
                $("#canvas2l").show();
                $("#canvas2p").hide();
                $("#canvas2d").hide();
                var canvas = $("#canvas2l");
                LineChart(canvas, chartdata, "Mosquito Population Summary");


            } else if (type == "P") {

                $("#canvas2").hide();
                $("#canvas2l").hide();
                $("#canvas2p").show();
                $("#canvas2d").hide();
                var canvas = $("#canvas2p");
                PieChart(canvas, chartdata, "Mosquito Population Summary");

            } else if (type == "D") {

                $("#canvas2").hide();
                $("#canvas2l").hide();
                $("#canvas2p").hide();
                $("#canvas2d").show();
                var canvas = $("#canvas2d");
                PolarChart(canvas, chartdata, "Mosquito Population Summary");


            }


            $('#tbl2').html(tabledata(chartdata));

        },
        error: function (data) {
            console.log("Request f2req error");
            console.log(data);
        },
        complete: function (data) {
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load2').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');
            f3req('L');
        }

    });
}


function f3req(ctype) {
    $.ajax({
        url: "data2.php?q=three",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
            var dt = [];
            var tx1 = [];
            var tx2 = [];
            var tx3 = [];

            for (var i in data) {
                dt.push(data[i].DT);
                tx1.push(data[i].An_gambiae);
                tx2.push(data[i].An_funestus);
                tx3.push(data[i].Aedes_sp);
            }

            var chartdata =
                {
                    labels: dt,
                    datasets: [
                        {
                            label: 'An gambiae s.l',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx1
                        },
                        {

                            label: 'An funestus s.l',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx2
                        },

                        {
                            label: 'Aedes sp.',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx3
                        }
                    ]
                };


            var type = ctype;

            if (type == "B") {

                $("#canvas3").show();
                $("#canvas3l").hide();
                $("#canvas3p").hide();
                $("#canvas3d").hide();
                var canvas = $("#canvas3");
                BarChart(canvas, chartdata, "Female Mosquito Caught vs Date");

            } else if (type == "L") {

                $("#canvas3").hide();
                $("#canvas3l").show();
                $("#canvas3p").hide();
                $("#canvas3d").hide();
                var canvas = $("#canvas3l");
                LineChart(canvas, chartdata, " Female Mosquito Caught vs Date");


            } else if (type == "P") {

                $("#canvas3").hide();
                $("#canvas3l").hide();
                $("#canvas3p").show();
                $("#canvas3d").hide();
                var canvas = $("#canvas3p");
                PieChart(canvas, chartdata, " Female Mosquito Caught vs Date");

            } else if (type == "D") {

                $("#canvas3").hide();
                $("#canvas3l").hide();
                $("#canvas3p").hide();
                $("#canvas3d").show();
                var canvas = $("#canvas3d");
                PolarChart(canvas, chartdata, " Female Mosquito Caught vs Date");


            }


            $('#tbl3').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f3req error");
            console.log(data);
        },
        complete: function (data) {
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load3').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            f4req('B');
        }


    });
}

function f4req(ctype) {
    $.ajax({
        url: "data2.php?q=four",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
            var dt = [];
            var tx1 = [];
            var tx2 = [];
            var tx3 = [];

            for (var i in data) {
                dt.push(data[i].EA);
                tx1.push(data[i].An_gambiae);
                tx2.push(data[i].An_funestus);
                tx3.push(data[i].Aedes_sp);
            }

            var chartdata =
                {
                    labels: dt,
                    datasets: [
                        {
                            label: 'An gambiae s.l',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx1
                        },
                        {
                            label: 'An funestus s.l',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx2
                        },
                        {
                            label: 'Aedes sp.',
                            backgroundColor: randomColor(),
                            hoverBorderColor: randomColor(),
                            data: tx3
                        }
                    ]

                };

            //var canvas = $("#canvas4");

            //	hBarChart(canvas, chartdata,"Mosquito Population Summary by EA");

            var type = ctype;

            if (type == "B") {

                $("#canvas4").show();
                $("#canvas4l").hide();
                $("#canvas4p").hide();
                $("#canvas4d").hide();
                var canvas = $("#canvas4");
                BarChart(canvas, chartdata, "Mosquito Population Summary by site");

            } else if (type == "L") {

                $("#canvas4").hide();
                $("#canvas4l").show();
                $("#canvas4p").hide();
                $("#canvas4d").hide();
                var canvas = $("#canvas4l");
                LineChart(canvas, chartdata, "Mosquito Population Summary by site");


            } else if (type == "P") {

                $("#canvas4").hide();
                $("#canvas4l").hide();
                $("#canvas4p").show();
                $("#canvas4d").hide();
                var canvas = $("#canvas4p");
                PieChart(canvas, chartdata, "Mosquito Population Summary by site");

            } else if (type == "D") {

                $("#canvas4").hide();
                $("#canvas4l").hide();
                $("#canvas4p").hide();
                $("#canvas4d").show();
                var canvas = $("#canvas4d");
                PolarChart(canvas, chartdata, "Mosquito Population Summary by site");


            }


            $('#tbl4').html(tabledata(chartdata));


        },
        error: function (data) {
            console.log("Request f4req error");
            console.log(data);
        },
        complete: function (data) {
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load4').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');
            f5req('P');
        }
    });
}

function f5req(ctype) {
    $.ajax({
        url: "data2.php?q=five",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);

            var tx1 = [];
            var labelname = ["Total Male", "Unfed", "Fed", "PartlyFed", "Gravid"];

            for (var i in data) {
                tx1.push(parseInt(data[i].TotalMale));
                tx1.push(parseInt(data[i].Unfed));
                tx1.push(parseInt(data[i].Fed));
                tx1.push(parseInt(data[i].PartlyFed));
                tx1.push(parseInt(data[i].Gravid));

            }


            var dataset = tx1;
            var labels = labelname;

            var list = [];

            list = sortdata(dataset, labels);

            for (var k = 0; k < list.length; k++) {
                dataset[k] = list[k].data;
                labels[k] = list[k].label;
            }


            var chartdata = {
                datasets: [{
                    data: dataset,
                    backgroundColor: [
                        randomColor(),
                        randomColor(),
                        randomColor(),
                        randomColor(),
                        randomColor()

                    ]
                }],
                labels: labels
            };

            //var canvas = $("#canvas5");

            //PieChart(canvas, chartdata,"Summary");


            var type = ctype;

            if (type == "B") {

                $("#canvas5").show();
                $("#canvas5l").hide();
                $("#canvas5p").hide();
                $("#canvas5d").hide();
                var canvas = $("#canvas5");
                BarChart(canvas, chartdata, "Summary");

            } else if (type == "L") {

                $("#canvas5").hide();
                $("#canvas5l").show();
                $("#canvas5p").hide();
                $("#canvas5d").hide();
                var canvas = $("#canvas5l");
                LineChart(canvas, chartdata, "Summary");


            } else if (type == "P") {

                $("#canvas5").hide();
                $("#canvas5l").hide();
                $("#canvas5p").show();
                $("#canvas5d").hide();
                var canvas = $("#canvas5p");
                PieChart(canvas, chartdata, "Summary");

            } else if (type == "D") {

                $("#canvas5").hide();
                $("#canvas5l").hide();
                $("#canvas5p").hide();
                $("#canvas5d").show();
                var canvas = $("#canvas5d");
                PolarChart(canvas, chartdata, "Summary");


            }

            $('#tbl5').html(tabledata(chartdata));


        },
        error: function (data) {
            console.log("Request f4req error");
            console.log(data);
        },
        complete: function (data) {
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load5').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');
            f6req('P');
        }
    });
}

function f6req(ctype) {
    $.ajax({
        url: "data2.php?q=six",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);

            var tx1 = [];
            var labelname = ["Total Male", "Unfed", "Fed", "PartlyFed", "Gravid"];

            for (var i in data) {
                tx1.push(parseInt(data[i].TotalMale));
                tx1.push(parseInt(data[i].Unfed));
                tx1.push(parseInt(data[i].Fed));
                tx1.push(parseInt(data[i].PartlyFed));
                tx1.push(parseInt(data[i].Gravid));

            }


            var dataset = tx1;
            var labels = labelname;

            var list = [];

            list = sortdata(dataset, labels);

            for (var k = 0; k < list.length; k++) {
                dataset[k] = list[k].data;
                labels[k] = list[k].label;
            }


            var chartdata = {
                datasets: [{
                    data: dataset,
                    backgroundColor: [
                        randomColor(),
                        randomColor(),
                        randomColor(),
                        randomColor(),
                        randomColor()

                    ]
                }],
                labels: labels
            };

            //var canvas = $("#canvas5");

            //PieChart(canvas, chartdata,"Summary");

            $('#tbl6').html(tabledata(chartdata));


            var type = ctype;

            if (type == "B") {

                $("#canvas6").show();
                $("#canvas6l").hide();
                $("#canvas6p").hide();
                $("#canvas6d").hide();
                var canvas = $("#canvas6");
                BarChart(canvas, chartdata, "Summary");

            } else if (type == "L") {

                $("#canvas6").hide();
                $("#canvas6l").show();
                $("#canvas6p").hide();
                $("#canvas6d").hide();
                var canvas = $("#canvas6l");
                LineChart(canvas, chartdata, "Summary");


            } else if (type == "P") {

                $("#canvas6").hide();
                $("#canvas6l").hide();
                $("#canvas6p").show();
                $("#canvas6d").hide();
                var canvas = $("#canvas6p");
                PieChart(canvas, chartdata, "Summary");

            } else if (type == "D") {

                $("#canvas6").hide();
                $("#canvas6l").hide();
                $("#canvas6p").hide();
                $("#canvas6d").show();
                var canvas = $("#canvas6d");
                PolarChart(canvas, chartdata, "Summary");


            }

            $('#tbl6').html(tabledata(chartdata));


        },
        error: function (data) {
            console.log("Request f6req error");
            console.log(data);
        },
        complete: function (data) {
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load5').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');

        }
    });
}

// ss2 update
function f8req(ctype) {
    $.ajax({
        url: "data2.php?q=eight",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
            var dt = [];
            var tx1 = [];
            var tx2 = [];
            

            for (var i in data) {
                dt.push(data[i].month);
                tx1.push(data[i].An_gambiae);
                tx2.push(data[i].Culex);
            }

            var chartdata =
                {
                    labels: dt,
                    datasets: [
                        {
                            label: 'An_gambiae',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx1
                        },
                        {
                            label: 'Culex',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx2
                        }
                        
                    ]
                };


            //var canvas = $("#canvas1");

            //LineChart(canvas, chartdata,"Summary");

            var type = ctype;

            if (type == "B") {

                $("#canvas8").show();
                $("#canvas8l").hide();
                $("#canvas8p").hide();
                $("#canvas8d").hide();
                var canvas = $("#canvas8");
                BarChart(canvas, chartdata, "Pupae Density");

            } else if (type == "L") {

                $("#canvas8").hide();
                $("#canvas8l").show();
                $("#canvas8p").hide();
                $("#canvas8d").hide();
                var canvas = $("#canvas8l");
                LineChart(canvas, chartdata, "Pupae Density");


            } else if (type == "P") {

                $("#canvas8").hide();
                $("#canvas8l").hide();
                $("#canvas8p").show();
                $("#canvas8d").hide();
                var canvas = $("#canvas8p");
                PieChart(canvas, chartdata, "Pupae Density");

            } else if (type == "D") {

                $("#canvas8").hide();
                $("#canvas8l").hide();
                $("#canvas8p").hide();
                $("#canvas8d").show();
                var canvas = $("#canvas8d");
                PolarChart(canvas, chartdata, "Pupae Density");


            }


            $('#tbl8').html(tabledata(chartdata));
        },
        error: function (data) {
             console.log("Request f8req error");
             console.log(data);
        },
        complete: function (data) {

            console.log("Request f8req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load8').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
             f9req('B');
        }

    });
}

function f9req(ctype) {
    $.ajax({
        url: "data2.php?q=nine",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
            var dt = [];
            var tx1 = [];
            var tx2 = [];
            

            for (var i in data) {
                dt.push(data[i].month);
                tx1.push(data[i].L2&L3);
                tx2.push(data[i].L3&L4);
            }

            var chartdata =
                {
                    labels: dt,
                    datasets: [
                        {
                            label: 'L2&L3',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx1
                        },
                        {
                            label: 'L3&L4',
                            backgroundColor: randomColor(),
                            borderColor: randomColor(),
                            pointRadius: 3,
                            pointHoverRadius: 4,
                            lineTension: 0.1,
                            fill: false,
                            data: tx2
                        }
                        
                    ]
                };


            //var canvas = $("#canvas1");

            //LineChart(canvas, chartdata,"Summary");

            var type = ctype;

            if (type == "B") {

                $("#canvas9").show();
                $("#canvas9l").hide();
                $("#canvas9p").hide();
                $("#canvas9d").hide();
                var canvas = $("#canvas9");
                BarChart(canvas, chartdata, "Larvae Density");

            } else if (type == "L") {

                $("#canvas9").hide();
                $("#canvas9l").show();
                $("#canvas9p").hide();
                $("#canvas9d").hide();
                var canvas = $("#canvas9l");
                LineChart(canvas, chartdata, "Larvae Density");


            } else if (type == "P") {

                $("#canvas9").hide();
                $("#canvas9l").hide();
                $("#canvas9p").show();
                $("#canvas9d").hide();
                var canvas = $("#canvas9p");
                PieChart(canvas, chartdata, "Larvae Density");

            } else if (type == "D") {

                $("#canvas9").hide();
                $("#canvas9l").hide();
                $("#canvas9p").hide();
                $("#canvas9d").show();
                var canvas = $("#canvas9d");
                PolarChart(canvas, chartdata, "Larvae Density");


            }


            $('#tbl9').html(tabledata(chartdata));
        },
        error: function (data) {
             console.log("Request f9req error");
             console.log(data);
        },
        complete: function (data) {

            console.log("Request f9req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load9').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            // f7req('B');
        }

    });
}



function confirmationDelete(anchor) {

    var conf = confirm('Are you sure want to delete this? This action is irrevesible');
    if (conf)
        window.location = anchor.attr("href");
}


function validate() {

    var exp = document.getElementById("exp");
    var pro = document.getElementById("project");
    var tot = document.getElementById('total');

    if (pro.value == "") {
        //If the "Please Select" option is selected display error.
        alert("Please select project!");
        return false;
    }
    if (exp.value == "") {
        //If the "Please Select" option is selected display error.
        alert("Please select experiment!");
        return false;
    }
    if (tot.value == "") {
        //If the "Please Select" option is selected display error.
        alert("Please select form!");
        return false;
    }
    return true;
}


$(document).ready(function () {

    f1req('L');


    $('input[type="checkbox"][readonly="readonly"]').click(function (e) {
        e.preventDefault();
    });


    var project1;

    $.ajaxSetup({
        cache: false
    });

    var tourGuide = new TourGuide();


    $("#project").change(function () {
        var project = $(this).val();

        console.log(project);

        $.ajax({
            type: 'POST',
            url: 'scripts/getexperiments.php',
            data: 'project=' + project,
            success: function (html) {

                $('#exp').html(html);

                document.getElementById('pname').innerHTML = "";

                project1 = project;

                var x = "- Select Project -";

                if (x === project) {
                    document.getElementById('pname').insertAdjacentHTML('beforeend', '');
                    console.log("true");

                    //tourGuide.restart();
                    tourGuide.start();


                } else {
                    document.getElementById('pname').insertAdjacentHTML('beforeend', project);
                    console.log("false");
                }

            }
        });

    });


    $(":input#project").trigger('change');


    $("#exp").change(function () {
        var projectexp = $(this).val();
        var projectexp2 = $("#exp option:selected").text();

        //f1req();


        $.jGrowl('', {
            life: 4000,
            theme: 'growl-success',
            header: ' Project  : ' + project1 + ', Experiment : ' + projectexp2
        });


        $.ajax({
            type: 'POST',
            url: 'scripts/getproexp.php',
            data: {project: project1, exp: projectexp},
            success: function (html) {
                console.log(html);

            },
            complete: function () {

                location = window.location;
            }
        });
    });


    $('#filter').click(function () {

        $('#action').val('1');


        $.ajax({
            type: 'POST',
            url: 'data2.php',
            data: $('#filterform').serialize(),
            success: function (html) {

            },
            complete: function () {
                location = window.location;
            }
        });

    });


    $('#filterclear').click(function () {

        $('#action').val('2');


        $.ajax({
            type: 'POST',
            url: 'data2.php',
            data: $('#filterform').serialize(),
            success: function (html) {

            },
            complete: function () {
                location = window.location;
            }
        });

    });


    $('#filterh').click(function () {


        $.ajax({
            type: 'POST',
            url: 'datahome.php',
            data: $('#filterhome').serialize(),
            success: function (html) {

            },
            complete: function () {
                location = window.location;
            }
        });

    });


});

