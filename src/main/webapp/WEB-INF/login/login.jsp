<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<style>
	
	
	.loginWrapper{
		margin-top: 50px;
		margin-left:auto;
		margin-right:auto;
		max-width: 400px;
		height: 250px;
		border-radius:5px;
		text-align: center;
		line-height:1.8;
	}
	
	#kakao-login-btn{
		margin-top:20px;
    	border-top: 1px solid #DDDDDD99;
	}
	.itemListWrapper{
		width: 960px;
		height: 480px;
		margin: 5px auto;
		text-align: center;
	}
	.itemList{
		float:left;
		width: 306px;
		height: 400px;
		margin: 5px;
		border-radius: 5px;
		border : 2px solid #DDDDDD;
	}
	.imageArea{
		width: 100%;
		height: 200px;
		background: #EEEEEE;
		overflow:hidden;
	}
	
	.imageArea > img{
		width: 100%;
		height: 100%;
	}
	.reviewArea{
		width: 100%;
		height: 200px;
		text-align: left;
		padding : 4px;
	}
	
	.reviewArea > textarea {
		resize: none;
		width: 98%;
		height: 198px;
		background:#AAAA0011;
		overflow:hidden;
    	border: 0px !important;
	}
	.slide-child{
		transform: translateY(50px);
        opacity: 0;
        transition: all 1s;
    }
    .is-visible{
		transform: translateY(0px);
        opacity: 1;
    }
    
   
</style>

<script type="text/javascript">

$(document).ready(function(){
	Kakao.init('b30526376249afa40b9d4f5c977a841f');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        alert(JSON.stringify(authObj));
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
    
    var slideAelements = $('.slide-child')
    
    
    function animateSlideA() {
      slideAelements.each(function (i) {
          setTimeout(function () {
              slideAelements.eq(i).addClass('is-visible');
          }, 300 * (i + 1));
      });
    }
    animateSlideA() ;
    
});
</script>

<html>
<title>오프라인 리뷰 웹테스트</title>



<body>

<div class="loginWrapper">
	<div>
		<div class="slide-child">OffREV 는 Offline</div>
		<div class="slide-child">Review Flatform 의 약자로써</div>
		<div class="slide-child">오프라인 후기 정보들을</div>
		<div class="slide-child">모아모아 제공합니다.</div>
	</div>
	<div id="kakao-login-btn">
		
	</div>
	
	
</div>

<div class="itemListWrapper">
<div class="itemList slide-child">
   <div class="imageArea"><img src="img/img1.jpg"/></div>
   <div class="reviewArea">
      <textarea readonly>일 시 : 2019년 11월 2일
장소 : 공덕 IOT COC (1차), 바른치킨(2차)
시간 : 3시, 6시</textarea>
   </div>
</div>
<div class="itemList slide-child">
   <div class="imageArea"><img src="img/img2.jpg"/></div>
   <div class="reviewArea">
      <textarea readonly>일시 : 2019년 9월 28일
장소 : 공덕 IOT COC (1차), 바른치킨(2차)
시간 : 3시, 6시
인원 1차 60명 2차 50명

이번 모임은 공덕에서 진행되었습니다.
장소를 빌려주신 IOT COC 담당분들께는 감사말씀 드립니다.

이번 모임은 1차에서는 주로 세미나 위주
2차에서는 치킨을 위주로 진행되었습니다.

폰이 말썽이라 배터리가 다 닳아버린 이후로는
개인적으로는 고통의 시간들이었는데요.

연락들도 많이오고 하는 과정에서 차가막히고 늦게되는 바람에...
이기정 군이 고생을 많이해주었고요~!

그리고 다른 분들도 도와주셔서 그래도 모임을 잘 진행하게되었네요.
첫번째는 이모티콘 강의
다들 이 강의를 매우 흥미로워했는데요.
2차 모임에서 어떤 그룹은 이모티콘을 만들어 돈벌자며
결의를 다졌다는 후문이 있습니다.

그리고 두번째 강의는 크리에이터 멘땅에 해딩하기~! 이 시간은 어렵지 않아서 많은 분들이 편안! 해 했던 세션이었는데요~
다양한 시행착오를 거쳐서 틱톡 크리에이터가 되기까지~! 더 유명해지면 얼굴보기 어려운 분이 되실 수도 있겠네요~!

그리고 세번째 강의 세션은 스타트업을 위한 개발 경험 공유, 해왔던 일들을 가지고 이런저런 개발에 필요한 것이 무엇인지 돌아볼 수 있는 시간이었네요.

그리고 4번째강의는 왓챠플래이 신입 재직중인 기정군이 다양한 툴과 정보들을 잘 정리해서 올려주었어요~

