﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 로그인 Modal-->
<div class="modal fade" id="log-in">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">
					<span style="color: #643691;">Spring</span> 로그인
				</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">

				<form action="#" method="post" id="signInForm"
					style="margin-bottom: 0;">
					<table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
						<tr>
							<td style="text-align: left">
								<p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="idCheck"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="userId" id="signInId"
								class="form-control tooltipstered" maxlength="14"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="최대 14자"></td>
						</tr>
						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwCheck"></span></p>
							</td>
						</tr>
												
						<tr>
							<td><input type="password" size="17" maxlength="20" id="signInPw"
								name="userPw" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="최소 8자"></td>
						</tr>
						
						<!-- 자동 로그인 체크박스 -->
						<tr>
							<td><input type="checkbox" id="auto-login" name="autoLogin">자동 로그인</td>
						</tr>
											
						<tr>
							<td style="padding-top: 10px; text-align: center">
								<p><strong>로그인하셔서 더 많은 서비스를 이용하세요~</strong></p>
							</td>
						</tr>
						<tr>
							<td style="width: 100%; text-align: center; colspan: 2;"><input
								type="button" value="로그인" class="btn form-control tooltipstered" id="signIn-btn"
								style="background-color: #643691; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
							</td>
						</tr>
						<tr>
							<td
								style="width: 100%; text-align: center; colspan: 2; margin-top: 24px; padding-top: 12px; border-top: 1px solid #ececec">

								<a class="btn form-control tooltipstered" data-toggle="modal"
								href="#sign-up"
								style="cursor: pointer; margin-top: 0; height: 40px; color: white; background-color: orange; border: 0px solid #388E3C; opacity: 0.8">
									회원가입</a>
							</td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- 회원가입 Modal -->
