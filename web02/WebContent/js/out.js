/**
 * 
 */
function logIn(){
	id2='root';
	id=prompt('아이디 입력')
	if(id==id2){
		alert('로그인 성공')
	}else{
		alert('로그인 실패')
	}
}


function mood() {
	n1 = 100
	n2 = 200
	//두 숫자가 동일한지/동일하지 않은지 판별하여 프린트.
	if (n1 == n2) {
		alert('동일O!')
	} else {
		alert('동일X!')
	}
	//친구의 기분(굿, 별로, 나빠) 입력 
	//나의 기분(굿, 별로, 나빠) 입력 
	//동일한지/동일한지 않은지 판별하여 프린트 
	f1 = prompt('친구 기분어때?')
	f2 = prompt('내 기분어때?')
	if (f1 == f2) {
		alert('우리는 기분도 똑같네!')
	} else {
		alert('우리 오늘 따로 놀자!!')

	}
}