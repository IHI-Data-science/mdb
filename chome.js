$(document).ready(function () {

    function fhreq() {
        $.ajax({
            url: "datahome.php?q=hzero",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
               setTimeout(function() { 
                console.log(data);
                //var taxon = ["An. gambiae s.l.","An. funestus","Culex sp.","Mansonia sp."];
                var taxon = [];
                var tx1 = [];
                var tx2 = [];
                var tx3 = [];
                var tx4 = [];
                var tx5 = [];
                var tx6 = [];

                for (var i in data) {
                    taxon.push(italicize(data[i].TaxonName));
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
                                label: 'Total female',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: tx6
                            },

                            {
                                label: 'Unfed female',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: tx2
                            },

                            {
                                label: 'Fed female',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: tx3
                            },

                            {
                                label: 'Partly fed female',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: tx4
                            },

                            {
                                label: 'Gravid female',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: tx5
                            },

                            {
                                label: 'Total male',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: tx1
                            }
                        ]
                    };


                $('#tblhome').html(tabledata(chartdata));
               
               }, 4000); 

            },
            error: function (data) {
                console.log("Request f2req error");
                console.log(data);
            },
            complete: function (data) {
                $('.loader22').fadeOut();
            },
            beforeSend: function (data) {
                $('#load3').html('<div class="loader22" style="height:100px;"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');
                f1req();
            }

        });
    }


    function fjreq() {
        $.ajax({
            url: "datahome.php?q=htwenty",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
               setTimeout(function() { 
                console.log(data);
                //var taxon = ["An. gambiae s.l.","An. funestus","Culex sp.","Mansonia sp."];
                var tx = [];
                var l1l2 = [];
                var l3l4 =[];
                var l1 =[];
                var l2 =[];
                var l3 =[];
                var l4 =[];

                for (var i in data) {
                    tx.push(italicize(data[i].TaxonName));
                    l1l2.push(data[i].L1L2);
                    l3l4.push(data[i].L3L4);
                    l1.push(data[i].L1);
                    l2.push(data[i].L2);
                    l3.push(data[i].L3);
                    l4.push(data[i].L4);
                }

                var chartdata =
                    {
                        labels: tx,
                        datasets: [
                            {
                                label: 'L1',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l1
                            },

                            {
                                label: 'L2',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l2
                            },

                            {
                                label: 'L3',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l3
                            },

                            {
                                label: 'L4',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l4
                            },

                            {
                                label: 'L1L2 (Early Stage)',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l1l2
                            },

                            {
                                label: 'L3L4 (Late Stage)',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: l3l4
                            }
                        ]
                    };


                $('#tblhomes').html(tabledata(chartdata));
               
               }, 4000); 

            },
            error: function (data) {
                console.log("Request f2req error");
                console.log(data);
            },
            complete: function (data) {
                $('.loader22').fadeOut();
            },
            beforeSend: function (data) {
                $('#load3').html('<div class="loader22" style="height:100px;"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div></div></div>');
                f1req();
            }

        });
    }


    function f1req() {
        $.ajax({
            url: "datahome.php?q=hone",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].ea);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [
                            {
                                label: 'Enumeration area Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]
                    };

                var canvas = $("#hcanvas1");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload1').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f2req()

            }


        });
    }

    function f2req() {
        $.ajax({
            url: "datahome.php?q=htwo",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].cr);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [
                            {
                                label: 'Cluster Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas2");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload2').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f3req()

            }


        });
    }

    function f3req() {
        $.ajax({
            url: "datahome.php?q=hthree",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].cp);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Compound Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas3");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload3').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f4req()

            }


        });
    }

    function f4req() {
        $.ajax({
            url: "datahome.php?q=hfour",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].me);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Method Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas4");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload4').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f5req()

            }


        });
    }

    function f5req() {
        $.ajax({
            url: "datahome.php?q=hfive",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].ind);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Location Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas5");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload5').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f6req()

            }


        });
    }

    function f6req() {
        $.ajax({
            url: "datahome.php?q=hsix",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].st);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Start time Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas6");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload6').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f7req()

            }


        });
    }

    function f7req() {
        $.ajax({
            url: "datahome.php?q=hseven",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].ft);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Finish time Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas7");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload7').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f8req()

            }


        });
    }

    function f8req() {
        $.ajax({
            url: "datahome.php?q=height",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].hp);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Holding period Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas8");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload8').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f9req()

            }


        });
    }

    function f9req() {
        $.ajax({
            url: "datahome.php?q=hnine",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].rnd);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Round Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas9");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload9').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f10req()

            }


        });
    }

    function f10req() {
        $.ajax({
            url: "datahome.php?q=hten",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].blc);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Block Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas10");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload10').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f11req()

            }


        });
    }

    function f11req() {
        $.ajax({
            url: "datahome.php?q=heleven",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].vi);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Volunteer initials Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas11");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload11').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
                f12req()

            }


        });
    }

    function f12req() {
        $.ajax({
            url: "datahome.php?q=htwelve",
            method: "GET",
            cache: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var field = [];
                var frequency = [];

                for (var i in data) {
                    field.push(data[i].tr);
                    frequency.push(data[i].frequency);

                }

                var chartdata =
                    {
                        labels: field,
                        datasets: [

                            {
                                label: 'Treatment Frequency',
                                backgroundColor: randomColor(),
                                hoverBorderColor: randomColor(),
                                data: frequency
                            }
                        ]

                    };

                var canvas = $("#hcanvas12");

                hBarChart(canvas, chartdata, "");


            },
            error: function (data) {

            },
            complete: function (data) {
                $('.loader').fadeOut();
            },
            beforeSend: function (data) {
                $('#hload12').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');


            }


        });
    }


    fhreq();
    fjreq();


    //$('#drange').daterangepicker();


});
