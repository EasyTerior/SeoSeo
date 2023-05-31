<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%-- JSTL --%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"><!-- icons -->
<link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"
rel="stylesheet" /><!-- icons -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
<style>
body, main, section {
position: relative;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		// 회원가입 후 modal 표시
		if(${ not empty msgType}){
			if(${msgType eq "성공 메세지"}){ // MemberController.java에서 rttr.addFlashAttribute("msgType", "성공 메세지");로 보냄
				$("#checkType .modal-header.card-header").attr("class", "modal-header card-header bg-success");
			}
			$("#myModal").modal("show");
		}
		
	});
</script>
<title>EasyTerior</title>
</head>
<body>
<main class="main">
	<jsp:include page="../common/header.jsp"></jsp:include>
	<jsp:include page="../common/submenu.jsp"></jsp:include>
	<section class="fixed-top container-fluid overflow-auto h-100" style="margin:137px 0 56px 0;padding:0 0 56px 100px;">
		<h1 class="mt-4 mb-3 text-center fw-bold">방 스타일 분석하기</h1>
		<!-- 실질 컨텐츠 위치 -->
		<div class="container-fluid" style="min-height:100vh;margin-bottom:200px;">
			<h5 class="mt-5 text-center">당신의 인테리어는?</h5>
			<h6 class="mt-4 text-center fw-bold fs-3">스칸디나비아 스타일</h6>
			<div class="d-flex mt-5 justify-content-center align-items-center">
				<img src="${ contextPath }/resources/images/common/styleRoom_Result_image_1.png"
						alt="Interior Image" style="max-width: 60%;">
			</div>
			<div class="row">
				<div class="col mx-10 mt-3 d-flex align-items-center justify-content-center">
					<p class="text-center">스칸디나비아 스타일은 스칸디나비아 지역의 디자인 철학으로, 간결하고 심플한 디자인 원칙을 따릅니다.<br>밝고 넓은 공간을 선호하며, 자연 소재인 목재와 플랜트를 활용하여 자연스러운 분위기를 조성합니다.<br>중립적인 색상과 자연광을 즐기며, 기능성과 실용성을 중시하여 실용적이면서도 아름다운 공간을 만들어냅니다.</p>
				</div>
			</div>
			<div class="d-flex justify-content-center align-items-center mt-3">
				<button class="btn btn-primary">스타일 저장하기</button>
			</div>
			<div class="row mt-5">
				<p class="fw-bold fs-4 text-center">이 스타일과 관련된 인테리어 소품을 추천해드릴게요!</p>
			</div>
			<div class="row m-auto justify-content-center" style="width:90%;">
				<div class="col-3">
					<a href="#" target="_blank" title="새창으로 열림"><img src="${ contextPath }/resources/images/common/styleRoom_Result_image_2.png"
						class="img-fluid my-3 mx-2" alt="Image 1"></a>
				</div>
				<div class="col-3">
					<a href="#" target="_blank" target="_blank" title="새창으로 열림"><img src="${ contextPath }/resources/images/common/styleRoom_Result_image_3.png"
						class="img-fluid my-3 mx-2" alt="Image 2"></a>
				</div>
				<div class="col-3">
					<a href="#" target="_blank" title="새창으로 열림"><img src="${ contextPath }/resources/images/common/styleRoom_Result_image_4.png"
						class="img-fluid my-3 mx-2" alt="Image 3"></a>
				</div>
				<div class="col-3">
					<a href="#" target="_blank" title="새창으로 열림"><img src="${ contextPath }/resources/images/common/styleRoom_Result_image_5.png"
						class="img-fluid my-3 mx-2" alt="Image 4"></a>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</main>

<!-- The Modal -->
<div class="modal fade" id="myModal"><!-- animation : fade -->
    <div class="modal-dialog">
        <div id="checkType" class="card modal-content">
            <!-- Modal Header -->
            <div class="modal-header card-header">
                <h4 class="modal-title text-center">${ msgType }</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <p id="checkMessage" class="text-center">${ msg }</p>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

</script>
</body>
</html>