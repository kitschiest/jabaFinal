<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
   String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JABA</title>
<script src='https://code.jquery.com/jquery-3.4.0.js'></script>
<!-- MODAL -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- RESET -->
<link href="<%=ctxPath%>/resources/css/html5_reset.css" rel="stylesheet">
<!-- FONT -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- HEADER CSS -->
<link href="<%=ctxPath%>/resources/css/header.css" rel="stylesheet">
<!-- SECTION CSS -->
<link href="<%=ctxPath%>/resources/css/section.css" rel="stylesheet">
<!-- FOOTER CSS -->
<link href="<%=ctxPath%>/resources/css/footer.css" rel="stylesheet">
<!-- pay CSS -->
<link href="<%=ctxPath%>/resources/css/pay.css" rel="stylesheet">
<!-- 체크박스 라디오버튼 CSS -->
<link href="<%=ctxPath%>/resources/css/icheck-material.css" rel="stylesheet" type="text/css">

<script>
	$(function() {
		$(window).scroll(function() {
			var navbar = $(this).scrollTop();
			console.log(navbar);
			var $header = $('header');
			if (navbar > 0) {
				$header.addClass('activated');
			} else {
				$header.removeClass('activated');
			}
		})
	})
</script>

<script>
	// 모달창 script
	function setDisplay() {
		if ($('input:radio[id=asap]').is(':checked')) {
			$('#later_time').hide();
		} else {
			$('#later_time').show();
		}
	}