5번째 스칼라 강의가 아쉬웠는데...
시간배분의 문제로 간단한 설명까지밖에 못했네요.

다음 강의 때 해주시기로 하셨어요~! 다음 10월 모임엔 Handson 세션으로 꼭 해야할듯싶네요~!

특별히 간식과 음료를 잘 준비해주셔서~!
다들 맛있게 잘 먹었다고 합니다..

2차 모임은 48명이 소소하니 모여~!
치킨과 대화를 나누며 시간들을 보내었습니다.
몇분이 못오셨는데 기부..
하신건 맛있게 잘 먹었습니다.

그리고 9시반 이후에 카페로 이동해서
2차모임의 카페인증까지~!

이번 모임도 다양한 분들과 함께
유익하고 재미있는 시간을 보내었고요~!

10월 모임을 기대해 봅니다.
이번 포스터 제작자분도 모임에 와주시고~!
다양한 분들이 소통했던 9월 모임이었습니다.

이상 감사합니다.</textarea>

   </div>
</div>
<div class="itemList slide-child">
   <div class="imageArea"><img src="img/img3.jpg"/></div>
   <div class="reviewArea" >
   
      <textarea readonly>[2019년 9월 19일 7시 곱창팟 치킨모임 후기]

장소 : 홍대 가오곱창
일시 : 9월 19일 7시
인원 : 13명
회비 : 25000 => 24000

후기
이번 모임은 특별히
치킨이 아니라 곱창 모임이었다는 점.
그리고 주말 모임이 아니라
평일 모임이었다는 점이 달랐습니다~!

제가 도착하는 시점이미
라면이 세팅되어있었습니다.

그러니까 갑자기 좀 찌개를 먹어야할 것 같은 그런
분위기!...

그리고 수저는 어디갔는지 안보이는 상황
솔직히 자리는 좀 좁고... 이 가오곱창집
가운데 마치 무인도처럼 가운데 저희 모임이 떠있는듯한 형국!

기존의 치킨모임들의 경우 어색함의 시간이
그리 길지 않았던 반면
이번 모임은 살짝 어색함이 풀어지는 시간에
딜레이가 있긴했습니다.

가게 한가운데 저희가 있었기 때문에....

어찌 되었든
이 가게의 전략을 처음 파악했습니다.
바로 그것은...
라면과 주먹밥
평소 같았다면 빠르게 먹었겠지만
이 가게의 전략적 승부에 모임분들은 대응하지 않았습니다.

과감하게 본론으로 들어가길 원했는데요~!
문제는
생각보다 할게 많다는점...
고기를 굽거나 곱창을 굽기위한 노동력
문제로 대화는 버벅버벅

그래도~! 첫인원은 5명
그리고 7명 10명
11명 12명 13명 식으로 늘어나는 사람들~!

덕분에 인사를 3번정도 했는데요.
평일이라 급작스레 못오시는 분도 계셨습니다.

적당한 소개는 10~11명 정도 모인 시점에 한번 진행되었습니다~!

오신분들은 2~3년차 웹개발자~! 개발자를 구하시는 블록체인 대표님 그리고 십여년차 자바 개발자님을 비롯해, 7년간 에이젼시를 운영하신 분, 영화관련 일을 하시다가~! 스타트업에 뛰어드신분! 그리고 작은 사업을 하시다가 개발을 배우신분~! 그리고 스타트업을 기획하시는 분, 그리고 뮤지컬을 보는 일과 다양한 일들을 하시는 디자이너님, 늘 다른분의 이야기를 청종하시는 기획자님, 그리고 디자이너님과 친구분이 추가로 오셨는데요~!

이 정도 인원이 되니 그래도 살짝씩은 대화를 섞어볼수 있어서 좋았습니다.

물론 모임이 이번 모임 특성이 곱창을 뽀개는 것이었기 때문에 리필하는 것에 계속 집중했습니다.

그 결과 저희 테이블은 5번의 리필~!
다른 테이블까지 조사는 못했네요~!

이런저런 이야기들을 했지만~!
영화 관련된 이야기들을 많이 듣게 되어 좋았고~!
무엇보다
이번 모임때 수금과 결제를 대신해주신
장원님께 감사의 말씀을 드립니다~!

주말 모임이 쉽지 않은 분들이어서~!
아이키우는 일에 대한 고충이 충분이 전달된 시간이었습니다.

그리고 전 9월 28일 모임 장소 견학을 다녀오는 것으로~!
모임을 끝냈네요~!

이상 곱창팟 모임 후기였습니다~!</textarea>
   </div>
</div> 

</div>



</body>
</html>
