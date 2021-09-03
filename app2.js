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
                            fill: false,
                            backgroundColor: "#c85200",
                            hoverBorderColor: "#c85200",
                            data: tx6
                        },


                        {
                            label: 'Total Male',
                            fill: false,
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
                            fill: false,
                            backgroundColor: "#c85200",
                            hoverBorderColor: "#c85200",
                            data: tx6
                        },

                        {
                            label: 'Total Male',
                            fill: false,
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
            f7req('B');
        }
    });
}

function f7req(ctype) {
    $.ajax({
        url: "data2.php?q=sevend",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var time = [];
                     var biting = [];

                    for (var i in data) {
                        time.push(data[i].TimeRange);
                        biting.push(data[i].bitingrate);
                    }

                    var chartdata = {
                        labels: time,
                        datasets: [
                            {
                                label: 'Hourly Biting Rate',
                                fill: false,
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: biting
                            }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas7").show();
                $("#canvas7l").hide();
                $("#canvas7p").hide();
                $("#canvas7d").hide();
                var canvas = $("#canvas7");
                BarChart(canvas, chartdata, "Hourly Biting Rate");

            } 
            if (type == "L") {

                $("#canvas7").hide();
                $("#canvas7l").show();
                $("#canvas7p").hide();
                $("#canvas7d").hide();
                var canvas = $("#canvas7l");
                LineChart(canvas, chartdata, " Hourly Biting Rate");


            } else if (type == "P") {

                $("#canvas7").hide();
                $("#canvas7l").hide();
                $("#canvas7p").show();
                $("#canvas7d").hide();
                var canvas = $("#canvas7p");
                PieChart(canvas, chartdata, " Hourly Biting Rate");

            } else if (type == "D") {

                $("#canvas7").hide();
                $("#canvas7l").hide();
                $("#canvas7p").hide();
                $("#canvas7d").show();
                var canvas = $("#canvas7d");
                PolarChart(canvas, chartdata, " Hourly Biting Rate");


            }

            $('#tbl7').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f7req error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f7req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load6').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
             f8req('B');
        }


    });
}

