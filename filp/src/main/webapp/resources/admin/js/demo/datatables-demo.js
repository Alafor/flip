// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable({
      pageLength: '10',
      lengthMenu : [ [ 10, 15, 20, 30, -1 ], [ 10, 15, 20, 30, 'All' ] ],
      "ajax": {
          "url": "getUserListAjax.do",
          "type": "POST",
          "dataType": "json"	
      },
      columns : [
          {"data": 'member_name'},
          {"data": 'member_email',
//        	render: function (data, type,meta) {      
//        		if ( type === 'display' ) {
//                 data = '<a href="memberDetail.do?email=' + data + '" class="table_link">' + data + '</a>';
//        		}
//        	}
          },
          {"data": 'member_id'},
          {"data": 'member_regdate'}
      ]

  });
});
//$(document).ready(function() {
//	$('#dataTable').DataTable({
//			'ajax ": {
//			"url":"/getUserListAjax.do",
//			"type":"POST",
//		}
//	,
//		columns : [
//			{data: "member_name"},
//			{data: "member_email"},
//			{data: "member_id"},
//			{data: "member_regdate"}
//			]
//		
//	});
//});
