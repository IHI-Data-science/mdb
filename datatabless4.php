<?php
 
/**
 * Created by Gerald  @ Ifakara Health Insitute (2018)
 **/
require_once('includes/load.php');
$page_title='Sample Sorting';
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
            
            <table id="tabledata"
                   data-toggle="table"
                   name="tabledata"
                   data-url="scripts/table/ss4.php"
                   data-row-style="rowStyle"
                   data-pagination="true"
                   data-show-refresh="false"
                   data-show-columns="true"
                   data-page-size="100"
                   data-page-list="[100,500,1000,2000,5000,8000,10000,All]"
                   data-show-export="true"
                   data-export-options='{"fileName": "SS4-<?php echo date('Y-m-d'); ?>"}'
                   data-advanced-search="true"
                   data-search="true">
                <thead>
            
            </table>
        
        
        </div>
    </div>
    <!-- /pre-scrollable table -->
    
    
    <div class="modal fade" id="audit_detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Audit Logs</h4>
                </div>
                <div class="modal-body">
                    
                    <div class="table-responsive has-padding2">
                        
                        <table
                           id="table"
                           class="table table-hover table-striped table-responsive table-bordered"
                           data-toggle="table"
                           data-pagination="true"
                           data-show-refresh="false"
                           data-show-columns="false"
                           data-page-list="[10, 20, 30, 40, 50, 100]"
                           data-show-export="false"
                           data-search="false">
                        
                        
                        </table>
                    
                    </div>
                
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                
                </div>
            </div>
        </div>
    </div>
    
    
    <script>
 
        $(function () {
            tabless4();
        });
        function tabless4() {
 
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
                   
                   $table="custss";
                   $table2="SS4";
                   
                   
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
 
                return ['<a class="btn btn-primary iconaudit" keyid="' + value + '" title="Audit"><i class="fa fa-eye">Audit Logs</i></a>'];
            } else {
                return ['<a class="btn btn-primary iconaudit" keyid="' + value + '" title="Audit" disabled="disabled"><i class="fa fa-eye">Audit Logs</i></a>'];
            }
 
 
        }
// data in the table
        // $('body').delegate('.iconaudit', 'click', function (e) {
        //     e.preventDefault();
        //     var keyid = $(this).attr('keyid');
        //     $.ajax({
        //         url: 'auditdetail.php',
        //         method: 'POST',
        //         data: {auditdetail: 1, keyid: keyid},
        //         success: function (data) {
        //             $('#table tbody').empty();
        //             $('#table tbody').append(data);
        //         },
        //         complete: function (data) {
        //             $('.loader').fadeOut();
        //             $('#audit_detail').modal('show');
        //         },
        //         beforeSend: function (data) {
        //             $('#loadmodal').html('<div class="loader"><div class="spinner"><div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div></div>');
        //         }
 
 
        //     })
        // })
    
    </script>
   
   <?php include_once('layouts/foot.php'); ?>
