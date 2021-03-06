<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="account.model.vo.Account" import="java.util.Date, java.text.SimpleDateFormat"
    import="java.util.ArrayList, faq.model.vo.Faq" %>
 <%
 
 	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String today = sdf.format(date);
 %>  
<!doctype html>
<html lang="ko">
  <head>
    
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style>
	.outer{
		min-width : 500px;
		box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
		margin:auto;
	}
	
	h1, p{
		color : white;
	}
	
	.faqdetail{
		width:500px;
		margin:auto;
		background-color:white;
	}
	
	.title{
	width:500px;
	height : 50px;
	color:#B3B3B3;
	background-color : #343A40;
	padding-top : 10px;

	}
	
	textarea {
		width : 500px;
		height : 300px;
		border : none;
	}
	.btnArea {
		text-align:center;
		background-color : #343A40;
	}

	
	.inputPart{
		border:none;
		width : 500px;
		height : 50px;
		margin : auto;
		text-align : center;
	}

</style>
  </head>
  <body>
  	<%@ include file="../common/menubar.jsp" %>
    <div class="wrap">
		<h1>FAQ 작성</h1>
        <p>고객님들의 자주 하는 질문을 모아봤습니다.</p>
        <div class="intro_text">
          
            <div class="main_text0">
                
                
                <div class="faqdetail">
                <form action="<%= request.getContextPath() %>/faq/insert" method="post">
                    <div class="title">제목</div>
                    <span class="input_area">
                        <input type="text" name="title" value="">
                    </span><br>
                    <div class="title">작성자</div>
                    <span class="input_area">
                        <input type="text" name="name" value="<%=loginUser.getName()%>" readonly>
                        <input type="hidden" name="accuontId" value="<%=loginUser.getAccountId() %>">
                    </span><br>
                    <div class="title">작성일</div>
                    <span class="input_area">
                        <input type="data" name="createDate" value="<%= today %>" readonly>
                    </span><br>
                    <div class="textarea1">
                    <div class="title">자주묻는질문</div>
                        <textarea name="content1" id="askt" style="resize:none;"></textarea>
                      </div>
                    <div class="textarea2">
                      <div class="title">답변</div>
                      <textarea name="content2" id="answert" style="resize:none;"></textarea>
                    </div>
                    <div class="btnArea">
					<button class="btn btn-secondary" type="button" onclick="javascript:history.back();">취소</button>
					<button class="btn btn-secondary" type="submit">등록</button>
					</div>
                    </form>
                </div>


            </div>
           </div>
           </div>
     </body>
 </html>