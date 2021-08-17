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
                    labels: dt,
                    datasets: custom_taxon(data)
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
                BarChart(canvas, chartdata, "");

            } else if (type == "L") {

                $("#canvas1").hide();
                $("#canvas1l").show();
                $("#canvas1p").hide();
                $("#canvas1d").hide();
                var canvas = $("#canvas1l");
                LineChart(canvas, chartdata, "");


            } else if (type == "P") {

                $("#canvas1").hide();
                $("#canvas1l").hide();
                $("#canvas1p").show();
                $("#canvas1d").hide();
                var canvas = $("#canvas1p");
                PieChart(canvas, chartdata, " ");

            } else if (type == "D") {

                $("#canvas1").hide();
                $("#canvas1l").hide();
                $("#canvas1p").hide();
                $("#canvas1d").show();
                var canvas = $("#canvas1d");
                PolarChart(canvas, chartdata, " ");


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
            f1reqc('B');
        }

    });
}

function f1reqc(ctype) {
    $.ajax({
        url: "data2.php?q=onec",
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
            }
              
            var chartdata =
                {
                    labels: dt,
                    datasets: custom_taxonc(data)
                };
       
            var type = ctype;

            if (type == "B") {

                $("#canvas1c").show();
                $("#canvas1lc").hide();
                $("#canvas1pc").hide();
                $("#canvas1dc").hide();
                var canvas = $("#canvas1c");
                BarChart(canvas, chartdata, "");

            } else if (type == "L") {

                $("#canvas1c").hide();
                $("#canvas1lc").show();
                $("#canvas1pc").hide();
                $("#canvas1dc").hide();
                var canvas = $("#canvas1lc");
                LineChart(canvas, chartdata, "");


            } else if (type == "P") {

                $("#canvas1c").hide();
                $("#canvas1lc").hide();
                $("#canvas1pc").show();
                $("#canvas1dc").hide();
                var canvas = $("#canvas1pc");
                PieChart(canvas, chartdata, " ");

            } else if (type == "D") {

                $("#canvas1c").hide();
                $("#canvas1lc").hide();
                $("#canvas1pc").hide();
                $("#canvas1dc").show();
                var canvas = $("#canvas1dc");
                PolarChart(canvas, chartdata, " ");


            }


            $('#tbl1c').html(tabledata(chartdata));
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
            f12req('B');
        }

    });
}

function f12req(ctype) {
    $.ajax({
        url: "data2.php?q=seven",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
            var dt = [];
            var tx1 = [];
            var tx2 = [];
            var tx3 = [];

            for (var i in data) {
                dt.push(data[i].weekyear);
                tx1.push(data[i].An_gambiae);
                tx2.push(data[i].An_funestus);
                tx3.push(data[i].Aedes_sp);
            }

            var chartdata =
                {
                    labels: dt,
                    datasets: custom_taxon(data)
                };


            //var canvas = $("#canvas1");

            //LineChart(canvas, chartdata,"Summary");

            var type = ctype;

            if (type == "B") {

                $("#canvas22").show();
                $("#canvas22l").hide();
                $("#canvas22p").hide();
                $("#canvas22d").hide();
                var canvas = $("#canvas22");
                BarChart(canvas, chartdata, " ");

            } else if (type == "L") {

                $("#canvas22").hide();
                $("#canvas22l").show();
                $("#canvas22p").hide();
                $("#canvas22d").hide();
                var canvas = $("#canvas22l");
                LineChart(canvas, chartdata, "");


            } else if (type == "P") {

                $("#canvas22").hide();
                $("#canvas22l").hide();
                $("#canvas22p").show();
                $("#canvas22d").hide();
                var canvas = $("#canvas22p");
                PieChart(canvas, chartdata, "");

            } else if (type == "D") {

                $("#canvas22").hide();
                $("#canvas22l").hide();
                $("#canvas22p").hide();
                $("#canvas22d").show();
                var canvas = $("#canvas22d");
                PolarChart(canvas, chartdata, "");


            }


            $('#tbl22').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f122req error");
            console.log(data);
        },
        complete: function (data) {

            console.log("Request f1req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load1').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            f12reqc('L');
        }

    });
}

