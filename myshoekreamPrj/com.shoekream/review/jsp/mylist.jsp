<%@page import="com.shoekream.review.vo.ReviewProductVo"%>
<%@page import="com.shoekream.review.vo.ReviewVo"%>
<%@page import="com.shoekream.review.service.ReviewProductService"%>
<%@page import="com.shoekream.admin.vo.EnrollProductVo"%>
<%@page import="com.shoekream.review.dao.ReviewDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
 		List<ReviewVo> reviewVoList = (List<ReviewVo>)request.getAttribute("reviewVoList");
    	EnrollProductVo productVo = (EnrollProductVo) request.getAttribute("productVo");
    	ReviewProductVo reviewVo = (ReviewProductVo) request.getAttribute("reviewVo");

    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/shoekream/resources/css/common/header.css"> 
<link rel="stylesheet" href="/shoekream/resources/css/review/mylist.css">
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="abcd"> 

</div>

        <div class="user_top">
            <div class="profile_img">
            <%
			    String reviewImage = "";
			    if (reviewVoList != null && !reviewVoList.isEmpty()) {
			        reviewImage = reviewVoList.get(0).getReviewImage();
			    }
			%>
                <img src="/shoekream/resources/img/review/wave.png" alt="프로필사진" class="profile_img02">
                <div class="profile_info_box">
                    <ul>
                        <li><h2>helloprofile</h2></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="abcd"> </div>
        
        <div class="review-container">
            <div class="boardtap">
                <p class="board"><h3>게시물</h3></p>
            </div>
            <div class="abcd"> </div>
            <div class="feed">
            <ul class="review_mylist_wrap">
                <%for(ReviewVo vo : reviewVoList) { %>

               <li>

                <a href="/shoekream/review/detail?no=<%= vo.getNo() %>">
                
                	<div class="listphoto">
                		<div class="mylist">
	                		<div class="photo">
	                			<img src="/shoekream/resources/img/review/<%=vo.getReviewImage() %>">
	                		</div>
                		</div>
                	</div>
                    <div class="profileimage">
                        <div class="detail"><%= vo.getProfileImage() %></div>
                    </div>    
                  </a>
                </li>
                 <% } %>
              </ul>
              </div>
            </div>

        <div class="abcd"> 

        </div>
        
      <%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>











.abcd{
    display: flex;
    height: 40px;
}

.user_top{
    display: flex;
    justify-content: space-between;
    width: 1200px;
    margin: auto;
    /* align-items: center; */
    padding: 0;   
    text-decoration: none;
    /* background-color: red; */
}
.profile_img{
    display: flex;
    justify-content: space-around;
}
.profile_img02{
    display: flex;
    justify-content: flex-start;
    width: 120px;
    height: 120px;
    border-radius: 70%;
    margin-left: 40px;
    border: 1px solid lightgray;
    /* background-color: antiquewhite; */
}
.profile_info_box{
    display: flex;
    justify-content: space-between;
    width: 150px;
    height: 90px;
    margin-left: 100px;
    margin-top: 30px;
    /* background-color: aqua; */
}

/* .profile_info_box li{
    text-decoration: none;
} */
/* .info01{
    display: flex;
    justify-content: flex-start;
    padding: 150% 40%;
    text-decoration: none;
}
.info02{
    display: flex;
    justify-content: flex-start;
    padding: 200% 0%;
} */

.review-container {
    display: flex;
    justify-content: center;
    width: 1200px;
    margin: auto;
    flex-direction: column;
}

.boardtap{
    display: flex;
    justify-content: space-around;
    width: 1200px;
    height: 44px;
    /* margin: auto; */
    align-items: center;
    padding-right: 50% 30%;
    border-bottom: 1px solid lightgray;
    /* background-color: aqua; */
}
.board h3{
    display: block;
    justify-content: flex-start;
    width: 990px;
    height: 30px;
    /* padding: 90% 30%; */
}

.feed {
    width: 1200px;
    height: 200%;
    /* background-color: aqua; */
}
.feed ul{
	display: flex;
	justify-content: space-around;
}
ul li{
	 margin-right: 10px;
}

.listphoto{
    width: 1200px;
    height: 370px;
    display: block;
    justify-content: space-between;
    /* background-color: antiquewhite; */
}
.profile_like{
	width: 1200px;
	height: 10px;
	display: flex;
	justify-content: space-evenly;
	margin-bottom: 60px;
}
.mylist{
	width: 300px;
	height: 400px;
}
.photo{
    width: 280px;
    height: 330px;
    border: solid 1px lightgray;
    border-radius: 10%
}
.wave{
    height: 35px;
    width: 35px;
    border-radius: 70%;
    border: solid 1px lightgray;
    margin-left: 20px;
}
#likey{
    margin-right: 10px;
}
.detail{
    display: flex;
    justify-content: space-between;
    height: 35px;
    width: 35px;
     border-radius: 70%;
    border: solid 1px lightgray;
    /* background-color: aqua; */
}

/* .likenum{
    display: ;
    justify-content: flex-end;
} */
/*.likebox{
    display: inline-flex;
    justify-content: space-evenly;
    margin: 10px;
}*/
.profileimgae{
    display: block;
    width: 25%;
    justify-content: space-between;
    /* height: 250px; */
    /* background-color: skyblue; */
}
