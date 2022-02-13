<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<script>
const insVal="Insert Val";
// TEST 1 Start.
const add = (function () {
  let counter = 0;
  console.log('add first counter..=['+counter+']');
  return function () {
	  					counter += 1;
	  					console.log('return counter..=['+counter+']');
  						return counter
  					}
})();
var initCnt=66;
const add2 = (function (initCnt) {
	  let counter = 2;
	  console.log('add2 first initCnt..=['+initCnt+']');
	  return function (getNum) {
		  return counter+=getNum;
	  };
	})(initCnt);
//TEST 1 End.

var myFunction = function() {
	document.getElementById("viewData").innerHTML=add();
	document.getElementById("viewData2").innerHTML=add2(2);
	document.getElementById("viewData3").innerHTML=x(1,2);
	
	let persion = {};
	
	let id = Symbol('id');
	persion[id] ='1234';
	
	console.log('Symbol persion[id]..['+persion[id]+']');
	let vArray=Array.from('12345');
	console.log('String to Array[1]..['+vArray[1]+']');
	
	
	let viewtmpVal="111...[${insVal}]...222";
	document.getElementById("viewData4").innerHTML=viewtmpVal;
}
const x = (x,y) => {
	return x+y;
}

var payLibrary = {
		pay: function() {
			console.log('pay..!');
			return "value Pay";
		},
		requestPay: function(product, cb) {
			for(var i=0; i < 5;i++) {
				var res=this.pay();
				cb(res);
			}
		}		
}

function buyProduct(product) {
	payLibrary.requestPay(product, function(payInfo) {
		console.log('payInfo..['+payInfo+']');
		console.log(payInfo);
	});
}
var someItem="someItem";
buyProduct(someItem);
</script>
<body>
Home Page.!!!  1234  1234 aaaa
<%
	System.out.println("home page.. jsp log..["+request.getAttribute("test")+"]...");
%>
<br/>
<%=request.getAttribute("test")%>
<br/>
<button type="button" onClick="myFunction()">버튼</button>
<br/>
1.
<div id="viewData">
</div>
<br/>-------------------------<br/>
2.
<div id="viewData2">
</div>
<br/>-------------------------<br/>
3.
<div id="viewData3">
</div>
<br/>-------------------------<br/>
4.
<div id="viewData4">
</div>
<br/>-------------------------<br/>
</body>
</html>