<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .footer{
      width: 100%;
      height: 150px;
      box-sizing: border-box;
      margin-top: 20px;
      margin-left: 50px;
    }

    .info-section{
      width: 400px;
      height: 100%;
      border-right: 1px solid black;
    }

    .small-logo {
      width: 50%;
      height: 40px;
    }

    p ,i {
      margin-left: 10%;
      display: block;
      font-size: 12px;
      margin: 0;
      padding: 0;
    }

    #tit_cs {
      margin-right: 12px;
      position: relative;
    }
    
    
</style>
</head>
<body>

    <footer class="footer">
        <div>
          <img src="${root}/static/img/logo2.PNG" alt="작은로고" width="30px" height="20px">
          <p>ALL IS WELL
          <i>전화 010-5796-3553</i>
          <i>팩스 02-877-9626</i>
          <i>사업자등록번호 352-09-4718</i>
          <i>의료사업자등록증번호 제2006-000003호</i>
        </p>
        </div>
      </footer>

</body>
</html>