function CheckAddConcert(){
	
	var concertId = document.getElementById("concertId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	
	//아이디 체크
	if(!check(/^K[0-9]{4,11}$/, concertId,
		"[상품 코드]\nK와 숫자를 조합하여 5~12까지 입력하세요.\n첫글자는 반드시 K로 시작하세요."))
		return false;
	
	//상품명 체크
	if(name.value.length < 4 || name.value.length > 30){
		alert("[상품명]\n최소 4자에서 30자까지 입력하세요.");
		name.select();
		name.focus();
		return false;
	}
	
	//상품가격 체크
	if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력하세요.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if(unitPrice.value < 0){
		alert("[가격]\n음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	function check(regExp, e, msg){
		if(regExp.test(e.value))
			return true;
		
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	document.newConcert.submit();
}