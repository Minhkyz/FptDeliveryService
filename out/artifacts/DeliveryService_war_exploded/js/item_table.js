$(document).ready(function(){
    var dataTable = $('#filtertable').dataTable({
        "pageLength":6,
        'aoColumnDefs':[{
            'bSortable':false,
            'aTargets':['nosort'],
        }],
        columnDefs:[
            {type:'date-dd-mm-yyyy',aTargets:[5]}
        ],
        "aoColumns":[

            null,
            null,
            null,
            null,
            null,
        ],
        "order":false,
        "bLengthChange":false,
        "dom":'<"top">ct<"top"p><"clear">'
    });
    $("#filterbox").keyup(function(){
        dataTable.search(this.value).draw();
    });
});

$(document).ready(function() {
    $('#example').DataTable();
} );