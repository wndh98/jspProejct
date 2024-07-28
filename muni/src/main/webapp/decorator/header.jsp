<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<input type="checkbox" name="chkbox" id="top_banner_box_cloase"
					value="1"> <label for="top_banner_box_cloase">오늘
					그만보기</label> <i aria-hidden="true" class="icoClose"> </i>
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
					<a href="https://munigrabby.com/myshop/order/list.html">주문조회</a> <a
						href="https://munigrabby.com/product/recent_view_product.html">최근본상품</a>
					<div class="service_center">
						<a class=service_center_var href="#none"
							style="color: rgb(0, 0, 0);">고객센터 <i aria-hidden="true"
							class="icoArrowBottom"></i>
						</a>
						<ul class="service_center_board">
							<li class="announcement"><a
								href="https://munigrabby.com/board/%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD/1/">공지사항</a>
							</li>
							<li class="announcement"><a
								href="https://munigrabby.com/board/%EC%83%81%ED%92%88-%EC%82%AC%EC%9A%A9%ED%9B%84%EA%B8%B0/4/">상품
									사용후기</a></li>
							<li class="announcement"><a
								href="https://munigrabby.com/board/%EC%83%81%ED%92%88-qa/6/">상품
									Q&A</a></li>
							<li class="announcement"><a
								href="https://munigrabby.com/board/%EC%9E%90%EC%9C%A0%EA%B2%8C%EC%8B%9C%ED%8C%90/5/">자유게시판</a>
							</li>
							<li class="announcement"><a
								href="https://munigrabby.com/board/%EA%B0%A4%EB%9F%AC%EB%A6%AC/8/">갤러리</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- MuniGrabby logo, navbar -->
			<div class="top_nav_box">
				<div class="element">
					<a href="/"> <img src="/images/logo.jpg">
					</a>
				</div>
				<!-- 여기까지 logo -->
				<div class="top_mypage">
					<!-- 자바스크립트 자리 -->

					<a href="/" class="Search"> <svg
							xmins="http://www.w3.org/2000/svg" width="24" height="24"
							fill="none" viewBox=" 0 0 24 24" class="icon" role="img">
                                <path stroke="#000"
								stroke-linecap="round" stroke-linejoin="round"
								stroke-width="1.5"
								d="M11 19c4.418 0 8-3.582 8-8s-3.582-8-8-8-8 3.582-8 8 3.582 8 8 8z"></path>
                                <path stroke="#000"
								stroke-linejoin="round" stroke-width="1.5" d="M22 22l-5-5"></path>

                            </svg>
					</a> <a href="https://munigrabby.com/myshop/index.html"> <svg
							xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							fill="none" viewBox="0 0 24 24" class="icon" role="img">
                                <circle cx="11.5" cy="6.5" r="3.75"
								stroke="#000" stroke-width="1.5"></circle>
                                <path stroke="#000" stroke-width="1.5"
								d="M1.78 21.25c.382-4.758 4.364-8.5 9.22-8.5h1c4.856 0 8.838 3.742 9.22 8.5H1.78z">
                                </path>
                            </svg>

					</a> <a href="https://munigrabby.com/order/basket.html"> <svg
							xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							fill="none" viewBox="0 0 24 24" class="icon" role="img">
                                <path fill="#000"
								d="M23.073 22.253l-1.946-14.31c-.04-.38-.368-.667-.758-.667h-3.656v-1.74c0-2.543-2.115-4.613-4.713-4.613-2.599 0-4.713 2.07-4.713 4.613v1.74H3.63c-.39 0-.717.288-.758.667L.927 22.253c-.022.21.047.42.192.577.144.157.35.247.566.247h20.63c.216 0 .421-.09.566-.247.145-.157.214-.366.192-.576zM8.81 5.537c0-1.72 1.431-3.122 3.19-3.122 1.758 0 3.19 1.401 3.19 3.122v1.74H8.81v-1.74zm-6.28 16.05l1.786-12.82h2.97v1.644c0 .412.342.746.762.746.421 0 .762-.334.762-.746V8.767h6.38v1.643c0 .412.34.746.761.746.42 0 .762-.334.762-.746V8.767h2.97l1.786 12.819H2.53z">
                                </path>
                            </svg>
					</a>
				</div>

				<!--top_mypage  -->


				<div class="checkbox">
					<a href="/"> <i class="iconNav"></i>
					</a> <label for="trigger" class="menu_trigger"> <span></span> <span></span>
						<span></span>
					</label>


					<div class="menuBox_on off">
						<div class="menuBox">
							<button type="button" class="btnClose off" id="trigger">
								<i aria-hidden="true" class="icon icoClose"></i>
							</button>
							<div class="menuBox_top">
								<div class="top_category">
									<ul>
										<li class="ctg"><a
											href="https://munigrabby.com/category/Woman/23/">Woman</a>
											<ul class="sub_cate01">

												<li class="top"><a
													href="https://munigrabby.com/category/Top/24/">Top</a>
													<ul class="sub_cate02">
														<li class="noChild"><a
															href="/category/Short-Sleeve/51/">Short Sleeve</a></li>
														<li class="noChild"><a
															href="/category/Long-Sleeve/52/">Long Sleeve</a></li>
													</ul></li>

												<li class="Bottom"><a href="/category/Bottom/46/">Bottom</a>
													<ul class="sub_cate02">
														<li class="noChild1"><a href="/category/Skirt/49/">Skirt</a>
														</li>
														<li class="noChild"><a href="/category/Pants/50/">Pants</a>
														</li>
													</ul></li>
											</ul></li>


										<li class="ctg2"><a href="/category/Man/25/">Man</a>
											<ul class="sub_cate01">
												<li class=""><a href="/category/Top/32/">Top</a>
													<ul class="sub_cate02">
														<li class="noChild3"><a
															href="/category/(%EC%86%8C%EB%B6%84%EB%A5%98)-Short-Sleeve/36/">Short
																Sleeve</a></li>
														<li class="noChild4"><a
															href="/category/(%EC%86%8C%EB%B6%84%EB%A5%98)-Long-Sleeve/37/">Long
																Sleeve</a></li>
													</ul></li>
												<li class=""><a href="/category/Bottom/33/">Bottom</a></li>
											</ul></li>


										<li class=""><a href="/category/Kids/26/">Kids</a></li>


										<li class=""><a href="/category/Accessories/28/">Accessories</a></li>

										</li>

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
								<li><a
									href="https://munigrabby.com/board/%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD/1/">공지사항</a>
								</li>
								<li><a
									href="https://munigrabby.com/board/%EC%83%81%ED%92%88-%EC%82%AC%EC%9A%A9%ED%9B%84%EA%B8%B0/4/">상품
										사용후기</a></li>
								<li><a
									href="https://munigrabby.com/board/%EC%83%81%ED%92%88-qa/6/">상품
										Q&A</a></li>
								<li><a
									href="https://munigrabby.com/board/%EC%9E%90%EC%9C%A0%EA%B2%8C%EC%8B%9C%ED%8C%90/5/">상품
										게시판</a></li>
								<li><a
									href="https://munigrabby.com/board/%EA%B0%A4%EB%9F%AC%EB%A6%AC/8/">갤러리</a>
								</li>
							</ul>
						</div>
					</div>

				</div>
			</div>

		</div>


	</header>
</body>
</html>