</script>
</head>
<body>
	<!-- HEADER -->
	<header>
		<div class="header_container">
			<div class="logo">
				<a href="<%=ctxPath%>/index.jsp"><img src="<%=ctxPath%>/resources/images/clogo1.png" style="width:53px; height:41px;"></a>
			</div>
			<div class="menu"></div>
		</div>

	</header>

	<!-- NAVIGATOR -->
	<nav></nav>

	<!-- SECTION -->
	<section id="home">
		<div class="container" style="text-align: left; padding: 0px 20px;">
			<div class="checkout_title">
				<p style="font-size: 35px; color: white; margin-top: 30px;">
					CHECKOUT</p>
				<p>Your order from ${storeVo.store_name} for Pick up, ASAP</p>
			</div>

			<div class="checkout_info">
				<p>Open until 8:00pm</p>
				<P>Shop 3, 91-93 McIntosh Road, Narraweena New South Wales 2099
					• 82873344</p>
			</div>
		</div>
	</section>


	<!-- SECTION -->
	<section id="info">
		<div class="container">
			<div class="contents">
				<div id="orderSummary">
					<div class="category">
						<p>
							<span class="profile"
								style="text-decoration: none; color: grey; width: 50px;">Order
								Summary</span>
						</p>
					</div>
					<div class="left_part" id="left">
						<form id="main_form" action="#" method="get">
							<table>
								<tr>
									<td><div class="pickup_tab">
											<div class="pickup_details">
												<p>
													<span
														style="float: left; font-weight: bold; font-size: 15px;">PICK
														UP</span> <span style="float: right"> <a data-toggle="modal" href="#exampleModal" style="color: #5b5858;">변경</a></span>
												</p>
											</div>
											<div>
												<p>ASAP (40-55 분 소요 예정)</p>
											</div>
										</div>
										<div class="address_tab" style="margin-top: 10px;">
											<p>
												${storeVo.store_name}<br>${storeVo.store_addr}
											</p>
										</div></td>
								</tr>
							</table>
						</form>
						<div class="personal_info">
							<h2>이름</h2>
							<input type="text" id="personal_name" name="personal_name"
								placeholder="이름"><br>
							<h2 style="padding-top: 5px;">전화번호</h2>
							<input type="text" id="personal_pwd" name="personal_pwd"
								placeholder="010-XXXX-XXXX">
						</div>

						<div class="payment_tab">
							<form id="payment_way" action="#" method="get">
								<table>
									<tr>
										<td>
												<h2>Payment method</h2>
											<div class="payment_method icheck-material-teal">
												<input type="radio" id="payment_method" name="teal"
													value="agree" onchange="setDisplay()">
												<label for="payment_method" style="font-weight: normal;">&nbsp;Pay
													with Card</label>
												<div id="card_section">
													<input type="text" id="card_name" name="card_name"
														placeholder="카드주인이름"><br>
													<div class="border-spacer"></div>
													<input type="text" id="card_pwd" name="card_pwd"
														placeholder="카드 번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MM/YY&nbsp;&nbsp;CVC">
												</div>
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				<div id="checkout-details">
					<div class="right_part" id="right">
						<div class="your_order">
							<div class="listup">
								<div class="category1">
									<div class="order_view">
										<p>주문 내역</p>
									</div>


									<div class="coffee">
										<!-- <p class="item_title">COFFEE</p> -->
										<c:if test="${not empty cartList }">
											<c:forEach items="${cartViewVoList}" var="cartViewVoList" varStatus="s">
												<p>
													<span class="item_total">${cartViewVoList.order_quantity }&nbsp;X</span>
													<span class="item_name">&nbsp;${cartViewVoList.menu_name }</span><span
														class="item_price" style="float: right">&#8361;${cartViewVoList.cart_total_price }</span><br>
												<div class="item_details_group">
													<c:forEach items="${cartViewList[s.count-1]}" var="cartViewList" varStatus="s1">
														<span class="item_details">${cartViewList }</span>
														<span class="item_price" style="float: right"></span>
														<br>
													</c:forEach>
												</div>
											</c:forEach>
										</c:if>
									</div>
								</div>
								<div class="total_price">
									<p class="total_title">
										TOTAL <span class="price_all_total" style="float: right">&#8361;${total_price }</span>
									</p>
								</div>
							</div>
						</div>

						<div class="order_request">
							<h2>요청사항</h2>
							<textarea cols="27" rows="3"
								style="resize: none; padding: 10px; border-color: white; outline-color: white;"
								placeholder="요청사항을 입력해주세요." id="pay_request"></textarea>
						</div>


					</div>
				</div>
				<div class="bottom_part">
					<button type="button" class="btnChk" id="place_order"
						name="place_order">Place Order for Pick Up</button>
				</div>
			</div>
		</div>
	</section>

	<!-- pickup asap 모달창 -->
	<!-- Modal Basic -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-size" role="document">
			<div class="modal-content modal-size">

				<!-- modal-header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>

					<div class="header-icon">
						<button type="button" class="modalBtnChk" id="btn_pickup"
							name="btn_pickup" style="font-size: 15px;">Pick Up</button>
					</div>
				</div>

				<!-- modal-body -->
				<div class="modal-body">
					<h3>Select pick up time</h3>
					<form id="modalForm" action="#" method="get">
						<table>
							<tr>
								<td>
									<div class="asap icheck-material-teal">
										<input type="radio" id="asap" name="teal" value="agree"
											checked="checked" onchange="setDisplay()"> <label
											for="asap" style="font-weight: normal;">&nbsp;&nbsp;ASAP</label>
									</div>
									<div class="later icheck-material-teal">
										<input type="radio" id="later" name="teal" value="denial"
											onchange="setDisplay()" style="font-weight: 15px;"> <label
											for="later" style="font-weight: normal;">&nbsp;&nbsp;LATER</label>
									</div>
								</td>
							</tr>

							<tr id="later_time">
								<td><select name="pickup_time" class="pickup_time">
										<option value="">Select Pick Up Time</option>
										<option value="30">10:00</option>
										<option value="31">10:30</option>
										<option value="31">11:30</option>
										<option value="31">11:30</option>
										<option value="31">12:00</option>
										<option value="31">12:30</option>
								</select></td>
							</tr>
						</table>
					</form>
				</div>
				<!-- modal-footer -->
				<div class="modal-footer">
					<button type="button" class="modalBtnChk" data-dismiss="modal"
						aria-label="Close" id="btnChk_footer"
						name="btnChk_cancel">Cancel</button>
					<button type="button" class="modalBtnChk" id="btnChk_footer"
						name="btnChk_confirm">Confirm</button>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="footer_logo">
					<img src="<%=ctxPath%>/resources/images/clogo1.png" style="width:53px; height:41px;">
				</div>
				<div class="footer_links">
					<ul>
						<li class="links_head">JABA for YOUNG&nbsp;RICH</li>
						<li>WHY JABA?</li>
						<li>PRICING</li>
						<li><a href='#'>PARTNER LOGIN</a></li>
					</ul>
					<ul>
						<li class="links_head">TOP CITIES</li>
						<li>JONGRO</li>
						<li>SEOCHON</li>
						<li>PARIS</li>
					</ul>
					<ul>
						<li class="links_head">SUPPORT</li>
						<li>CUSTOMER HELP</li>
						<li>PARTNER HELP</li>
						<li>SUGGEST STH</li>
					</ul>
					<ul>
						<li class="links_head">COMPANY</li>
						<li>CUSTOMER HELP</li>
						<li>PARTNER HELP</li>
						<li>SUGGEST STH</li>
					</ul>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="footer__disclaimer">
					<strong>JABA connects customers with popular cafe brands.</strong>
					<p>We believe that time is precious. We strive to create
						beautiful technology that helps you save time and make ordering
						easy, both sides of the counter. Order from JABA with the best
						selection of local cafes.</p>
					<div class="legal">
						<div>
							<div class="legal__copyright">© 2020 JABA Technologies Pty
								Ltd</div>
							<ul class="legal__links">
								<li><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="/legal/privacy-policy">Privacy Policy</a></li>
								<li><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="/legal/terms-and-conditions">Terms of Use</a></li>
								<li><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="https://help.bopple.com/" target="_blank"
									rel="noopener noreferrer">Help Centre</a></li>
								<li><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="https://customer-contact-help.bopple.com" target="_blank"
									rel="noopener noreferrer">Leave Feedback</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
	<script>
		// place_order 버튼을 눌렀을때 입력된 값으로 payment 테이블에 데이터 추가
		$("#place_order").click(function(){
			var pay_request = $("#pay_request").val();
			console.log(pay_request);
			 $.ajax({
				  url: "cart/paymentInsert.do",
		             data : {
		            	 pay_request : pay_request
		             },
		             success : function(res){
		                console.log("payment ajax통신 잘됨");
		                alert("결제가 완료되었습니다.");
		                location.href="./index.jsp";
		             }
			}); 
		});
	
	
	</script>
</body>
</html>