function f12reqc(ctype) {
    $.ajax({
        url: "data2.php?q=sevenc",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
            var dt = [];
           

            for (var i in data) {
                dt.push(data[i].weekyear);
               
            }

            var chartdata =
                {
                    labels: dt,
                    datasets: custom_taxonc(data)
                };



            var type = ctype;

            if (type == "B") {

                $("#canvas22c").show();
                $("#canvas22lc").hide();
                $("#canvas22pc").hide();
                $("#canvas22dc").hide();
                var canvas = $("#canvas22c");
                BarChart(canvas, chartdata, " ");

            } else if (type == "L") {

                $("#canvas22c").hide();
                $("#canvas22lc").show();
                $("#canvas22pc").hide();
                $("#canvas22dc").hide();
                var canvas = $("#canvas22lc");
                LineChart(canvas, chartdata, "");


            } else if (type == "P") {

                $("#canvas22c").hide();
                $("#canvas22lc").hide();
                $("#canvas22pc").show();
                $("#canvas22dc").hide();
                var canvas = $("#canvas22pc");
                PieChart(canvas, chartdata, "");

            } else if (type == "D") {

                $("#canvas22c").hide();
                $("#canvas22lc").hide();
                $("#canvas22pc").hide();
                $("#canvas22dc").show();
                var canvas = $("#canvas22dc");
                PolarChart(canvas, chartdata, "");


            }


            $('#tbl22c').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f122req error");
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
                            label: 'TotalFemale',
                            backgroundColor: "#c85200",
                            hoverBorderColor: "#c85200",
                            data: tx6
                        },


                        {
                            label: 'Total Male',
                            backgroundColor: "#5fa2ce",
                            hoverBorderColor: "#5fa2ce",
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
                hBarChart(canvas, chartdata, "Mosquito Population Summary");

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
            f2reqc('B');
        }

    });
} 
function f2reqc(ctype) {
    $.ajax({
        url: "data2.php?q=twoc",
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
                            label: 'TotalFemale',
                            backgroundColor: "#c85200",
                            hoverBorderColor: "#c85200",
                            data: tx6
                        },

                        {
                            label: 'Total Male',
                            backgroundColor: "#5fa2ce",
                            hoverBorderColor: "#5fa2ce",
                            data: tx1
                        }

                    ]
                };

            var type = ctype;

            if (type == "B") {

                $("#canvas2c").show();
                $("#canvas2lc").hide();
                $("#canvas2pc").hide();
                $("#canvas2dc").hide();
                var canvas = $("#canvas2c");
                hBarChart(canvas, chartdata, "Mosquito Population Summary");

            } else if (type == "L") {

                $("#canvas2c").hide();
                $("#canvas2lc").show();
                $("#canvas2pc").hide();
                $("#canvas2dc").hide();
                var canvas = $("#canvas2lc");
                LineChart(canvas, chartdata, "Mosquito Population Summary");


            } else if (type == "P") {

                $("#canvas2c").hide();
                $("#canvas2lc").hide();
                $("#canvas2pc").show();
                $("#canvas2dc").hide();
                var canvas = $("#canvas2pc");
                PieChart(canvas, chartdata, "Mosquito Population Summary");

            } else if (type == "D") {

                $("#canvas2c").hide();
                $("#canvas2lc").hide();
                $("#canvas2pc").hide();
                $("#canvas2dc").show();
                var canvas = $("#canvas2dc");
                PolarChart(canvas, chartdata, "Mosquito Population Summary");
            }

            $('#tbl2c').html(tabledata(chartdata));

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
                    datasets: custom_taxon(data)
                };


            var type = ctype;

            if (type == "B") {

                $("#canvas3").show();
                $("#canvas3l").hide();
                $("#canvas3p").hide();
                $("#canvas3d").hide();
                var canvas = $("#canvas3");
                BarChart(canvas, chartdata, "Female Mosquito Caught ");

            } else if (type == "L") {

                $("#canvas3").hide();
                $("#canvas3l").show();
                $("#canvas3p").hide();
                $("#canvas3d").hide();
                var canvas = $("#canvas3l");
                LineChart(canvas, chartdata, " Female Mosquito Caught ");


            } else if (type == "P") {

                $("#canvas3").hide();
                $("#canvas3l").hide();
                $("#canvas3p").show();
                $("#canvas3d").hide();
                var canvas = $("#canvas3p");
                PieChart(canvas, chartdata, " Female Mosquito Caught ");

            } else if (type == "D") {

                $("#canvas3").hide();
                $("#canvas3l").hide();
                $("#canvas3p").hide();
                $("#canvas3d").show();
                var canvas = $("#canvas3d");
                PolarChart(canvas, chartdata, " Female Mosquito Caught ");


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
            f3reqc('L');
        }


    });
}
function f3reqc(ctype) {
    $.ajax({
        url: "data2.php?q=threec",
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
            }

            var chartdata =
                {
                    labels: dt,
                    datasets: custom_taxonc(data)
                };


            var type = ctype;

            if (type == "B") {

                $("#canvas3c").show();
                $("#canvas3lc").hide();
                $("#canvas3pc").hide();
                $("#canvas3dc").hide();
                var canvas = $("#canvas3c");
                BarChart(canvas, chartdata, "Female Mosquito Caught ");

            } else if (type == "L") {

                $("#canvas3c").hide();
                $("#canvas3lc").show();
                $("#canvas3pc").hide();
                $("#canvas3dc").hide();
                var canvas = $("#canvas3lc");
                LineChart(canvas, chartdata, " Female Mosquito Caught ");


            } else if (type == "P") {

                $("#canvas3c").hide();
                $("#canvas3lc").hide();
                $("#canvas3pc").show();
                $("#canvas3dc").hide();
                var canvas = $("#canvas3pc");
                PieChart(canvas, chartdata, " Female Mosquito Caught ");

            } else if (type == "D") {

                $("#canvas3c").hide();
                $("#canvas3lc").hide();
                $("#canvas3pc").hide();
                $("#canvas3dc").show();
                var canvas = $("#canvas3dc");
                PolarChart(canvas, chartdata, " Female Mosquito Caught ");


            }


            $('#tbl3c').html(tabledata(chartdata));
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
           

            for (var i in data) {
                dt.push(data[i].EA);
               
            }

            var chartdata =
                {
                    labels: dt,
                    datasets: custom_taxon(data)	

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
                    data: dataset
                    
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
                    data: dataset
                    
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


function custom_taxon(data) {

var tx1 = [];
var tx2 = [];
var tx3 = [];
var tx4 = [];
var tx5 = [];
var tx6 = [];
var tx7 = [];
var tx8 = [];
var tx9 = [];
var tx10 = [];
var tx11 = [];
var tx12 = [];
var tx70 = [];

var dataset = [];

	for (var i in data) {
		tx1.push(data[i].An_gambiae);
		tx2.push(data[i].An_funestus);
		tx3.push(data[i].An_coustani);
		tx4.push(data[i].An_pharoensis);
		tx5.push(data[i].An_squamosus);
		tx6.push(data[i].An_maculipalpis);
		tx7.push(data[i].An_pretoriensis);
		tx8.push(data[i].An_paludis);
		tx9.push(data[i].An_wellcomei);
		tx10.push(data[i].An_ziemanni);
		tx11.push(data[i].An_rufipes);
		tx12.push(data[i].An_implexus);
		
		tx70.push(data[i].Aedes_sp);
	}


	tx1 = tx1.map(x => Number.parseInt(x, 10));
	var tx1sum = tx1.reduce((a, b) => a + b, 0)

	tx2 = tx2.map(x => Number.parseInt(x, 10));
	var tx2sum = tx2.reduce((a, b) => a + b, 0)

	tx3 = tx3.map(x => Number.parseInt(x, 10));
	var tx3sum = tx3.reduce((a, b) => a + b, 0)
	
	tx4 = tx4.map(x => Number.parseInt(x, 10));
	var tx4sum = tx4.reduce((a, b) => a + b, 0)
	
	tx5 = tx5.map(x => Number.parseInt(x, 10));
	var tx5sum = tx5.reduce((a, b) => a + b, 0)
	
	tx6 = tx6.map(x => Number.parseInt(x, 10));
	var tx6sum = tx6.reduce((a, b) => a + b, 0)
	
	tx7 = tx7.map(x => Number.parseInt(x, 10));
	var tx7sum = tx7.reduce((a, b) => a + b, 0)
	
	tx8 = tx8.map(x => Number.parseInt(x, 10));
	var tx8sum = tx8.reduce((a, b) => a + b, 0)
	
	tx9 = tx9.map(x => Number.parseInt(x, 10));
	var tx9sum = tx9.reduce((a, b) => a + b, 0)
	
	tx10 = tx10.map(x => Number.parseInt(x, 10));
	var tx10sum = tx10.reduce((a, b) => a + b, 0)
	
	tx11 = tx11.map(x => Number.parseInt(x, 10));
	var tx11sum = tx11.reduce((a, b) => a + b, 0)
	
	tx12 = tx12.map(x => Number.parseInt(x, 10));
	var tx12sum = tx12.reduce((a, b) => a + b, 0)


	var taxon1 = {
		label: 'An. gambiae s.l',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx1
	};

	var taxon2 = {
		label: 'An. funestus',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx2
	};

	var taxon3 = {
		label: 'An. coustani',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx3
	};
	
	var taxon4 = {
		label: 'An. pharoensis',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx4
	};
	
	var taxon5 = {
		label: 'An. squamosus',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx5
	};
	
	var taxon6 = {
		label: 'An. maculipalpis',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx6
	};
	
	var taxon7 = {
		label: 'An. pretoriensis',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx7
	};
	
	var taxon8 = {
		label: 'An. paludis',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx8
	};
	
	var taxon9 = {
		label: 'An. wellcomei',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx9
	};
	
	var taxon10 = {
		label: 'An. ziemanni',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx10
	};
	
	var taxon11 = {
		label: 'An. rufipes',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx11
	};
	
	var taxon12 = {
		label: 'An. implexus',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx12
	};



	if(tx1sum > 0){
	  dataset.push(taxon1);
	}
	if(tx2sum > 0){
	  dataset.push(taxon2);
	}
	if(tx3sum > 0){
	  dataset.push(taxon3);
	}
	if(tx4sum > 0){
	  dataset.push(taxon4);
	}
	if(tx5sum > 0){
	  dataset.push(taxon5);
	}
	if(tx6sum > 0){
	  dataset.push(taxon6);
	}
	if(tx7sum > 0){
	  dataset.push(taxon7);
	}
	if(tx8sum > 0){
	  dataset.push(taxon8);
	}
	if(tx9sum > 0){
	  dataset.push(taxon9);
	}
	if(tx10sum > 0){
	  dataset.push(taxon10);
	}
	if(tx11sum > 0){
	  dataset.push(taxon11);
	}
	if(tx12sum > 0){
	  dataset.push(taxon12);
	}

return dataset;

}

function custom_taxonc(data) {

var tx1 = [];
var tx2 = [];
var tx3 = [];
var tx4 = [];


var dataset = [];

	for (var i in data) {
		tx1.push(data[i].culex);
		tx2.push(data[i].mansonia);
		tx3.push(data[i].aedes);
		tx4.push(data[i].coquilettidia);	
	}


	tx1 = tx1.map(x => Number.parseInt(x, 10));
	var tx1sum = tx1.reduce((a, b) => a + b, 0)

	tx2 = tx2.map(x => Number.parseInt(x, 10));
	var tx2sum = tx2.reduce((a, b) => a + b, 0)

	tx3 = tx3.map(x => Number.parseInt(x, 10));
	var tx3sum = tx3.reduce((a, b) => a + b, 0)
	
	tx4 = tx4.map(x => Number.parseInt(x, 10));
	var tx4sum = tx4.reduce((a, b) => a + b, 0)
	
	


	var taxon1 = {
		label: 'Culex sp.',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx1
	};

	var taxon2 = {
		label: 'Mansonia sp.',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx2
	};

	var taxon3 = {
		label: 'Aedes sp.',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx3
	};
	
	var taxon4 = {
		label: 'Coquilettidia sp.',
		pointRadius: 1,
		pointHoverRadius: 2,
		lineTension: 0.1,
		fill: false,
		data: tx4
	};
	
	
	if(tx1sum > 0){
	  dataset.push(taxon1);
	}
	if(tx2sum > 0){
	  dataset.push(taxon2);
	}
	if(tx3sum > 0){
	  dataset.push(taxon3);
	}
	if(tx4sum > 0){
	  dataset.push(taxon4);
	}
	

return dataset;

}	


$(document).ready(function () {

    f1req('B');


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