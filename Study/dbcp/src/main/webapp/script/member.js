function loginCheck() {
	if (document.frm.userid.value.length == 0) {
		alert("아이디를 작성해주세요.");
		frm.userid.focus();
		return false;
	} else if (document.frm.pwd.value == "") {
		alert("비밀번호를 작성해주세요.");
		frm.pwd.focus();
		return false;
	}
}

function joinCheck() {
	if (document.frm.name.value.length == 0) {
		alert("이름을 작성해주세요.");
		frm.name.focus();
		return false;
	}	else if (document.frm.userid.value.length == 0) {
		alert("아이디를 작성해주세요.");
		frm.userid.focus();
		return false;
	}	else if (document.frm.reid.value.length == 0) {
		alert("아이디 중복 체크를 하지 않았습니다.");
		frm.pwd.focus();
		return false;
	}	else if (document.frm.pwd.value.length == 0) {
		alert("비밀번호를 작성해주세요.");
		frm.pwd.focus();
		return false;
	}	else if (document.frm.pwd.value != document.frm.pwd_check.value) {
		alert("암호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}
	
	return true;

}

function idCheck() {
	if(document.frm.userid.value == "") {
		alert('아이디를 입력해주세요.');
		frm.userid.focus();
		return false;
	}
	
	var url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_blacnk_1", "toolbar=no, menuba=no, scrollbars=yes, resizable=no, width=450, height=400");
}

function idok(userid) {
	console.log("idok start");
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}