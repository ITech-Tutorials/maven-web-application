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
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f2f6;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            position: relative;
            padding: 80px 20px;
            text-align: center;
            background-image: url('images/banner.png');
            background-size: cover;
            background-position: center;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border-bottom: 5px solid #00aaff; /* Accent border for better visual appeal */
        }

        header::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Darker semi-transparent overlay */
            z-index: 1;
        }

        header h1, header h2 {
            margin: 0;
            z-index: 2;
            position: relative;
            text-shadow: 3px 3px 12px rgba(0, 0, 0, 0.8); /* More pronounced text shadow */
        }

        header h1 {
            font-size: 3.5em;
            font-weight: bold;
            letter-spacing: 3px;
        }

        header h2 {
            font-size: 1.8em;
            margin-top: 10px;
            letter-spacing: 1.5px;
        }

        main {
            flex: 1;
            padding: 40px 20px;
            text-align: center;
        }

        .server-info {
            position: relative;
            padding: 40px;
            background-color: rgba(255, 255, 255, 0.95);
            margin: 30px auto;
            width: 90%;
            max-width: 800px;
            border-radius: 12px;
            box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.1);
            overflow: hidden; /* Ensure content doesn't overflow the border radius */
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
            opacity: 10;
            z-index: -1;
            border-radius: 12px;
        }

        .server-info img {
            width: 100px;
            margin-bottom: 15px;
        }

        .server-info span {
            display: block;
            font-weight: bold;
            color: #333;
            margin-top: 10px;
        }

        .ip-info {
            margin-top: 30px;
            font-size: 1.2em;
            color: #555;
        }

        .service-link {
            display: inline-block;
            margin: 30px 0;
            padding: 14px 30px;
            background: linear-gradient(135deg, #0073e6, #00aaff);
            color: white;
            text-decoration: none;
            border-radius: 10px;
            transition: background 0.3s ease, transform 0.3s ease;
            font-size: 1.2em;
            font-weight: bold;
        }

        .service-link:hover {
            background: linear-gradient(135deg, #005bb5, #0073e6);
            transform: scale(1.05);
        }

        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 20px 10px;
            font-size: 0.9em;
            border-top: 5px solid #00aaff; /* Accent border for footer */
        }

        footer a {
            color: #00aaff;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
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
