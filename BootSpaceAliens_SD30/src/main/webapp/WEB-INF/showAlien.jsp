<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">
</head>
<body>


	<form class="form-style-7" action="update.do" method="post">
	
		<input type="hidden" name="id" ><br><br>
	<ul>
	<li>	
	 <label for="name" >Name:</label><br>
		<input type="text" name="name" value="${spaceAlien.name}"><br><br>
		</li><li>
	 <label for="language">Language:</label><br>
		<input type="text" name="language" ><br><br>
		</li><li>
	 <label for="landOfOrigin">Origin:</label><br>
		<input type="text" name="landOfOrigin" ><br><br>
		</li><li>
	 <label for="image">URL:</label><br>
		<input type="text" name="landOfOrigin" ><br><br>
		</li><li>
	 <label for="characteristic">Feature:</label><br>
		<input type="text" name="characteristic" ><br><br>
		</li>
		</ul>
		
		
  		<input type="submit" value="Submit">
	</form>

<script type="text/javascript">
//auto expand textarea
function adjust_textarea(h) {
    h.style.height = "20px";
    h.style.height = (h.scrollHeight)+"px";
}
</script>
</body>
</html>