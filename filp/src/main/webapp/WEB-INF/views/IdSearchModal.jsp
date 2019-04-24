<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 

	
 <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">아이디 찾기</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">      
          <h6 id="id_value"></h6>     
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn " data-dismiss="modal"  style="background-color: #30e3ca;color: white;">Close</button>
        </div>
        
      </div>
    </div>
  </div>