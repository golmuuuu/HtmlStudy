/*
 *  자바스크립트는 
	javaScript Source file로 만들면 됨 !!!
 */


/*function proc(){
	
}*/
var vres = "";

window.onload = function(){  // -1. body 실행 , 2.window.onload 실행 3. 버튼 누르면 proc실행
	
	// 전역변수로 선언
	vres = document.getElementById('result1');
	// vres를 window.onland로 묶지 않으면 웹페이지가 실행되면서 vres가 먼저 실행되므로 null이 들어가는 오류가 뜸
}
proc = function(){
	today = new Date();
	
	// id=result1인 요소를 검색
//	var vres = document.getElementById('result1');
	// 지역변수 이므로 다른 함수에서는 사용할 수 없다. !!! 함수가 끝나면 변수는 사라짐 
	// 전역변수로 만들면 됨 ~~~~~~~
	
	
	// 출력내용
	var str = today + "<br>"
	str += today.toLocaleString() + "<br>"
	
	vres.innerHTML = str; 
}
function change(){
	// 0~255사이의 색상값을 랜덤으로 발생
	// 10진수 이용할때
	cr = parseInt(Math.random() * 256 );
	cg = parseInt(Math.random() * 256 );
	cb = parseInt(Math.random() * 256 );
	console.log(cr, cg, cb);
//	vres.style.backgroundColor = "rgb(" + cr +", " + cg + ", " + cb + ")";
	// 백틱(물결표시 밑에임) : `rgb(${cr},${cg},${cb})`
	// 색을 표현하는 방법들
//	vres.style.backgroundColor = "rgb(128, 235, 198)";
//	vres.style.backgroundColor = "red";
//	vres.style.backgroundColor = "#fadaf1";
//	vres.style.backgroundColor = "rgb(100%, 45%, 89%)";
	// style태그에서는 background-color이지만
	// 스크립트에서는 backgroundColor 이렇게 -를 빼고 첫글자를 대문자로 표현해서 쓴다.
	
	
	// 16진수를 이용
	cr16 = cr.toString(16); // 16진수로 바꿔주는 메소드
	cg16 = cg.toString(16); 
	cb16 = cb.toString(16); 
	console.log(cr16, cg16, cb16);
	vres.style.backgroundColor = "#" + cr16 + cg16 + cb16;

}
