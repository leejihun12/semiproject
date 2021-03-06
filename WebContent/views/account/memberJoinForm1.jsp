<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
      width : 550px;
      height : 650px;
      margin : auto;
      background-color: #343A40;
      border : none;
      border-radius: 20px;
      position : relative;
   }
   
   .bigTitle {
    text-align: center;
            font-size: 30px;
            color : white;
   }
  
          #joinArea {
            width : 500px;
            height : 600px;
            margin : auto;
           
            background-color: white;
            border : none;
            border-radius: 20px;
        }
   
   #joinForm {
      width : 480px;
      margin: auto;
      padding: 10px;
   }
   
   #joininside {
            width : 440px;
            margin : auto;
            padding-top: 20px;
   }
   
   .inputText {
            width : 170px;
            height : 40px;
            margin : 0px;
            padding-left : 10px;
            display : inline-block;
            background-color : rgb(141, 145, 149);
            border : lightblue;
            font-size : 13px;
            border-top-right-radius : 5px;
            border-bottom-right-radius: 5px;
   }
   
   .inputText:focus {outline:2px solid rgb(52, 58, 64);}
   
   
   
   .join_title{
            width : 140px;
            height : 40px;
            background-color: rgb(86, 88, 90);
            border : none;
            text-align: center;
            float : left;
            margin: 0px auto;
            display : inline-block;
            color : rgb(52, 152, 219);
            border-top-left-radius : 5px;
            border-bottom-left-radius: 5px;
   }
   
   .secondTitle {
      text-align : center;
      text-size : 14px;
      font-weight : bold;
   }

   
   .input_area {
            width : 170px;
            height : 50px;
            float : left;
            background-color: white;
            display : inline-block;
            border : lightblue;
   }
   
   .input_area1 {
            width : 277px;
            height : 50px;
            float : left;
            background-color: white;
            display : inline-block;
            border : lightblue;
   }
   
   
   #joinAll {
            width : 420px;
            height : 55px;
            text-align: center;
                        border : lightgray;
            border-top-right-radius : 5px;
            border-bottom-right-radius: 5px;
   }
   
         .title {
   margin : auto;
   padding-top : 5px;
   text-size : 13px;
   color : white;
   }
   
   .btnArea {
      text-align:center;
      padding : 50px;
   }
   
   .btn1 {
            width : 100px;
            height : 40px;
            background-color: rgb(86, 88, 90);
            border : none;
            color : white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 4px;
            margin : auto;
   }
   
   #idCheck {
   width : 100px;
    height : 35px;
   	display : inline-block;
   }
   
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="bigTitle">?????? ????????????</div><br>
	<div class="outer">
	<br>
		<div id="joinArea">
			<form id="joinForm" action="<%= request.getContextPath() %>/account/insert1"
			method="post" onsubmit="return joinValidate();">
				<div class="secondTitle">?????? ?????? ?????????????????????.</div>
				<div id=joininside>
					<div id="joinAll">
						<div class="join_title"><div class="title">?????????</div></div>
						<div class="input_area1">
						<input type="text" class="inputText" maxlength="13" name="accountId" required>
						<button class="btn1" id="idCheck" type="button">????????????</button>
						</div>
					</div>
					<div id="joinAll">
						<div class="join_title"><div class="title">????????????</div></div>
						<div class="input_area">
						<input type="password"  class="inputText" maxlength="15" name="password" required>
						</div>
					</div>
					<div id="joinAll">
						<div class="join_title"><div class="title">???????????? ??????</div></div>
						<div class="input_area">
						<input type="password"  class="inputText" maxlength="15" name="password2" required>
						</div>
						<label id="pwdResult"></label>
					</div>
					<div id="joinAll">
						<div class="join_title"><div class="title">??????</div></div>
						<div class="input_area">
						<input type="text"  class="inputText" maxlength="5" name="userName" required>
						</div>
					</div>
					<div id="joinAll">
						<div class="join_title"><div class="title">?????????</div></div>
						<div class="input_area">
						<input type="email"   class="inputText" name="email" required>
						</div>
					</div>
					<div id="joinAll">
						<div class="join_title"><div class="title">?????????</div></div>
						<div class="input_area">
						<input type="tel" maxlength="11"  class="inputText" name="phone" placeholder="(-??????) 01012345678" required>
						</div>
					</div>
					<div id="joinAll">
						<div class="join_title"><div class="title">????????????</div></div>
						<div class="input_area">
						<input type="text"  class="inputText" name="name" placeholder="????????????" readonly>
						</div>
					</div>
					
					<div class="btnArea">
						<button class="btn1" id="goMainBtn" type="button">????????????</button>	
						<button class="btn1" id="joinBtn">????????????</button>
						<button class="btn1" id="goBackBtn" onclick="history.back()">????????????</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<script>
		// 1. ???????????? ????????????
		const goMainBtn = document.getElementById('goMainBtn');
		goMainBtn.addEventListener('click', function(){
			location.href='<%= request.getContextPath() %>';
		});
	
		// 2. ????????? ??????
		function joinValidate(){
			// ?????????
			if(!(/^[a-z][a-z\d]{3,11}$/.test($("#joinForm input[name=accountId]").val()))){
				alert('???????????? ??????????????? ???????????? 4~12??? ??????(?????? ?????? ??????)');
				$("#joinForm input[name=accountId]").select();
				return false;
			}
			// ???????????? ?????? ??????
			if($("#joinForm input[name=password]").val() != $("#joinForm input[name=password2]").val()){
				$("#pwdResult").text("???????????? ?????????").css("color", "red");
				return false;
			}
			// ??????
			if(!(/^[???-???]{2,}$/.test($("#joinForm input[name=userName]").val()))){
				alert('????????? ????????? 2?????? ?????? ??????');
				$("#joinForm input[name=name]").select();
				return false;
			}
			
			return true;
		}
		
		$(function(){
			
			var isUsable = false;
			
			$("#idCheck").click(function(){
				
				var accountId = $("#joinForm input[name='accountId']");
				
				if(!accountId || accountId.val().length < 4){
					alert("???????????? ?????? 4?????? ??????????????? ?????????.");
					accountId.focus();
				} else {
					$.ajax({
						url : "<%= request.getContextPath() %>/account/idCheck",
						type : "post",
						data : { accountId : accountId.val() },
						success : function(data){
							console.log(data);
							if(data == "fail"){
								alert("????????? ??????????????????.");
								accountId.focus();
							} else {
								if(confirm("?????? ????????? ??????????????????. ?????????????????????????")){
									accountId.prop('readonly', true);
									isUsable = true;
								} else {
									accountId.prop('readonly', false);
									accountId.focus();
									isUsable = false;
								}
							}
							
							if(isUsable){
								$("#joinBtn").removeAttr("disabled");
							} else {
								$("#joinBtn").attr("disabled", true);
							}
						},
						error : function(e){
							console.log(e);
						}
					});
				}
			});
		});
	</script>
</body>
</html>