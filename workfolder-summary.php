<?php 
include "src/header.php"
?>
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-7 align-self-center">
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">ESAS Workfolder Summary</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item"><a href="report-list.php" class="text-muted">Report List</a>
                            </li>
                            <li class="breadcrumb-item text-muted active" aria-current="page">ESAS Workfolder Summary
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="col-5 align-self-center">
                <div class="customize-input float-right">
                    <select
                        class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
                        <option value="dec21">Dec 21</option>
                        <option value="1">Jan 22</option>
                        <option value="2">Feb 22</option>
                        <option value="2">Mar 22</option>
                        <option value="2">Apr 22</option>
                        <option value="2" selected>May 22</option>
                    </select>
                </div>
            </div>
            <br>
        </div>
        <br>
        <div class="row">
            <div class="col-12 align-right">
                <div class="customize-input float-right">
                    <button id="btnPrint" class="btn btn-dark">Print to PDF</button>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">
            <!-- Start Chart -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body" id="chart">
                        <h4 class="card-title">MEDIA PRIMA ESAS MAY 1-31, 2022</h4>
                        <div>
                            <canvas id="bar-chart-horizontal" height="150"> </canvas>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Chart -->
            <!-- Start List Directory Table -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Workflow Folder</th>
                                        <th>Size in GB</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="text-center">TOTAL</td>
                                        <td class="text-right">9,161,846</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End List Directory Table -->
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->

</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
<?php
include "src/footer.php";
?>
</body>



<script type="text/javascript">
$("#btnPrint").click(function() {
    var divContents = $("#text").html();
    var printWindow = window.open('', '', 'height=400,width=800');
    printWindow.document.write('<html><head><title>Html to PDF</title>');
    printWindow.document.write('</head><body >');
    printWindow.document.write(document.getElementById("bar-chart-horizontal").innerHTML);
    printWindow.document.write('</body></html>');
    printWindow.document.close();
    printWindow.print();
});
</script>

</html>