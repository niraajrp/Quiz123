<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/15/2017
  Time: 8:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" type"text/css" href="../css/user-profile.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
          crossorigin="anonymous">
</head>
<body>
<div class="prof-box">
    <img src="images/profile.jpg" class="prof-pic">

    <h1>Niraj Raj Pandey</h1>

    <div class="line-break" style="width: 300px; margin: 0 auto; border-top: 1px solid white;">

    </div><br />
    <p1>
        To become a highly skilled engineer, tackle problems with an open mind and innovative approach &
        dedicate myself in a productive environment which ensures expansion of my technical knowledge
        for the betterment of the society.
    </p1><br />

    <div class="socialmedia-icons">
        <a href="http://www.linkedin.com/in/niraajrp" target="_blank"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
        <a href="http://www.facebook.com/niraajrp" target="_blank"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
        <a href="http://www.instagram.com/niraj.rp" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a><br/>
    </div>

    <ul class="personal-icons">
        <li><i class="fa fa-envelope" style="float: left; font-size:30px"></i><p2>niraajrp@gmail.com</p2></li><br/>
        <li><i class="fa fa-map-marker" style="float: left; font-size:30px"></i><p2>Kathmandu,Nepal</p2></li><br />
        <li><i class="fa fa-phone-square" style="float: left; font-size:30px"></i><p2>9849111797</p2></li><br /><br />
    </ul>
</div>
<div class="edu-details">
    <h2>EDUCATION</h2>
    <!--<div class="line-break" style="width: 600px; margin: 0 auto; border-top: 2px solid white;">-->
    <h3>Bachelor's Degree in Engineering</h3>
    <h4>Institution: Siddaganga Institute of Technology, Bengaluru</h4>
    <h5>Course: Electronics And Communication Engineering</h5>
    <h5>Duration: 09/2012 – 07/2016</h5>
    <h5>CPGA: 8.66</h5><br/>

    <h3>(12th) Pre-Degree</h3>
    <h4>Institution: Kathmandu Model H.S. School, Nepal</h4>
    <h5>Course: Science</h5>
    <h5>Duration: 2010 – 2012</h5>
    <h5>Percentage: 73%</h5><br/>

    <h3>(10th) SLC</h3>
    <h4>Institution: Pushpa Kunja High School, Nepal</h4>
    <h5>Passed Year: 2010</h5>
    <h5>Percentage: 86%</h5><br/>
</div>
<div class="project-details">
    <h2>PROJECTS</h2>
    <!--<div class="line-break" style="width: 600px; margin: 0 auto; border-top: 2px solid white;">-->
    <h3>IoT Based Home Automation System</h3>
    <h4>Duration: 11/2015 – 04/2016</h4>
    <h5>Description: The designed system gives user the ability to control and monitor the electrical appliances connected to
        the system such as door lock, light bulbs, fan, etc from anywhere in the world via internet using android
        app designed for the system. The system also alerts the user whenever intruder or fire is detected in the
        house and the exact time of the event is saved in the cloud.</h5>

    <h3>Attendance Logger</h3>
    <h4>Duration: 02/2015 – 05/2015</h4>
    <h5>Description: Through this system the attendance can be taken and recorded with the entry and exit time in a building
        with the help of RFID card appointed to individual.</h5>
</div>
<div class="certificates">
    <h2>CERTIFICATES</h2>
    <!--<div class="line-break" style="width: 800px; margin: 0 auto; border-top: 2px solid white;">-->
    <h3>IotaCell, Bengaluru (06/2015 – 08/2015)</h3>
    <h5>Description: 6 Weeks Industrial Training under IotaCell on INTERNET OF THINGS (IoT). The training covered basics of IoT such
        as App Development, Data Analytics and transmitting/receiving sensor data using Raspberry-Pi.</h5>

    <h3>Intel and Indian Institute of Science(IISc) (09/2015)</h3>
    <h5>Description: Attended the IoT Hands-on Workshop as a part of the CXC Program 2015 conducted by Intel and Indian Institute
        of Science(IISc)</h5>

    <h3>Deerwalk Institute of Technology, Kathmandu (08/2017 – Present)</h3>
    <h5>Description: Undergoing Java Programming course of 120 credit hours</h5>
</div>
<div class="achive">
    <h2>ACHIEVEMENTS</h2>
    <!--<div class="line-break" style="width: 800px; margin: 0 auto; border-top: 2px solid white;">-->
    <h3>Best Major Project Award (05/2016)</h3>
    <h5>Best Major Project Award for the project entitled - "IoT Based Home Automation System"</h5>
</div>
<div class="interest">
    <h2>INTERESTS</h2>
    <!--<div class="line-break" style="width: 400px; margin: 0 auto; border-top: 2px solid white;">-->
    <h4>Artificial Intelligence</h4>
    <h4>Machine Learning</h4>
    <h4>IoT</h4>
    <h4>Computer Vision</h4>
    <h4>Photography</h4>
    <h4>Travelling</h4>
</div>
<div class="skills">
    <h2>SKILLS</h2>
    <!--<div class="line-break" style="width: 400px; margin: 0 auto; border-top: 2px solid white;">-->
    <h4>Python</h4>
    <h4>C/C++</h4>
    <h4>Raspberry-Pi/Arduino</h4>
</div>
<div class="back">
    <a href="homepage?page=home">Go Back to Homepage</a>
</div>
</body>
</html>