function f8req(ctype) {
    $.ajax({
        url: "data2.php?q=eight",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var date = [];
                     var anpholes = [];
                     var culex =[];
                     var Aedes =[];


                    for (var i in data) {
                        date.push(data[i].month);
                        anpholes.push(data[i].AnophelesSp);
                        culex.push(data[i].Culex);
                        Aedes.push(data[i].Aedes);
                    }

                    var chartdata = {
                        labels: date,
                        datasets: [
                            {
                                label: 'AnophelesSp',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: anpholes
                            },
                            {

                            label: 'Culex',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#49e2ff',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: culex
                        },
                        {

                            label: 'Aedes',
                            fill: false,
                            backgroundColor: '#46f162',
                            borderColor: '#46f162',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: Aedes
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas8").show();
                $("#canvas8l").hide();
                $("#canvas8p").hide();
                $("#canvas8d").hide();
                var canvas = $("#canvas8");
                BarChart(canvas, chartdata, "Pupae Density");

            } 
            if (type == "L") {

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
            $('#load7').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
              f8creq('B');
        }


    });
 }

 function f8creq(ctype) {
    $.ajax({
        url: "data2.php?q=eightc",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var date = [];
                     var anpholes = [];
                     var culex =[];
                     var Aedes = [];

                    for (var i in data) {
                        date.push(data[i].DT);
                        anpholes.push(data[i].AnophelesSp);
                        culex.push(data[i].Culex);
                        Aedes.push(data[i].Aedes)
                    }

                    var chartdata = {
                        labels: date,
                        datasets: [
                            {
                                label: 'AnophelesSp',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: anpholes
                            },
                            {

                            label: 'Culex',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: culex
                        },
                        {

                            label: 'Aedes',
                            fill: false,
                            backgroundColor: '#46f162',
                            borderColor: '#46f162',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: Aedes
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas8c").show();
                $("#canvas8cl").hide();
                $("#canvas8cp").hide();
                $("#canvas8cd").hide();
                var canvas = $("#canvas8c");
                BarChart(canvas, chartdata, "Pupae Density");

            } 
            if (type == "L") {

                $("#canvas8c").hide();
                $("#canvas8cl").show();
                $("#canvas8cp").hide();
                $("#canvas8cd").hide();
                var canvas = $("#canvas8cl");
                LineChart(canvas, chartdata, "Pupae Density");


            } else if (type == "P") {

                $("#canvas8c").hide();
                $("#canvas8cl").hide();
                $("#canvas8cp").show();
                $("#canvas8cd").hide();
                var canvas = $("#canvas8cp");
                PieChart(canvas, chartdata, "Pupae Density");

            } else if (type == "D") {

                $("#canvas8c").hide();
                $("#canvas8cl").hide();
                $("#canvas8cp").hide();
                $("#canvas8cd").show();
                var canvas = $("#canvas8cd");
                PolarChart(canvas, chartdata, "Pupae Density");


            }

            $('#tbl8c').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f8creq error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f8creq done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load8').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
              f88req('B');
        }


    });
 }

 function f88req(ctype) {
    $.ajax({
        url: "data2.php?q=eightyeight",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var date = [];
                     var anpholes = [];
                     var culex =[];
                     var Aedes = [];

                    for (var i in data) {
                        date.push(data[i].weekyear);
                        anpholes.push(data[i].AnophelesSp);
                        culex.push(data[i].Culex);
                        Aedes.push(data[i].Aedes)
                    }

                    var chartdata = {
                        labels: date,
                        datasets: [
                            {
                                label: 'AnophelesSp',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: anpholes
                            },
                            {

                            label: 'Culex',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: culex
                        },
                        {

                            label: 'Aedes',
                            fill: false,
                            backgroundColor: '#46f162',
                            borderColor: '#46f162',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: Aedes
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas88").show();
                $("#canvas88l").hide();
                $("#canvas88p").hide();
                $("#canvas88d").hide();
                var canvas = $("#canvas88");
                BarChart(canvas, chartdata, "Pupae Density");

            } 
            if (type == "L") {

                $("#canvas88").hide();
                $("#canvas88l").show();
                $("#canvas88p").hide();
                $("#canvas88d").hide();
                var canvas = $("#canvas88l");
                LineChart(canvas, chartdata, "Pupae Density");


            } else if (type == "P") {

                $("#canvas88").hide();
                $("#canvas88l").hide();
                $("#canvas88p").show();
                $("#canvas88d").hide();
                var canvas = $("#canvas88p");
                PieChart(canvas, chartdata, "Pupae Density");

            } else if (type == "D") {

                $("#canvas88").hide();
                $("#canvas88l").hide();
                $("#canvas88p").hide();
                $("#canvas88d").show();
                var canvas = $("#canvas88d");
                PolarChart(canvas, chartdata, "Pupae Density");


            }

            $('#tbl88').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f88req error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f88req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load8c').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
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
                     var date = [];
                     var l1l2 = [];
                     var l3l4 =[];
                     var l1 =[];
                     var l2 =[];
                     var l3 =[];
                     var l4 =[];

                    for (var i in data) {
                        date.push(data[i].month);
                        l1l2.push(data[i].L1L2);
                        l3l4.push(data[i].L3L4);
                        l1.push(data[i].L1);
                        l2.push(data[i].L2);
                        l3.push(data[i].L3);
                        l4.push(data[i].L4);
                    }

                    var chartdata = {
                        labels: date,
                        datasets: [
                            {
                                label: 'L1',
                                fill: false,
                                backgroundColor: '#3832a8',
                                borderColor: '#3832a8',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l1
                            },
                            {
                                label: 'L2',
                                fill: false,
                                backgroundColor: '#a8323e',
                                borderColor: '#a8323e',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l2
                            },
                            {
                                label: 'L3',
                                fill: false,
                                backgroundColor: '#d0db35',
                                borderColor: '#d0db35',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l3
                            },
                            {
                                label: 'L4',
                                fill: false,
                                backgroundColor: '#35cddb',
                                borderColor: '#35cddb',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l4
                            },
                            {
                                label: 'Early Stage (L1L2)',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l1l2
                            },
                            {

                            label: 'Late Stage (L3L4)',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: l3l4
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas9").show();
                $("#canvas9l").hide();
                $("#canvas9p").hide();
                $("#canvas9d").hide();
                var canvas = $("#canvas9");
                BarChart(canvas, chartdata, "Larvae Density");

            } 
            if (type == "L") {

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
            $('#load8c').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            f9creq('B');
        }


    });
 }

 function f77req(ctype) {
    $.ajax({
        url: "data2.php?q=seventyseven",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var date = [];
                     var l1l2 = [];
                     var l3l4 =[];
                     var l1 =[];
                     var l2 =[];
                     var l3 =[];
                     var l4 =[];

                    for (var i in data) {
                        date.push(data[i].DT);
                        l1l2.push(data[i].L1L2);
                        l3l4.push(data[i].L3L4);
                        l1.push(data[i].L1);
                        l2.push(data[i].L2);
                        l3.push(data[i].L3);
                        l4.push(data[i].L4);
                    }

                    var chartdata = {
                        labels: date,
                        datasets: [
                            {
                                label: 'L1',
                                fill: false,
                                backgroundColor: '#3832a8',
                                borderColor: '#3832a8',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l1
                            },
                            {
                                label: 'L2',
                                fill: false,
                                backgroundColor: '#a8323e',
                                borderColor: '#a8323e',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l2
                            },
                            {
                                label: 'L3',
                                fill: false,
                                backgroundColor: '#d0db35',
                                borderColor: '#d0db35',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l3
                            },
                            {
                                label: 'L4',
                                fill: false,
                                backgroundColor: '#35cddb',
                                borderColor: '#35cddb',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l4
                            },
                            {
                                label: 'Early Stage (L1L2)',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l1l2
                            },
                            {

                            label: 'Late Stage (L3L4)',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: l3l4
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas77").show();
                $("#canvas77l").hide();
                $("#canvas77p").hide();
                $("#canvas77d").hide();
                var canvas = $("#canvas77");
                BarChart(canvas, chartdata, "Larvae Density");

            } 
            if (type == "L") {

                $("#canvas77").hide();
                $("#canvas77l").show();
                $("#canvas77p").hide();
                $("#canvas77d").hide();
                var canvas = $("#canvas77l");
                LineChart(canvas, chartdata, "Larvae Density");


            } else if (type == "P") {

                $("#canvas77").hide();
                $("#canvas77l").hide();
                $("#canvas77p").show();
                $("#canvas77d").hide();
                var canvas = $("#canvas77p");
                PieChart(canvas, chartdata, "Larvae Density");

            } else if (type == "D") {

                $("#canvas77").hide();
                $("#canvas77l").hide();
                $("#canvas77p").hide();
                $("#canvas77d").show();
                var canvas = $("#canvas77d");
                PolarChart(canvas, chartdata, "Larvae Density");


            }

            $('#tbl77').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f77req error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f77req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load9').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            f9creq('B');
        }


    });
 }

 function f78req(ctype) {
    $.ajax({
        url: "data2.php?q=seventyeight",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var date = [];
                     var l1l2 = [];
                     var l3l4 =[];
                     var l1 =[];
                     var l2 =[];
                     var l3 =[];
                     var l4 =[];


                    for (var i in data) {
                        date.push(data[i].weekyear);
                        l1l2.push(data[i].L1L2);
                        l3l4.push(data[i].L3L4);
                        l1.push(data[i].L1);
                        l2.push(data[i].L2);
                        l3.push(data[i].L3);
                        l4.push(data[i].L4);
                    }

                    var chartdata = {
                        labels: date,
                        datasets: [
                            {
                                label: 'L1',
                                fill: false,
                                backgroundColor: '#3832a8',
                                borderColor: '#3832a8',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l1
                            },
                            {
                                label: 'L2',
                                fill: false,
                                backgroundColor: '#a8323e',
                                borderColor: '#a8323e',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l2
                            },
                            {
                                label: 'L3',
                                fill: false,
                                backgroundColor: '#d0db35',
                                borderColor: '#d0db35',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l3
                            },
                            {
                                label: 'L4',
                                fill: false,
                                backgroundColor: '#35cddb',
                                borderColor: '#35cddb',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l4
                            },
                            {
                                label: 'Early Stage (L1L2)',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: l1l2
                            },
                            {

                            label: 'Late Stage (L3L4)',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: l3l4
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas78").show();
                $("#canvas78l").hide();
                $("#canvas78p").hide();
                $("#canvas78d").hide();
                var canvas = $("#canvas78");
                BarChart(canvas, chartdata, "Larvae Density");

            } 
            if (type == "L") {

                $("#canvas78").hide();
                $("#canvas78l").show();
                $("#canvas78p").hide();
                $("#canvas78d").hide();
                var canvas = $("#canvas78l");
                LineChart(canvas, chartdata, "Larvae Density");


            } else if (type == "P") {

                $("#canvas78").hide();
                $("#canvas78l").hide();
                $("#canvas78p").show();
                $("#canvas78d").hide();
                var canvas = $("#canvas78p");
                PieChart(canvas, chartdata, "Larvae Density");

            } else if (type == "D") {

                $("#canvas78").hide();
                $("#canvas78l").hide();
                $("#canvas78p").hide();
                $("#canvas78d").show();
                var canvas = $("#canvas78d");
                PolarChart(canvas, chartdata, "Larvae Density");


            }

            $('#tbl78').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f78req error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f78req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load77').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            f9creq('B');
        }


    });
 }

 function f55req(ctype) {
    $.ajax({
        url: "data2.php?q=fiftyfive",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var tx = [];
                     var l1l2 = [];
                     var l3l4 =[];
                     var l1 =[];
                     var l2 =[];
                     var l3 =[];
                     var l4 =[];


                    for (var i in data) {
                        tx.push(data[i].TaxonName);
                        l1l2.push(data[i].L1L2);
                        l3l4.push(data[i].L3L4);
                        l1.push(data[i].L1);
                        l2.push(data[i].L2);
                        l3.push(data[i].L3);
                        l4.push(data[i].L4);
                    }

                    var chartdata = {
                        labels: tx,
                        datasets: [
                            {
                                label: 'L1',
                                fill: false,
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l1
                            },
                            {
                                label: 'L2',
                                fill: false,
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l2
                            },
                            {
                                label: 'L3',
                                fill: false,
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l3
                            },
                            {
                                label: 'L4',
                                fill: false,
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l4
                            },
                            {
                                label: 'L1L2',
                                fill: false,
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l1l2
                            },
                            {
                                label: 'L3L4',
                                fill: false,
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l3l4
                            }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas55").show();
                $("#canvas55l").hide();
                $("#canvas55p").hide();
                $("#canvas55d").hide();
                var canvas = $("#canvas55");
                BarChart(canvas, chartdata, "Larvae Population Summary");

            } 
            if (type == "L") {

                $("#canvas55").hide();
                $("#canvas55l").show();
                $("#canvas55p").hide();
                $("#canvas55d").hide();
                var canvas = $("#canvas55l");
                LineChart(canvas, chartdata, "Larvae Population Summary");


            } else if (type == "P") {

                $("#canvas55").hide();
                $("#canvas55l").hide();
                $("#canvas55p").show();
                $("#canvas55d").hide();
                var canvas = $("#canvas55p");
                PieChart(canvas, chartdata, "Larvae Population Summary");

            } else if (type == "D") {

                $("#canvas55").hide();
                $("#canvas55l").hide();
                $("#canvas55p").hide();
                $("#canvas55d").show();
                var canvas = $("#canvas55d");
                PolarChart(canvas, chartdata, "Larvae Population Summary");


            }

            $('#tbl55').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f55req error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f55req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load78').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            f9creq('B');
        }


    });
 }


 function f9creq(ctype) {
    $.ajax({
        url: "data2.php?q=ten",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var species1 = [];
                     var species2 = [];

                    for (var i in data) {
                        species1.push(data[i].Biomphalari);
                        species2.push(data[i].Bulinus);
                    }

                    var chartdata = {
                        labels: ["Species"],
                        datasets: [
                            {
                                label: 'Biomphalari',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: species1
                            },
                            {

                            label: 'Bulinus',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: species2
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas9c").show();
                $("#canvas9cl").hide();
                $("#canvas9cp").hide();
                $("#canvas9cd").hide();
                var canvas = $("#canvas9c");
                BarChart(canvas, chartdata, "Snail Population Summary");

            } 
            if (type == "L") {

                $("#canvas9c").hide();
                $("#canvas9cl").show();
                $("#canvas9cp").hide();
                $("#canvas9cd").hide();
                var canvas = $("#canvas9cl");
                LineChart(canvas, chartdata, "Snail Population Summary");


            } else if (type == "P") {

                $("#canvas9c").hide();
                $("#canvas9cl").hide();
                $("#canvas9cp").show();
                $("#canvas9cd").hide();
                var canvas = $("#canvas9cp");
                PieChart(canvas, chartdata, "Snail Population Summary");

            } else if (type == "D") {

                $("#canvas9c").hide();
                $("#canvas9cl").hide();
                $("#canvas9cp").hide();
                $("#canvas9cd").show();
                var canvas = $("#canvas9cd");
                PolarChart(canvas, chartdata, "Snail Population Summary");


            }

            $('#tbl9c').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f9creq error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f9creq done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load77').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
               f44req('B');
        }


    });
 }

 function f44req(ctype) {
    $.ajax({
        url: "data2.php?q=fortyfour",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var species1 = [];
                     var species2 = [];
                     var DT = [];

                    for (var i in data) {
                        species1.push(data[i].Biomphalari);
                        species2.push(data[i].Bulinus);
                        DT.push(data[i].weekyear);
                    }

                    var chartdata = {
                        labels: DT,
                        datasets: [
                            {
                                label: 'Biomphalari',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: species1
                            },
                            {

                            label: 'Bulinus',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: species2
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas44").show();
                $("#canvas44l").hide();
                $("#canvas44p").hide();
                $("#canvas44d").hide();
                var canvas = $("#canvas44");
                BarChart(canvas, chartdata, "Snail Weekly Summary");

            } 
            if (type == "L") {

                $("#canvas44").hide();
                $("#canvas44l").show();
                $("#canvas44p").hide();
                $("#canvas44d").hide();
                var canvas = $("#canvas44l");
                LineChart(canvas, chartdata, "Snail Weekly Summary");


            } else if (type == "P") {

                $("#canvas44").hide();
                $("#canvas44l").hide();
                $("#canvas44p").show();
                $("#canvas44d").hide();
                var canvas = $("#canvas44p");
                PieChart(canvas, chartdata, "Snail Weekly Summary");

            } else if (type == "D") {

                $("#canvas44").hide();
                $("#canvas44l").hide();
                $("#canvas44p").hide();
                $("#canvas44d").show();
                var canvas = $("#canvas44d");
                PolarChart(canvas, chartdata, "Snail Weekly Summary");


            }

            $('#tbl44').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f44req error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f44req done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load9c').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
               f4creq('B');
        }


    });
 }

 function f4creq(ctype) {
    $.ajax({
        url: "data2.php?q=eleven",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var dt = [];
                     var species1 = [];
                     var species2 = [];

                    for (var i in data) {
                        dt.push(data[i].DT);
                        species1.push(data[i].Biomphalari);
                        species2.push(data[i].Bulinus);
                    }

                    var chartdata = {
                        labels: dt,
                        datasets: [
                            {
                                label: 'Biomphalari',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: species1
                            },
                            {

                            label: 'Bulinus',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: species2
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas4c").show();
                $("#canvas4cl").hide();
                $("#canvas4cp").hide();
                $("#canvas4cd").hide();
                var canvas = $("#canvas4c");
                BarChart(canvas, chartdata, "Daily Snails Caught");

            } 
            if (type == "L") {

                $("#canvas4c").hide();
                $("#canvas4cl").show();
                $("#canvas4cp").hide();
                $("#canvas4cd").hide();
                var canvas = $("#canvas4cl");
                LineChart(canvas, chartdata, "Daily Snails Caught");


            } else if (type == "P") {

                $("#canvas4c").hide();
                $("#canvas4cl").hide();
                $("#canvas4cp").show();
                $("#canvas4cd").hide();
                var canvas = $("#canvas4cp");
                PieChart(canvas, chartdata, "Daily Snails Caught");

            } else if (type == "D") {

                $("#canvas4c").hide();
                $("#canvas4cl").hide();
                $("#canvas4cp").hide();
                $("#canvas4cd").show();
                var canvas = $("#canvas4cd");
                PolarChart(canvas, chartdata, "Daily Snails Caught");


            }

            $('#tbl4c').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f4creq error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f4creq done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load9c').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
            f5creq('B');
        }


    });
 }

 function f5creq(ctype) {
    $.ajax({
        url: "data2.php?q=twelve",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);
                     var dt = [];
                     var species1 = [];
                     var species2 = [];

                    for (var i in data) {
                        dt.push(data[i].DT);
                        species1.push(data[i].Biomphalari);
                        species2.push(data[i].Bulinus);
                    }

                    var chartdata = {
                        labels: dt,
                        datasets: [
                            {
                                label: 'Biomphalari',
                                fill: false,
                                backgroundColor: '#d40b0b',
                                borderColor: '#d40b0b',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: species1
                            },
                            {

                            label: 'Bulinus',
                            fill: false,
                            backgroundColor: '#49e2ff',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#CCCCCC',
                            hoverBorderColor: '#666666',
                            data: species2
                        }
                        ]
                    };


            var type = ctype;

            if (type == "B") {

                $("#canvas5c").show();
                $("#canvas5cl").hide();
                $("#canvas5cp").hide();
                $("#canvas5cd").hide();
                var canvas = $("#canvas5c");
                BarChart(canvas, chartdata, "Monthly Snails Caught");

            } 
            if (type == "L") {

                $("#canvas5c").hide();
                $("#canvas5cl").show();
                $("#canvas5cp").hide();
                $("#canvas5cd").hide();
                var canvas = $("#canvas5cl");
                LineChart(canvas, chartdata, "Monthly Snails Caught");


            } else if (type == "P") {

                $("#canvas5c").hide();
                $("#canvas5cl").hide();
                $("#canvas5cp").show();
                $("#canvas5cd").hide();
                var canvas = $("#canvas5cp");
                PieChart(canvas, chartdata, "Monthly Snails Caught");

            } else if (type == "D") {

                $("#canvas5c").hide();
                $("#canvas5cl").hide();
                $("#canvas5cp").hide();
                $("#canvas5cd").show();
                var canvas = $("#canvas5cd");
                PolarChart(canvas, chartdata, "Monthly Snails Caught");


            }

            $('#tbl5c').html(tabledata(chartdata));
        },
        error: function (data) {
            console.log("Request f5creq error");
            console.log(data);
        },
        complete: function (data) {
            console.log("Request f5creq done");
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load9c').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
             f10req('B');
        }


    });
 }




 //res

function f10req(ctype) {
    $.ajax({
        url: "data2.php?q=thirteen",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);

            var mti1 = [];
            var mti2 =[];
            var mti3 = [];
            var mti4 =[];
            var mti5 = [];
            var mti6 =[];
            var mts=[];
            var mtisy1 = [];
            var mtisy2 = [];
            var mtisy3 = [];
            var mtisy4 = [];
            var mtisy5 = [];
            var mtisy6 = [];
            var mtsy = [];

            var labelname = ["Mos KD/Dead 0mins", "Mos KD/Dead 15mins", "Mos KD/Dead 30mins", "Mos KD/Dead 45mins",
             "Mos KD/Dead 60mins","Mos KD/Dead 70mins","Mos KD/Dead 90mins","Mos KD/Dead 105mins",
             "Mos KD/Dead 120mins", "Mos KD/Dead 1440mins","Mos KD/Dead 4320mins"];

            for (var i in data) {
                mti1.push(parseInt(data[i].kd_d0));
                mti1.push(parseInt(data[i].kd_d15));
                mti1.push(parseInt(data[i].kd_d30));
                mti1.push(parseInt(data[i].kd_d45));
                mti1.push(parseInt(data[i].kd_d60));
                mti1.push(parseInt(data[i].kd_d75));
                mti1.push(parseInt(data[i].kd_d90));
                mti1.push(parseInt(data[i].kd_d105));
                mti1.push(parseInt(data[i].kd_d120));
                mti1.push(parseInt(data[i].kd_d24));
                mti1.push(parseInt(data[i].kd_d72));
           
                mti2.push(parseInt(data[i].kd_d0));
                mti2.push(parseInt(data[i].kd_d15));
                mti2.push(parseInt(data[i].kd_d30));
                mti2.push(parseInt(data[i].kd_d45));
                mti2.push(parseInt(data[i].kd_d60));
                mti2.push(parseInt(data[i].kd_d75));
                mti2.push(parseInt(data[i].kd_d90));
                mti2.push(parseInt(data[i].kd_d105));
                mti2.push(parseInt(data[i].kd_d120));
                mti2.push(parseInt(data[i].kd_d24));
                mti2.push(parseInt(data[i].kd_d72));
            

                mti3.push(parseInt(data[i].kd_d0));
                mti3.push(parseInt(data[i].kd_d15));
                mti3.push(parseInt(data[i].kd_d30));
                mti3.push(parseInt(data[i].kd_d45));
                mti3.push(parseInt(data[i].kd_d60));
                mti3.push(parseInt(data[i].kd_d75));
                mti3.push(parseInt(data[i].kd_d90));
                mti3.push(parseInt(data[i].kd_d105));
                mti3.push(parseInt(data[i].kd_d120));
                mti3.push(parseInt(data[i].kd_d24));
                mti3.push(parseInt(data[i].kd_d72));
           
                mti4.push(parseInt(data[i].kd_d0));
                mti4.push(parseInt(data[i].kd_d15));
                mti4.push(parseInt(data[i].kd_d30));
                mti4.push(parseInt(data[i].kd_d45));
                mti4.push(parseInt(data[i].kd_d60));
                mti4.push(parseInt(data[i].kd_d75));
                mti4.push(parseInt(data[i].kd_d90));
                mti4.push(parseInt(data[i].kd_d105));
                mti4.push(parseInt(data[i].kd_d120));
                mti4.push(parseInt(data[i].kd_d24));
                mti4.push(parseInt(data[i].kd_d72));
           

                mti5.push(parseInt(data[i].kd_d0));
                mti5.push(parseInt(data[i].kd_d15));
                mti5.push(parseInt(data[i].kd_d30));
                mti5.push(parseInt(data[i].kd_d45));
                mti5.push(parseInt(data[i].kd_d60));
                mti5.push(parseInt(data[i].kd_d75));
                mti5.push(parseInt(data[i].kd_d90));
                mti5.push(parseInt(data[i].kd_d105));
                mti5.push(parseInt(data[i].kd_d120));
                mti5.push(parseInt(data[i].kd_d24));
                mti5.push(parseInt(data[i].kd_d72));
           
                mti6.push(parseInt(data[i].kd_d0));
                mti6.push(parseInt(data[i].kd_d15));
                mti6.push(parseInt(data[i].kd_d30));
                mti6.push(parseInt(data[i].kd_d45));
                mti6.push(parseInt(data[i].kd_d60));
                mti6.push(parseInt(data[i].kd_d75));
                mti6.push(parseInt(data[i].kd_d90));
                mti6.push(parseInt(data[i].kd_d105));
                mti6.push(parseInt(data[i].kd_d120));
                mti6.push(parseInt(data[i].kd_d24));
                mti6.push(parseInt(data[i].kd_d72));

                mts.push(parseInt(data[i].kd_d0));
                mts.push(parseInt(data[i].kd_d15));
                mts.push(parseInt(data[i].kd_d30));
                mts.push(parseInt(data[i].kd_d45));
                mts.push(parseInt(data[i].kd_d60));
                mts.push(parseInt(data[i].kd_d75));
                mts.push(parseInt(data[i].kd_d90));
                mts.push(parseInt(data[i].kd_d105));
                mts.push(parseInt(data[i].kd_d120));
                mts.push(parseInt(data[i].kd_d24));
                mts.push(parseInt(data[i].kd_d72));

                mtisy1.push(parseInt(data[i].kd_d0));
                mtisy1.push(parseInt(data[i].kd_d15));
                mtisy1.push(parseInt(data[i].kd_d30));
                mtisy1.push(parseInt(data[i].kd_d45));
                mtisy1.push(parseInt(data[i].kd_d60));
                mtisy1.push(parseInt(data[i].kd_d75));
                mtisy1.push(parseInt(data[i].kd_d90));
                mtisy1.push(parseInt(data[i].kd_d105));
                mtisy1.push(parseInt(data[i].kd_d120));
                mtisy1.push(parseInt(data[i].kd_d24));
                mtisy1.push(parseInt(data[i].kd_d72));

                mtisy2.push(parseInt(data[i].kd_d0));
                mtisy2.push(parseInt(data[i].kd_d15));
                mtisy2.push(parseInt(data[i].kd_d30));
                mtisy2.push(parseInt(data[i].kd_d45));
                mtisy2.push(parseInt(data[i].kd_d60));
                mtisy2.push(parseInt(data[i].kd_d75));
                mtisy2.push(parseInt(data[i].kd_d90));
                mtisy2.push(parseInt(data[i].kd_d105));
                mtisy2.push(parseInt(data[i].kd_d120));
                mtisy2.push(parseInt(data[i].kd_d24));
                mtisy2.push(parseInt(data[i].kd_d72));


                mtisy3.push(parseInt(data[i].kd_d0));
                mtisy3.push(parseInt(data[i].kd_d15));
                mtisy3.push(parseInt(data[i].kd_d30));
                mtisy3.push(parseInt(data[i].kd_d45));
                mtisy3.push(parseInt(data[i].kd_d60));
                mtisy3.push(parseInt(data[i].kd_d75));
                mtisy3.push(parseInt(data[i].kd_d90));
                mtisy3.push(parseInt(data[i].kd_d105));
                mtisy3.push(parseInt(data[i].kd_d120));
                mtisy3.push(parseInt(data[i].kd_d24));
                mtisy3.push(parseInt(data[i].kd_d72));
                
                mtisy4.push(parseInt(data[i].kd_d0));
                mtisy4.push(parseInt(data[i].kd_d15));
                mtisy4.push(parseInt(data[i].kd_d30));
                mtisy4.push(parseInt(data[i].kd_d45));
                mtisy4.push(parseInt(data[i].kd_d60));
                mtisy4.push(parseInt(data[i].kd_d75));
                mtisy4.push(parseInt(data[i].kd_d90));
                mtisy4.push(parseInt(data[i].kd_d105));
                mtisy4.push(parseInt(data[i].kd_d120));
                mtisy4.push(parseInt(data[i].kd_d24));
                mtisy4.push(parseInt(data[i].kd_d72));

                mtisy5.push(parseInt(data[i].kd_d0));
                mtisy5.push(parseInt(data[i].kd_d15));
                mtisy5.push(parseInt(data[i].kd_d30));
                mtisy5.push(parseInt(data[i].kd_d45));
                mtisy5.push(parseInt(data[i].kd_d60));
                mtisy5.push(parseInt(data[i].kd_d75));
                mtisy5.push(parseInt(data[i].kd_d90));
                mtisy5.push(parseInt(data[i].kd_d105));
                mtisy5.push(parseInt(data[i].kd_d120));
                mtisy5.push(parseInt(data[i].kd_d24));
                mtisy5.push(parseInt(data[i].kd_d72));

                mtisy6.push(parseInt(data[i].kd_d0));
                mtisy6.push(parseInt(data[i].kd_d15));
                mtisy6.push(parseInt(data[i].kd_d30));
                mtisy6.push(parseInt(data[i].kd_d45));
                mtisy6.push(parseInt(data[i].kd_d60));
                mtisy6.push(parseInt(data[i].kd_d75));
                mtisy6.push(parseInt(data[i].kd_d90));
                mtisy6.push(parseInt(data[i].kd_d105));
                mtisy6.push(parseInt(data[i].kd_d120));
                mtisy6.push(parseInt(data[i].kd_d24));
                mtisy6.push(parseInt(data[i].kd_d72));


                mtsy.push(parseInt(data[i].kd_d0));
                mtsy.push(parseInt(data[i].kd_d15));
                mtsy.push(parseInt(data[i].kd_d30));
                mtsy.push(parseInt(data[i].kd_d45));
                mtsy.push(parseInt(data[i].kd_d60));
                mtsy.push(parseInt(data[i].kd_d75));
                mtsy.push(parseInt(data[i].kd_d90));
                mtsy.push(parseInt(data[i].kd_d105));
                mtsy.push(parseInt(data[i].kd_d120));
                mtsy.push(parseInt(data[i].kd_d24));
                mtsy.push(parseInt(data[i].kd_d72));

            }

            var dataset = mti1, mti2, mti3,mti4, mti5, mti6, mts, mtisy1,mtisy2,mtisy3,mtisy4,mtisy3,mtisy4, mtisy5, mtisy6,mtsy;
            var labels = labelname;

            var list = [];

            list = sortdata(dataset, labels);

            for (var k = 0; k < list.length; k++) {
                dataset[k] = list[k].data;
                labels[k] = list[k].label;
            }


    
            var chartdata = {
                datasets: [{
                

                    label: 'Mosquitoes KnockedDown',
                       
                        data: mti1, mti2, mti3,mti4, mti5, mti6, mts, mtisy1,mtisy2,mtisy3,mtisy4,mtisy3,mtisy4, mtisy5, mtisy6,mtsy
                    
                }],
                labels: labels
            };

            

            

            $('#tbl10').html(tabledata(chartdata));


            var type = ctype;

            if (type == "B") {

                $("#canvas10").show();
                $("#canvas10l").hide();
                $("#canvas10p").hide();
                $("#canvas10d").hide();
                var canvas = $("#canvas10");
                BarChart(canvas, chartdata, "Res: Count vs KnockDown Time");

            } else if (type == "L") {

                $("#canvas10").hide();
                $("#canvas10l").show();
                $("#canvas10p").hide();
                $("#canvas10d").hide();
                var canvas = $("#canvas10l");
                LineChart(canvas, chartdata, "Res: Count vs KnockDown Time");


            } else if (type == "P") {

                $("#canvas10").hide();
                $("#canvas10l").hide();
                $("#canvas10p").show();
                $("#canvas10d").hide();
                var canvas = $("#canvas10p");
                PieChart(canvas, chartdata, "Res: Count vs KnockDown Time");

            } else if (type == "D") {

                $("#canvas10").hide();
                $("#canvas10l").hide();
                $("#canvas10p").hide();
                $("#canvas10d").show();
                var canvas = $("#canvas10d");
                PolarChart(canvas, chartdata, "Res: Count vs KnockDown Time");


            }

            $('#tbl10').html(tabledata(chartdata));


        },
        error: function (data) {
            console.log("Request f10req error");
            console.log(data);
        },
        complete: function (data) {
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load10').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');
         f11req('B');
        }
    });
}


//coneres


function f11req(ctype) {
    $.ajax({
        url: "data2.php?q=fourteen",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);

            var mt1 = [];
            var mt2 =[];
            var mt3 = [];
            var mt4 =[];
            
         
            var labelname = ["Mos KD 3Omin", "Mos KD 60min", "Mos KD Day1", "Mos KD Day2", "Mos KD Day3","Mos KD 30min",
            "Mos KD 60min","Mos KD Day1","Mos KD Day2",
             "Mos KD Day3", "Mos KD 30min", "Mos KD 60min", "Mos KD Day1", "Mos KD Day2","Mos KD 30min","Mos KD 60min","Mos KD Day1",
             "Mos KD Day1", "Mos KD Day2", "Mos KD Day3"];

            for (var i in data) {
                mt1.push(parseInt(data[i].mkd1));
                mt1.push(parseInt(data[i].mkd2));
                mt1.push(parseInt(data[i].mkd3));
                mt1.push(parseInt(data[i].mkd4));
                mt1.push(parseInt(data[i].mkd5));
           
                mt2.push(parseInt(data[i].mkd6));
                mt2.push(parseInt(data[i].mkd7));
                mt2.push(parseInt(data[i].mkd8));
                mt2.push(parseInt(data[i].mkd9));
                mt2.push(parseInt(data[i].mkd10));
           

                mt3.push(parseInt(data[i].mkd11));
                mt3.push(parseInt(data[i].mkd12));
                mt3.push(parseInt(data[i].mkd13));
                mt3.push(parseInt(data[i].mkd14));
                mt3.push(parseInt(data[i].mkd15));
           

       
                mt4.push(parseInt(data[i].mkd16));
                mt4.push(parseInt(data[i].mkd17));
                mt4.push(parseInt(data[i].mkd18));
                mt4.push(parseInt(data[i].mkd19));
                mt4.push(parseInt(data[i].mkd20));
           

            }
           
          

            var dataset = mt1, mt2, mt3,mt4;
            var labels = labelname;

            var list = [];

            list = sortdata(dataset, labels);

            for (var k = 0; k < list.length; k++) {
                dataset[k] = list[k].data;
                labels[k] = list[k].label;
            }


        
            var chartdata = {
                datasets: [{
                

                    label: 'Mosquitoes KnockedDown',
                       
                        data: mt1, mt2, mt3,mt4
                    
                }],
                labels: labels
            };



            $('#tbl11').html(tabledata(chartdata));


            var type = ctype;

            if (type == "B") {

                $("#canvas11").show();
                $("#canvas11l").hide();
                $("#canvas11p").hide();
                $("#canvas11d").hide();
                var canvas = $("#canvas11");
                BarChart(canvas, chartdata, "WHO Cone Resistance: Count vs KnockDown Time");

            } else if (type == "L") {

                $("#canvas11").hide();
                $("#canvas11l").show();
                $("#canvas11p").hide();
                $("#canvas11d").hide();
                var canvas = $("#canvas11l");
                LineChart(canvas, chartdata, "WHO Cone Resistance: Count vs KnockDown Time");


            } else if (type == "P") {

                $("#canvas11").hide();
                $("#canvas11l").hide();
                $("#canvas11p").show();
                $("#canvas11d").hide();
                var canvas = $("#canvas11p");
                PieChart(canvas, chartdata, "WHO Cone Resistance: Count vs KnockDown Time");

            } else if (type == "D") {

                $("#canvas11").hide();
                $("#canvas11l").hide();
                $("#canvas11p").hide();
                $("#canvas11d").show();
                var canvas = $("#canvas11d");
                PolarChart(canvas, chartdata, "WHO Cone Resistance: Count vs KnockDown Time");


            }

            $('#tbl11').html(tabledata(chartdata));


        },
        error: function (data) {
            console.log("Request f11req error");
            console.log(data);
        },
        complete: function (data) {
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load11').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');
         f12req('B');
        }
    });
}


//endconeres


//tuberes

function f12req(ctype) {
    $.ajax({
        url: "data2.php?q=fifteen",
        method: "GET",

        dataType: 'json',
        success: function (data) {
            console.log(data);

            var mtir1 = [];
            var mtir2 =[];
            var mtir3 = [];
            var mtir4 =[];
            var mtir5 = [];
            var mtir6 =[];
            var mtsr1 =[];
            var mtsr2 =[];
            var mtsr3 =[];
            var mtsr4 =[];
         
            var labelname = ["Mos KD Day1", "Mos KD Day2", "Mos KD Day3", "Mos KD Day4", "Mos KD Day5","Mos KD Day6","Mos KD Day7"];

            for (var i in data) {
                mtir1.push(parseInt(data[i].kd_d1d));
                mtir1.push(parseInt(data[i].kd_d2d));
                mtir1.push(parseInt(data[i].kd_d3d));
                mtir1.push(parseInt(data[i].kd_d4d));
                mtir1.push(parseInt(data[i].kd_d5d));
                mtir1.push(parseInt(data[i].kd_d6d));
                mtir1.push(parseInt(data[i].kd_d7d));
           
                mtir2.push(parseInt(data[i].kd_d1d));
                mtir2.push(parseInt(data[i].kd_d2d));
                mtir2.push(parseInt(data[i].kd_d3d));
                mtir2.push(parseInt(data[i].kd_d4d));
                mtir2.push(parseInt(data[i].kd_d5d));
                mtir2.push(parseInt(data[i].kd_d6d));
                mtir2.push(parseInt(data[i].kd_d7d));

                mtir3.push(parseInt(data[i].kd_d1d));
                mtir3.push(parseInt(data[i].kd_d2d));
                mtir3.push(parseInt(data[i].kd_d3d));
                mtir3.push(parseInt(data[i].kd_d4d));
                mtir3.push(parseInt(data[i].kd_d5d));
                mtir3.push(parseInt(data[i].kd_d6d));
                mtir3.push(parseInt(data[i].kd_d7d));
           
                mtir4.push(parseInt(data[i].kd_d1d));
                mtir4.push(parseInt(data[i].kd_d2d));
                mtir4.push(parseInt(data[i].kd_d3d));
                mtir4.push(parseInt(data[i].kd_d4d));
                mtir4.push(parseInt(data[i].kd_d5d));
                mtir4.push(parseInt(data[i].kd_d6d));
                mtir4.push(parseInt(data[i].kd_d7d));

                mtir5.push(parseInt(data[i].kd_d1d));
                mtir5.push(parseInt(data[i].kd_d2d));
                mtir5.push(parseInt(data[i].kd_d3d));
                mtir5.push(parseInt(data[i].kd_d4d));
                mtir5.push(parseInt(data[i].kd_d5d));
                mtir5.push(parseInt(data[i].kd_d6d));
                mtir5.push(parseInt(data[i].kd_d7d));
           
                mtir6.push(parseInt(data[i].kd_d1d));
                mtir6.push(parseInt(data[i].kd_d2d));
                mtir6.push(parseInt(data[i].kd_d3d));
                mtir6.push(parseInt(data[i].kd_d4d));
                mtir6.push(parseInt(data[i].kd_d5d));
                mtir6.push(parseInt(data[i].kd_d6d));
                mtir6.push(parseInt(data[i].kd_d7d));

                mtsr1.push(parseInt(data[i].kd_d1d));
                mtsr1.push(parseInt(data[i].kd_d2d));
                mtsr1.push(parseInt(data[i].kd_d3d));
                mtsr1.push(parseInt(data[i].kd_d4d));
                mtsr1.push(parseInt(data[i].kd_d5d));
                mtsr1.push(parseInt(data[i].kd_d6d));
                mtsr1.push(parseInt(data[i].kd_d7d));

                mtsr2.push(parseInt(data[i].kd_d1d));
                mtsr2.push(parseInt(data[i].kd_d2d));
                mtsr2.push(parseInt(data[i].kd_d3d));
                mtsr2.push(parseInt(data[i].kd_d4d));
                mtsr2.push(parseInt(data[i].kd_d5d));
                mtsr2.push(parseInt(data[i].kd_d6d));
                mtsr2.push(parseInt(data[i].kd_d7d));

                mtsr3.push(parseInt(data[i].kd_d1d));
                mtsr3.push(parseInt(data[i].kd_d2d));
                mtsr3.push(parseInt(data[i].kd_d3d));
                mtsr3.push(parseInt(data[i].kd_d4d));
                mtsr3.push(parseInt(data[i].kd_d5d));
                mtsr3.push(parseInt(data[i].kd_d6d));
                mtsr3.push(parseInt(data[i].kd_d7d));

                mtsr4.push(parseInt(data[i].kd_d1d));
                mtsr4.push(parseInt(data[i].kd_d2d));
                mtsr4.push(parseInt(data[i].kd_d3d));
                mtsr4.push(parseInt(data[i].kd_d4d));
                mtsr4.push(parseInt(data[i].kd_d5d));
                mtsr4.push(parseInt(data[i].kd_d6d));
                mtsr4.push(parseInt(data[i].kd_d7d));
            }
           
          

            var dataset = mtir1, mtir2, mtir3,mtir4,mtir5,mtir6, mtsr1,mtsr2,mtsr3,mtsr4;
            var labels = labelname;

            var list = [];

            list = sortdata(dataset, labels);

            for (var k = 0; k < list.length; k++) {
                dataset[k] = list[k].data;
                labels[k] = list[k].label;
            }


            var chartdata = {
                datasets: [{
                

                    label: 'Mosquitoes KnockedDown',
                       
                        data: mtir1, mtir2, mtir3,mtir4,mtir5,mtir6, mtsr1,mtsr2,mtsr3,mtsr4
                    
                }],
                labels: labels
            };

        

           


            $('#tbl12').html(tabledata(chartdata));


            var type = ctype;

            if (type == "B") {

                $("#canvas12").show();
                $("#canvas12l").hide();
                $("#canvas12p").hide();
                $("#canvas12d").hide();
                var canvas = $("#canvas12");
                BarChart(canvas, chartdata, "WHO Tube Resistance: Count vs KnockDown Time");

            } else if (type == "L") {

                $("#canvas12").hide();
                $("#canvas12l").show();
                $("#canvas12p").hide();
                $("#canvas12d").hide();
                var canvas = $("#canvas12l");
                LineChart(canvas, chartdata, "WHO Tube Resistance: Count vs KnockDown Time");


            } else if (type == "P") {

                $("#canvas12").hide();
                $("#canvas12l").hide();
                $("#canvas12p").show();
                $("#canvas12d").hide();
                var canvas = $("#canvas12p");
                PieChart(canvas, chartdata, "WHO Tube Resistance: Count vs KnockDown Time");

            } else if (type == "D") {

                $("#canvas12").hide();
                $("#canvas12l").hide();
                $("#canvas12p").hide();
                $("#canvas12d").show();
                var canvas = $("#canvas12d");
                PolarChart(canvas, chartdata, "WHO Tube Resistance: Count vs KnockDown Time");


            }

            $('#tbl12').html(tabledata(chartdata));


        },
        error: function (data) {
            console.log("Request f12req error");
            console.log(data);
        },
        complete: function (data) {
            $('.loader').fadeOut();
        },
        beforeSend: function (data) {
            $('#load12').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');
      
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