<div class="modal fade" id="sign-up" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">
					<span style="color: #643691;">Spring</span> 회원 가입
				</h4>
				<button type="button" class="close" data-dismiss="modal">×</button>

			</div>

			<div class="modal-body">

				<form action="#" name="signup" id="signUpForm" method="post"
					style="margin-bottom: 0;">
					<table
						style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
						<tr>
							<td style="text-align: left">
								<p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="idChk"></span></p>
							</td>
								
							
						</tr>
						<tr>
							<td><input type="text" name="userId" id="user_id"
								class="form-control tooltipstered" maxlength="14"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="숫자와 영어로 4-14자">
								</td>
							
						</tr>

						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="password"
								name="userPw" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="영문과 특수문자를 포함한 최소 8자"></td>
						</tr>
						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="password_check"
								name="pw_check" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="비밀번호가 일치해야합니다."></td>
						</tr>

						<tr>
							<td style="text-align: left">
								<p><strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="userName" id="user_name"
								class="form-control tooltipstered" maxlength="6"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="한글로 최대 6자"></td>
						</tr>

						<tr>
							<td style="padding-top: 10px; text-align: center">
								<p><strong>회원가입을 환영합니다~~!</strong></p>
							</td>
						</tr>
						<tr>
							<td style="width: 100%; text-align: center; colspan: 2;"><input
								type="button" value="회원가입" 
								class="btn form-control tooltipstered" id="signup-btn"
								style="background-color: #643691; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
							</td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<script>

	//start jQuery
	$(function() {
		
		//각 입력값들의 유효성 검증을 위한 정규표현식을 변수로 선언.
		const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,14}$/);
		const getPwCheck = RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
		const getNameCheck = RegExp(/^[가-힣]+$/);
		
		//입력값 중 하나라도 만족하지 못한다면 회원가입 처리를 막기 위한 논리형 변수 선언.
		let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
		
		//회원 가입 시 사용자의 입력값들을 검증!
		
		//1. ID 입력값 검증
		$('#user_id').keyup(function() {
			
			if($(this).val() === '') {
				$(this).css('background', 'pink');
				$('#idChk').html('<b style="font-size: 14px; color: red">[아이디는 필수 정보입니다!]</b>');
				chk1 = false;
			}
			//아이디 입력값 유효성 검증 (영문, 숫자로만 4~14글자 허용)
			//정규표현식변수.test('검증하고 싶은 값') -> return boolean type
			//정규표현식에 어긋난 값이면 false, 올바른 값이면 true.
			else if(!getIdCheck.test($(this).val())) {
				$(this).css('background', 'pink');
				$('#idChk').html('<b style="font-size: 14px; color: red">[영문자, 숫자조합 4-14자!]</b>');
				chk1 = false;
			}
			//ID 중복 확인 (비동기 처리)
			//특정 로직의 실행이 끝날 때까지 기다리지 않고 먼저 코드를 실행.(페이지 전환 없이 통신)
			else {
				
				//ID 중복 확인 통신을 위해 사용자의 입력값을 가져오기
				const id = $(this).val();
				
				//ajax 호출.
				//클라이언트에서 서버와 비동기 통신을 진행하게 도와주는 ajax 함수.
				$.ajax({
					type: 'POST', //서버에 전송하는 HTTP 방식
					url: '/user/checkId', //서버 요청 url
					headers: {
						'Content-Type' : 'application/json'
					},
					dataType: 'text', //서버로부터 응답받을 데이터의 형태
					data: id, //서버로 전송할 데이터
					success : function(result) { //매개변수에 통신 성공 시 데이터가 저장됨.
						//서버와 통신 성공 시 실행할 내용.
						console.log('통신 성공!: ' + result);
						if(result === 'available') {
							$('#user_id').css('background', 'aqua');
							$('#idChk').html('<b style="font-size: 14px; color: green">[아이디 사용이 가능합니다!]</b>');
							chk1 = true;
						} else {
							$('#user_id').css('background', 'pink');
							$('#idChk').html('<b style="font-size: 14px; color: red">[아이디가 중복되었습니다!]</b>');
							chk1 = false;
						}
					},
					error: function(status, error) {
						console.log('통신 실패!');
						console.log(status, error);
					}
					
				}); //end ajax (아이디 중복 확인)
			}	
		}); //아이디 검증 끝.
		
		//2. 패스워드 입력값 검증.
		$('#password').keyup(function() {
			
			//비밀번호란 공백 확인.
			if($(this).val() === '') {
				$(this).css('background', 'pink');
				$('#pwChk').html('<b style="font-size: 14px; color: red">[비밀번호는 필수 정보입니다!]</b>');
				chk2 = false;
			}
			//비밀번호 유효성 검사
			else if(!getPwCheck.test($(this).val()) || $(this).val().length < 8) {
				$(this).css('background', 'pink');
				$('#pwChk').html('<b style="font-size: 14px; color: red">[특수문자 포함 8자 이상!]</b>');
				chk2 = false;
			}
			//통과
			else {
				$(this).css('background', 'aqua');
				$('#pwChk').html('<b style="font-size: 14px; color: green">[비밀번호 입력 완료!]</b>');
				chk2 = true;
			}
		}); //비밀번호 검증 끝.
		
		//3. 비밀번호 확인란 검증
		$('#password_check').keyup(function() {
			//비밀번호 확인란 공백 검증
			if($(this).val() === '') {
				$(this).css('background', 'pink');
				$('#pwChk2').html('<b style="font-size: 14px; color: red">[비밀번호 확인은 필수 정보입니다!]</b>');
				chk3 = false;
			}
			//비밀번호 확인란 유효성 검사
			else if($(this).val() !== $('#password').val()) {
				$(this).css('background', 'pink');
				$('#pwChk2').html('<b style="font-size: 14px; color: red">[비밀번호와 일치하지 않습니다!]</b>');
				chk3 = false;
			} else {
				$(this).css('background', 'aqua');
				$('#pwChk2').html('<b style="font-size: 14px; color: green">[비밀번호 확인 완료!]</b>');
				chk3 = true;
			}
		}); //비밀번호 확인 검증 끝.
		
		//4. 이름 입력값 검증
		$('#user_name').keyup(function() {
			//이름값 공백 확인
			if($(this).val() === '') {
				$(this).css('background', 'pink');
				$('#nameChk').html('<b style="font-size: 14px; color: red">[이름은 필수 정보입니다!]</b>');
				chk4 = false;
			}
			//이름값 유효성 검사
			else if(!getNameCheck.test($(this).val())) {
				$(this).css('background', 'pink');
				$('#nameChk').html('<b style="font-size: 14px; color: red">[이름은 한글로만 작성하세요!]</b>');
				chk4 = false;
			} else {
				$(this).css('background', 'aqua');
				$('#nameChk').html('<b style="font-size: 14px; color: green">[이름 입력 완료!]</b>');
				chk4 = true;
			}
			
		}); //이름 입력 검증 끝.
		
		
		
		//사용자가 회원 가입 버튼을 눌렀을 때의 이벤트 처리
		//사용자가 입력하는 4가지 데이터 중 단 하나라도 문제가 있다면
		//회원 가입 처리를 해 주지 말아야 겠죠?
		$('#signup-btn').click(function() {
			
			if(chk1 && chk2 && chk3 && chk4) {
				
				//아이디 정보
				const id = $('#user_id').val();
				//비밀번호 정보
				const pw = $('#password').val();
				//이름 정보
				const name = $('#user_name').val();
				
				//여러 개의 값을 보낼 때는 객체로 포장해서 전송
				//property 이름은 VO 객체의 변수명과 동일하게 (커맨드 객체 사용을 위해)
				const user = {
					'account' : id,
					'password' : pw,
					'name' : name
				}; //아직 자바스크립트 객체 (JSON x)
				
				//비동기 통신 시작!
				$.ajax({
					type: 'POST',
					url: '/user/',
					contentType: 'application/json',
					dataType: 'text',
					//JavaScript 객체를 JSON 문자열로 변환해 주는 메서드
					data: JSON.stringify(user),
					success: function(result) {
						console.log('통신 성공!: ' + result);
						alert('회원가입을 환영합니다.');
						location.href='/';
					},
					error: function() {
						alert('회원 가입 실패~!');
					}
					
				}); // end ajax (회원 가입 처리)
				
			} else { //입력값 4가지 중 하나라도 false라면
				alert('입력 정보를 다시 확인하세요!');
			}
			
		}); // 회원 가입 처리 끝.
		
		
		//////////////////////////////////////////////////////////
		
		//로그인 검증
		//ID 입력값 검증(공백, 정규표현식)
		$('#signInId').keyup(function() {
			if($(this).val() === '') {
				$(this).css('background-color', 'pink');
				$('#idCheck').html('<b style="font-size: 14px; color: red">[아이디는 필수 정보입니다!]</b>');
				chk1 = false;
			} else if(!getIdCheck.test($(this).val())) {
				$(this).css('background-color', 'pink');
				$('#idCheck').html('<b style="font-size: 14px; color: red">[영문, 숫자로 4-14자로 작성!]</b>');
				chk1 = false;
			} else {
				$(this).css('background-color', 'aqua');
				$('#idCheck').html('<b style="font-size: 14px; color: green">[아이디 입력 완료!]</b>');
				chk1 = true;
			}
		}); //아이디 입력값 검증 끝!
		
		//비밀번호 입력값 검증(공백, 정규표현식)
		$('#signInPw').keyup(function() {
			if($(this).val() === '') {
				$(this).css('background-color', 'pink');
				$('#pwCheck').html('<b style="font-size: 14px; color: red">[비밀번호 쓰세요!]</b>');
				chk2 = false;
			} else if(!getPwCheck.test($(this).val())) {
				$(this).css('background-color', 'pink');
				$('#pwCheck').html('<b style="font-size: 14px; color: red">[특수문자 포함 8자 이상!]</b>');
				chk2 = false;
			} else {
				$(this).css('background-color', 'aqua');
				$('#pwCheck').html('<b style="font-size: 14px; color: green">[비밀번호 입력 완료!]</b>');
				chk2 = true;
			}
		}); //비밀번호 입력값 검증 끝!
		
		//로그인 버튼 클릭 이벤트 (ID, 비밀번호 둘 다 올바른 값이어야 이벤트 진행)
		//chk1, chk2를 재활용 해서 사용했습니다.
		//ajax를 이용한 비동기 방식으로 로그인을 처리할 예정입니다.
		//비동기 처리를 안해도 되지만, 연습을 위해서 비동기 처리를 합니다.
		//굳이 비동기 처리가 필요 없는 곳은 남용하지 않아도 됩니다.
		
		$('#signIn-btn').click(function() {
			
			if(chk1 && chk2) {
				
				/*
				아이디, 비밀번호를 가져오셔서 객체로 포장하세요.
				비동기 통신을 진행하여 서버로 객체를 json형태로 전송하세요.
				그리고, console.log()로 서버가 보내온 데이터를 확인하여
				아이디가 없습니다, 비밀번호가 틀렸습니다, 로그인 성공이라는
				메세지를 브라우저의 console창에서 확인하세요.
				서버에서 클라이언트로 데이터 전송은 text로 이루어 질 것이며
				idFail, pwFail, loginSuccess라는 문자열을 리턴할 것입니다.
				전송방식: POST, url: /user/loginCheck
				*/
				
				const id = $('#signInId').val();
				const pw = $('#signInPw').val();
				
				//자동 로그인 체크박스가 체크가 되었는지의 여부
				//is()함수는 상태 여부를 판단하여 논리값을 리턴합니다.
				const autoLogin = $('#auto-login').is(':checked');
				
				const userInfo = {
					"account" : id,
					"password" : pw,
					"autoLogin" : autoLogin
				};
				
				$.ajax({
					type: 'POST',
					url: '/user/loginCheck',
					contentType: 'application/json',
					dataType: 'text',
					data: JSON.stringify(userInfo),
					success: function(data) {
						if(data === 'idFail') {
							//console.log('아이디가 없습니다.');
							$('#signInId').css('background-color', 'pink');
							$('#idCheck').html('<b style="font-size: 14px; color: red">[존재하지 않는 아이디입니다!]</b>');
							$('#signInId').val('');
							$('#signInId').focus(); //커서를 이동시키고, 스크롤도 해당 위치로 이동시키는 함수.
							chk1 = false, chk2 = false;
							
						} else if(data === 'pwFail') {
							//console.log('비밀번호가 틀렸습니다.');
							$('#signInPw').css('background-color', 'pink');
							$('#pwCheck').html('<b style="font-size: 14px; color: red">[비밀번호가 틀렸습니다!]</b>');
							$('#signInPw').val('');
							$('#signInPw').focus();
							chk2 = false;

						} else {
							//console.log('로그인 성공!');
							location.href='/';
						}
					},
					error: function() {
						console.log('통신 실패!');
					}
					
				}); //end ajax
				
			} else {
				alert('입력값을 다시 확인하세요!');
			}
			
		}); //로그인 버튼 클릭 이벤트 처리 끝!
		
		
		
		
	}); //end jQuery

</script>





















