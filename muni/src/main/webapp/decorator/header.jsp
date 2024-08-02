<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>

	<header id="header" class="layout" style="margin-bottom: 50px;">


		<!-- 맨위 광고배너 -->
		<div class="top_banner_box">
			<a href="#none">

				<div class="top_banner_box_inner">
					<div class="top_banner_text"></div>
				</div>
			</a>

			<div class="top_banner_close">
				<input type="checkbox" name="chkbox" id="top_banner_box_cloase" value="1">
				<label for="top_banner_box_cloase">오늘 그만보기</label> <i aria-hidden="true" class="icoClose"> </i>
			</div>
		</div>

		<div class="inner">
			<!-- 상단 메뉴 -->
			<div class="top_menu">
				<div></div>
				<div class="navigation">
					<c:if test="${userId==null}">
						<a href="/user/joinAgree.do">회원가입</a>
						<a href="/user/loginForm.do">로그인</a>
					</c:if>
					<c:if test="${userId!=null}">
						<a href="/user/logout.do">로그아웃${sessionScpoe.userId }</a>
					</c:if>
					<a href="https://munigrabby.com/myshop/order/list.html">주문조회</a>
					<a href="https://munigrabby.com/product/recent_view_product.html">최근본상품</a>
					<div class="service_center">
						<a class=service_center_var href="#none" style="color: rgb(0, 0, 0);">
							고객센터 <i aria-hidden="true" class="icoArrowBottom"></i>
						</a>
						<ul class="service_center_board">
							<li class="announcement"><a href="/board/noticeList.do">공지사항</a></li>
							<li class="announcement"><a href="/board/reviewList.do">상품 사용후기</a></li>
							<li class="announcement"><a href="/board/freeList.do">자유게시판</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- MuniGrabby logo, navbar -->
			<div class="top_nav_box">
				<div class="element">
					<a href="/">
						<img src="/images/logo.jpg">
					</a>
				</div>
				<!-- 여기까지 logo -->
				<div class="top_mypage">
					<!-- 자바스크립트 자리 -->

					<a href="/" class="Search">
						<svg xmins="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox=" 0 0 24 24" class="icon" role="img">
                                <path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M11 19c4.418 0 8-3.582 8-8s-3.582-8-8-8-8 3.582-8 8 3.582 8 8 8z"></path>
                                <path stroke="#000" stroke-linejoin="round" stroke-width="1.5" d="M22 22l-5-5"></path>

                            </svg>
					</a>
					<a href="/user/mypage/orderList.do">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon" role="img">
                                <circle cx="11.5" cy="6.5" r="3.75" stroke="#000" stroke-width="1.5"></circle>
                                <path stroke="#000" stroke-width="1.5" d="M1.78 21.25c.382-4.758 4.364-8.5 9.22-8.5h1c4.856 0 8.838 3.742 9.22 8.5H1.78z">
                                </path>
                            </svg>

					</a>
					<a href="https://munigrabby.com/order/basket.html">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon" role="img">
                                <path fill="#000" d="M23.073 22.253l-1.946-14.31c-.04-.38-.368-.667-.758-.667h-3.656v-1.74c0-2.543-2.115-4.613-4.713-4.613-2.599 0-4.713 2.07-4.713 4.613v1.74H3.63c-.39 0-.717.288-.758.667L.927 22.253c-.022.21.047.42.192.577.144.157.35.247.566.247h20.63c.216 0 .421-.09.566-.247.145-.157.214-.366.192-.576zM8.81 5.537c0-1.72 1.431-3.122 3.19-3.122 1.758 0 3.19 1.401 3.19 3.122v1.74H8.81v-1.74zm-6.28 16.05l1.786-12.82h2.97v1.644c0 .412.342.746.762.746.421 0 .762-.334.762-.746V8.767h6.38v1.643c0 .412.34.746.761.746.42 0 .762-.334.762-.746V8.767h2.97l1.786 12.819H2.53z">
                                </path>
                            </svg>
					</a>
				</div>

				<!--top_mypage  -->


				<div class="checkbox">
					<a href="/">
						<i class="iconNav"></i>
					</a>
					<label for="trigger" class="menu_trigger"> <span></span> <span></span> <span></span>
					</label>


					<div class="menuBox_on off">
						<div class="menuBox">
							<button type="button" class="btnClose off" id="trigger">
								<i aria-hidden="true" class="icon icoClose"></i>
							</button>
							<div class="menuBox_top">
								<div class="top_category">
									<ul>
										<c:forEach items="${cateList }" var="category">
											<c:if test="${category.pcId.length()==2}">
												<li class="ctg"><a
													href="/product/piList.do?pcId=${category.pcId}">${category.pcName}</a>
													<ul class="sub_cate01">
														<c:forEach items="${cateList }" var="category2">
															<c:if
																test="${category2.pcId.length()==4 && category2.pcId.startsWith(category.pcId)}">
																<li class="top"><a
																	href="/product/piList.do?pcId=${category2.pcId}">${category2.pcName }</a>
																	<ul class="sub_cate02">
																		<c:forEach items="${cateList }" var="category3">
																			<c:if
																				test="${category3.pcId.length()==6 && category3.pcId.startsWith(category2.pcId)}">
																				<li class="noChild"><a
																					href="/product/piList.do?pcId=${category3.pcId}">${category3.pcName }</a></li>
																			</c:if>
																		</c:forEach>
																	</ul></li>
															</c:if>
														</c:forEach>
													</ul></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>

						<div class="menuBox_bottom">
							<div class="title">
								Customer Center
								<button type="button" class="icoCategory">"펼침"</button>
							</div>

							<ul class="categoryList">
								<li><a href="/board/noticeList.do">공지사항</a></li>
								<li><a href="/board/reviewList.do">상품 사용후기</a></li>
								<li><a href="/board/freeList.do">자유게시판</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>

		</div>


	</header>
</body>
</html>
