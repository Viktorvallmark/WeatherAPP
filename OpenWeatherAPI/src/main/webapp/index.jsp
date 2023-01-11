<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
h1 {
text-align: center;
font-weight: bold;
}
body {
background-color: green;
opacity: 0.8;
}
form {
text-align: center;
font-weight: bold;
}
p {
text-align: center;
font-weight: bold;
}
</style>
<title>My weather app using OpenWeather API</title>
</head>
<body>


<h1>App using OpenWeather API</h1>

<p>Enter the city and country code you want to check the weather in!</p>

 <form action="OWservlet" method="get">  
    City:<input type="text" name="city"/><br/>  
    Country:<input type="text" name="country"/><br/>  
    
    <input type="submit" value="Submit"/>  
    </form>  









</body>
</html>