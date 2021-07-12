<?php

/**
 * Created by Dickson Msaky @ Ifakara Health Insitute (2018)
 **/

require_once('includes/load.php');
$page_title='Sample Observation';
page_require_level(3);
include_once('layouts/head.php');
?>

<!-- Page content -->
<div class="page-content">
    <!-- Page title -->
    <div class="page-title">
        <h5><i class="fa fa-bars"></i> Home
            <small>Welcome, <?php echo $name; ?> </small>
        </h5>
    </div>
    
    
    <!-- /page title -->
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h6 class="panel-title"> Data Table For: <span id="pname"></span>
            </h6>
            <div class="btn-group pull-right">
               
               <?php include_once('scripts/selectproject.php'); ?>
            
            </div>
        </div>
    </div>
    
    
    <!-- Pre-scrollable table -->
    <div class="panel panel-default">
        <div class="panel-heading"><h6 class="panel-title"> Sample Sorting </h6>
        </div>
        <div class="table-responsive has-padding2">
            
            <table id="tabledata" class="table"
                   data-toggle="table"
                   name="tabledata"
                   data-url="scripts/table/so1.php"
                   data-pagination="true"
                   data-show-refresh="false"
                   data-show-columns="true"
                   data-toolbar="#toolbar"
                   data-page-size="100"
                   data-page-list="[100,500,1000,2000,5000,8000,10000,All]"
                   data-show-export="true"
                   data-export-options='{"fileName": "SO1-<?php echo date('Y-m-d'); ?>"}'
                   data-advanced-search="true"
                   data-search="true">
                <thead>
            
            </table>
        
        </div>
    </div>
    <!-- /pre-scrollable table -->
    
    
    <script>

        $(function () {
            tableso1();
        });
        function tableso1() {

            $('#tabledata').bootstrapTable('destroy').bootstrapTable({
                classes: 'table table-responsive',
                queryParams: function (params) {
                    return {
                        offset: params.offset,
                        limit: params.limit,
                        search: params.search,
                        order: params.order,
                        ordername: params.sort,
                    };
                },

                search: true,
                mobileResponsive: true,
                maintainSelected: true,
                paginationVAlign: 'both',
                sidePagination: 'server',
                sortable: true,
                showRefresh: false,
                pagination: true,
                showExport: true,
                showFooter: false,
                showColumns: true,
                trimOnSearch: false,
                paginationFirstText: "First",
                paginationLastText: "Last",
                paginationPreText: "Previous",
                paginationNextText: "Next",
                columns: [
                   <?php
                   
                   $table="custso";
                   $table2="SO1";
                   
                   $col=getcolumnname($_SESSION['expcode'], $table, $table2);
                   $col2=getcolumnname2($_SESSION['expcode'], $table, $table2);
                   
                   $array1=explode(',', $col);
                   $array2=explode(',', $col2);
                   
                   
                   if(strlen($col)>0){
                      
                      echo getcolumnnametable2($array1, $array2);
                      
                   }
                   
                   
                   ?>
                    
                    /*,{
                     field: "keyid",
                     title: 'Action',
                     align: 'center',
                     formatter: auditFormatter
                     } */


                ],

                formatLoadingMessage: function () {
                    return '<h4><i class="fa fa-spinner fa-spin" aria-hidden="true"></i> Loading... please wait.... </h4>';
                }

            });
        }


        function auditFormatter(value, row, index) {

            if (value) {
                return ['<a class="btn btn-primary iconaudit" pid="' + value + '" title="Audit"><i class="fa fa-eye">Audit Logs</i></a>'];
            } else {
                return ['<a class="btn btn-primary iconaudit" pid="' + value + '" title="Audit" disabled="disabled"><i class="fa fa-eye">Audit Logs</i></a>'];
            }


        }
    
    </script>
   
   <?php include_once('layouts/foot.php'); ?>
			
	
           