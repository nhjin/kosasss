<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">

// $(document).ready(function(){
// 	$("#td1").click(function(event){
// 		console.log(event.target.id)
// 		$.ajax({
// 			type: "POST",
//                 url: "/test_request",
//                 data: {
//                     foo: tr1
//                 },
// 				dataType : "json",
// 				success:
// 				console.log('확인')
// 		})
// 	})
// });

// function clickGame(){	//이거 일단 되는거 event값 넣으면 잘 받아옴 
// 		//console.log(event.target.id)
// 		$.ajax({
// 			type: "POST",
//                 url: "/test_request",
//                 data: {
//                     foo: tr1
//                 },
// 				dataType : "json",
// 				success:
// 				console.log('확인')
// 		});

// }
// $(document).ready(function(){
//     $("#td1").click(function (event) {
//         $.ajax({
//                 type: "POST",
//                 url: "/test_request",
//                 data: {
//                     foo: tr1
//                 },
//                 dataType: "json",
//                 success: console.log('확인' + event.target.id)
//             });
// })
// }

//onclick을 둘이 동시에 사용하니까 넘어버리는구나 

// document.getElementById('td1').click(function(event){
// 	console.log(event.target.id);

// });
var td;

 function clickGame(event) {
	td =  event.target.id;
	console.log(event.target.id);
    $.ajax({
            type: "POST",
            url: "/test_request",
            data: {
                foo: td
            },
            dataType: "json",
            success:
			console.log('확인')
    })
};


	
</script>

<body>
	<table border="1" width="300" height="300">
		<tr id="tr1">
			<td id= "td0" onclick="clickGame(event)">0</td>
			<td id= "td1">0</td>
			<td id= "td2">0</td>
		</tr>
		<tr id="tr2">
			<td id= "td3">0</td>
			<td id= "td4">0</td>
			<td id= "td5">0</td>
		</tr>
		<tr id="tr3">
			<td id= "td6">0</td>
			<td id= "td7">0</td>
			<td id= "td8">0</td>
		</tr>
	</table>

</body>
</html>