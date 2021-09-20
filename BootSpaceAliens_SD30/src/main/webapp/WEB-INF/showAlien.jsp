<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/styles.css">
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

	<form class="form-style-7" action="update.do" method="post">
	<!-- omg, don't forget the id -->
		<input type="hidden" name="id" value=${spaceAlien.id } ><br><br>
		<ul>
		<li>	
		 <label for="name" >Name:</label><br>
			<input type="text" name="name" value="${spaceAlien.name}"><br><br>
			</li><li>
		 <label for="language">Language:</label><br>
			<input type="text" name="language" value=${spaceAlien.language }><br><br>
			</li><li>
		 <label for="landOfOrigin">Origin:</label><br>
			<input type="text" name="landOfOrigin" value=${spaceAlien.landOfOrigin } ><br><br>
			</li><li>
		 <label for="image">Image:</label><br>
			<img class="alien" src="${spaceAlien.image }"><br><br>
			</li><li>
		 <label for="characteristic">Feature:</label><br>
			<input type="text" name="characteristic" value="${spaceAlien.characteristic }" ><br><br>
			</li>
		</ul>
		
  		<input type="submit" name="action" value="Update">
  		<input type="submit" name="action" value="Home">
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