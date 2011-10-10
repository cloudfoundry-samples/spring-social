<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Sign In</title>
	</head>
	<body>
		<form action="<c:url value="/signin/facebook" />" method="POST">
		    <button type="submit">Sign in with Facebook</button>
		    <input type="hidden" name="scope" value="user_likes,user_photos,user_photo_video_tags" />		    
		</form>
	</body>
</html>
