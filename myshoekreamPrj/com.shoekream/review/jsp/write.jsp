<%@page import="com.shoekream.review.vo.ReviewVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	List<ReviewVo> reviewVoList = (List<ReviewVo>)request.getAttribute("ReviewVoList");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/shoekream/resources/css/common/header.css">
<link rel="stylesheet" href="/shoekream/resources/css/review/write.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>

	
 	<div class="write_wrap">

            <div class="write_review">
                <p class="wreview"><b>상품 후기 작성</b></p>
            </div>
            <br>
            <div class="picjor">
                <div class="picture">
                    <img src="/shoekream/resources/img/review/tage_img.png" alt="상품이미지" class="picture_img">
                </div>
                <div class="jordan">
                    <p class="jordan_eg"><b>(W) Jordan 1 Low White Wolf Grey</b></p>
                    <p class="jordan_ko">(W) 조던 1 로우 화이트 울프 그레이</p>
                </div>
            </div>

        <form action="/shoekream/review/write" method="post" id="reviewForm">
            <div class="ggg">
                <div class="ignition">
                    <div class="wignition">
                        <p id="wignition"><b>착화감</b></p>
                    </div>
                    <div class="three">
                        <ul>
                            <li><input type="radio" name="comfort_btn" class="comfort-button" id="comfort-button" data-comfort="comfortable" value="1">편함</li>
                            <li><input type="radio" name="comfort_btn" class="comfort-button" id="comfort-button" data-comfort="normal" value="2">보통</li>
                            <li><input type="radio" name="comfort_btn" class="comfort-button" id="comfort-button" data-comfort="uncomfortable" value="3">불편함</li>
                        </ul>
                    </div>
                </div>
            </div>
            <ul>
    <% for (ReviewVo vo : reviewVoList) { %>
        <li><%= vo.getComfortNo() %></li>
    <% } %>
</ul>
       
            
            <br><br>
            <div class="content">
                <p id="wcontent"><b>내용</b></p>
                    <textarea name="write" placeholder="     다른 회원 분들에게 도움이 되는 나만의 팁을 소개해주세요 !" id="write"
                    ></textarea>
            </div>
        
            <br><br>
        
            <div class="upload">
                <p id="wupload"><b>사진 업로드</b></p>
                <input type="file" id="file-input" accept="image/*" onchange="previewImage(event)">
                <div>
                    <div class="upload_picture">
                        <img src="" alt="리뷰사진" id="reviewpng">
                    </div>
                    <div class="img_label">
                        <label for="file-input" id="file-input-label">이미지 선택</label>
                    </div>
                </div>
            </div>
            <div class="update">
                <ul>
                    <li id="update_detail"><input type="submit" value="올리기"></li>
                    <li id="update_detail"><input type="submit" value="취소"></li>
                </ul>
            </div>
        </form>
            
        </div>

    
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>

<!-- 파일 선택 시 이미지 미리보기 -->
	<script type="text/javascript">
    // 파일 선택 시 미리보기 함수
    function previewImage(event) {
        var reader = new FileReader();
        var imgElement = document.getElementById('reviewpng');

        reader.onload = function () {
            imgElement.src = reader.result;
        };

        // 선택한 파일이 이미지인 경우에만 미리보기를 표시
        if (event.target.files && event.target.files[0]) {
            var fileType = event.target.files[0].type;
            if (fileType.indexOf('image') !== -1) {
                reader.readAsDataURL(event.target.files[0]);
            } else {
                alert('이미지 파일을 선택해주세요.');
            }
        }
    };

    // 폼 제출 함수
    function submitReviewForm() {
        var form = document.getElementById('reviewForm');
        form.submit();
    }
   
	
}
    
    function checkRadio(){
    	if(document.getElementById("comfort-button").value == "1"){
    	form.flag["1"].selected
    	}else{
    	form.flag["1"].selected
    	}
    	}
</script>

   
</script>



