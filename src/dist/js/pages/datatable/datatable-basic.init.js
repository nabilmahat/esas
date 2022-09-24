/*************************************************************************************/
// -->Template Name: Bootstrap Press Admin
// -->Author: Themedesigner
// -->Email: niravjoshi87@gmail.com
// -->File: datatable_basic_init
/*************************************************************************************/

/****************************************
 *       Basic Table                   *
 ****************************************/
$('#zero_config').DataTable();
$('#zero_config1').DataTable();
$('#zero_config2').DataTable();
$('#zero_config3').DataTable();
$('#zero_config4').DataTable();
$('#zero_config5').DataTable();
$('#zero_config6').DataTable();
$('#zero_config7').DataTable();
$('#zero_config8').DataTable();
$('#zero_config9').DataTable();
$('#zero_config10').DataTable();
$('#zero_config11').DataTable();
$('#zero_config12').DataTable();
$('#zero_config13').DataTable();
$('#zero_config14').DataTable();
$('#zero_config15').DataTable();

/****************************************
 *       Default Order Table           *
 ****************************************/
$('#default_order').DataTable({
    "order": [
        [3, "desc"]
    ]
});

/****************************************
 *       Multi-column Order Table      *
 ****************************************/
$('#multi_col_order').DataTable({
    columnDefs: [{
        targets: [0],
        orderData: [0, 1]
    }, {
        targets: [1],
        orderData: [1, 0]
    }, {
        targets: [4],
        orderData: [4, 0]
    }]
});