<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.weatherBean"%>
<%@page import="jakarta.servlet.http.Cookie"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
h1 {
color: magenta;
opacity: 1.5;
}
body {
text-align: center;
}
p {
font-weight: bold;
font-family: Courier;
}
</style>
<title>the weather</title> 
</head>
<body>



	<h1>This is the weather today!</h1>
	<%
	weatherBean wBean = (weatherBean) request.getAttribute("wBean");
	out.print("The weather in " + wBean.getCityStr() + " is now " + wBean.getCloudsStr()+ ". The wind speed is " + wBean.getWindSpeed()+" m\\s. The data "+
	"was updated at: "+ wBean.getTimeOfSearch()+".");
	
	String iconString = "https://openweather.org/img/w/"+wBean.getIcon()+".png";
	out.print("<div><img alt=\"picture of current weather\" src=\"https://openweathermap.org/img/wn/"+wBean.getIcon()+"@2x.png\"></div>");

	Cookie[] cookieList = request.getCookies();
	if(cookieList == null)
	{
		out.print("<p>This is the first time you made a search.</p>");
		out.print("<p>No previous searches were found!</p>");
	}else
	{
		for (int i = 0; i < cookieList.length; i++) 
		{
			if(cookieList[i].getName().equals("JSESSIONID") && cookieList.length < 2)
			{
				out.print("<p>This is the first time you made a search.</p>");
				out.print("<p>No previous searches were found!</p>");
			}
			out.print("<p>"+cookieList[i].getName()+" of previous search: "+cookieList[i].getValue()+"</p>");
		}
	}
	%>

	
	



</body>
</html>