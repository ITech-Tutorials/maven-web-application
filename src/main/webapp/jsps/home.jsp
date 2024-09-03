<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ITech Tutorials - Home</title>
    <link rel="icon" href="images/ITechTutorials.png" type="image/png">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            position: relative;
            padding: 20px;
            text-align: center;
            color: white;
            background-image: url('images/banner.png'); /* Use the correct path to the banner image */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        header::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent overlay */
            z-index: 1;
        }
        header h1, header h2 {
            margin: 0;
            z-index: 2;
            position: relative;
        }
        header h1 {
            font-size: 2.5em;
            font-weight: bold;
        }
        header h2 {
            font-size: 1.2em;
            margin-top: 10px;
        }
        main {
            flex: 1;
            padding: 20px;
            text-align: center;
        }
        main h2 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }
        .server-info {
            position: relative;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            margin: 20px auto;
            width: 80%;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }
        .server-info::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('images/DevOps Loop.webp');
            background-size: cover;
            background-position: center;
            opacity: 0.2;
            z-index: -1;
            border-radius: 10px;
        }
        .server-info img {
            width: 100px;
            margin-bottom: 10px;
        }
        .server-info span {
            display: block;
            font-weight: bold;
            color: #333;
        }
        .ip-info {
            margin-top: 20px;
            font-size: 1.2em;
            color: #555;
        }
        .service-link {
            display: inline-block;
            margin: 20px 0;
            padding: 10px 20px;
            background-color: #0073e6;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .service-link:hover {
            background-color: #005bb5;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 0.9em;
        }
        footer a {
            color: #00aaff;
            text-decoration: none;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to ITech Tutorials</h1>
    <h2>Your One-Stop Solution for DevOps Training</h2>
</header>

<main>
    <hr>
    <div class="server-info">
        <img src="images/ITechTutorials.png" alt="ITech Tutorials Logo">
        <span>ITech Tutorials,</span>
        <span>Munnekolala, Marathahalli,</span>
        <span>Bangalore.</span>
        <span><a href="mailto:itechtutorialshub@gmail.com">Mail to ITech Tutorials</a></span>
        
        <div class="ip-info">
            <h2>Server Information</h2>
            <% 
            String ip = "";
            InetAddress inetAddress = InetAddress.getLocalHost();
            ip = inetAddress.getHostAddress();
            out.println("Server Host Name: " + inetAddress.getHostName()); 
            %>
            <br>
            <% out.println("Server IP Address: " + ip); %>
        </div>
    </div>
    <hr>
    <a class="service-link" href="services/employee/getEmployeeDetails">Get Employee Details</a>
</main>

<footer>
    <p>ITech Tutorials</p>
    <p>&copy; 2024 by <a href="http://itechtutorials.com/">ITech Tutorials</a></p>
</footer>

</body>
</html>
