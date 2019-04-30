// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable({
      "pageLength": "10",
      "bPaginate": "true",
      "bLengthChange": "true",
      "lengthMenu" : [ [ 10, 15, 20, 30, -1 ], [ 10, 15, 20, 30, "All" ] ],
      "bAutoWidth": false,
     "processing": true,
     "ordering": true,
     "serverSide": false,
      "searching": true,
      "ajax ": {
          "url":"/getUserListAjax.do",
          "type":"POST",
          "data": function (d) {
          }
      },
      columns : [
          {data: "member_name"},
          {data: "member_email",
        	render: function (data, type,row,meta) {
        		if(type === 'display'){
                    data = '<a href="memberDetail.do?email=' + data + '" class="table_link">' + data + '</a>';
                }
			}  
          
          },
          {data: "member_id"},
          {data: "member_regdate"}
      ]

  });
});
