function inputIdChk() {
	frm.idBtnCheck.value = "idUncheck";	
}

function idCheck(id) {
	frm.idBtnCheck.value = "idCheck";
	if(id == "") {
		alert("아이디를 입력하세요");
		frm.id.focus();
		return;
	}
	url = "idCheck.jsp?id="+id;
	// window 생략가능, url, "원하는 창 이름", "크기"
	window.open(url, "IDCheck","width=300, height=150");
}

function inputCheck() {
	if(frm.idBtnCheck.value != "idCheck") {
		alert("아이디 중복 체크를 해주세요");
		return;
	}
	if(frm.pwd.value == "") {
		alert("비밀번호를 입력하세요");
		frm.pwd.focus();
		return;
	}
	if(frm.pwd.value != frm.repwd.value) {
		alert("비밀번호가 다릅니다");
		frm.repwd.focus();
		return;
	}
	if(frm.name.value == "") {
		alert("이름을 입력하세요");
		frm.name.focus();
		return;
	}
	
	frm.submit();
}