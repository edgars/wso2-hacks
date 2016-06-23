<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Presto || Safe Banking Tips</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet"
	media="screen">


<!--Modifications to Some Class-->
<!--Insert After Main CSS-->
<link href="css/basic.css" rel="stylesheet" media="screen">
<link rel="shortcut icon" href="favicon.ico">
</head>
<body>
	<jsp:include page="header.html" />
	<section>
		<div class="container">

			<div class="row-fluid">



				<div class="container" style="margin-top: 50px;">

					<div class="span1"></div>
					<div class="span10">
						<div class="well">

							<div id="contentLeft">

								<h1 style="color: red;">Safe Banking Tips</h1>


								<p>
									
								</p>
								<p>&nbsp;</p>
								<p>
									Customer awareness and education on Internet banking security
									was a point of emphasis in the guidance published by the FFIEC
									on June 28th of 2011 titled <em>Supplement to
										Authentication in an Internet Banking Environment</em>. Increasing
									customer awareness of effective techniques for mitigating the
									risk of fraud should be a major part of your customer education
									program.
								</p>
								<p>When developing educational material for your online
									banking customers, it’s important to keep in mind both the
									varying amount of technical knowledge and the amount of time an
									average customer will dedicate to reviewing the information.
									The majority of your customers are unlikely to spend hours of
									their time reading through educational materials containing
									technically detailed descriptions of common attacks and
									techniques to avoid them. Providing simple and
									easy-to-understand security tips can be an effective
									alternative to detailed security information filled with
									information security jargon.</p>
								<p>The following sections outline common security tips that
									could be included in your bank’s online banking customer
									education material. The tips provided below are not exhaustive,
									but they should provide a good starting point.</p>
								<h2 style="color: green;">General PC Security</h2>
								<ul>
									<li><strong>Update your software frequently</strong> to
										ensure you have the latest security patches. This includes
										your computer’s operating system and other installed software
										(e.g. Web Browsers, Adobe Flash Player, Adobe Reader, Java,
										Microsoft Office, etc.).</li>
									<li><strong>Automate software updates</strong>, to when
										the software supports it, to ensure updates are not
										overlooked.</li>
									<li><strong>Maintain active and up-to-date
											antivirus protection</strong> provided by a reputable vendor. Schedule
										regular scans of your computer in addition to real-time
										scanning.</li>
									<li><strong>Update your software frequently</strong> to
										ensure you have the latest security patches. This includes
										your computer’s operating system and other installed software
										(e.g. Web Browsers, Adobe Flash Player, Adobe Reader, Java,
										Microsoft Office, etc.).</li>
									<li><strong>If you suspect your computer is
											infected with malware</strong>, discontinue using it for banking,
										shopping, or other activitiesinvolving sensitive information.
										Use security software and/or professional help to find and
										remove malware.</li>
									<li><strong>Use firewalls</strong> on your local network
										to add another layer of protection for all the devices that
										connect through the firewall (e.g. PCs, smartphones, and
										tablets).</li>
									<li><strong>Require a password to gain access.</strong>
										Log off or lock your computer when not in use.</li>
									<li><strong>Use a cable lock to physically secure
											laptops</strong> when these devices are stored in an untrusted
										location.</li>
								</ul>

								<h2 style="color: green;">General Online Security</h2>
								<ul>
									<li><strong>Never click on suspicious links</strong> in
										emails, tweets, posts, or online advertising. Links can take
										you to a different website than their labels indicate. Typing
										an address in your browser instead of clicking a link in an
										email is a safer alternative.</li>
									<li><strong>Only give sensitive information to
											websites using encryption</strong> so your information is protected as
										it travels across the Internet. Verify the web address begins
										with “https://” (the “s” is for secure) rather than just
										“http://.” Some browsers also display a closed padlock.</li>
									<li><strong>Do not trust sites with certificate
											warnings or errors.</strong> These messages could be caused by your
										connection being intercepted or the web server misrepresenting
										its identity.</li>
									<li><strong>Avoid using public computers or
											public wireless access points</strong> for online banking and other
										activities involving sensitive information when possible.</li>
									<li><strong>Always “sign out” or “log off”</strong> of
										password protected websites when finished to prevent
										unauthorized access. Simply closing the browser window may not
										actually end your session.</li>
									<li><strong>Be cautious of unsolicited phone
											calls, emails, or texts</strong> directing you to a website or
										requesting sensitive information.</li>
								</ul>
								<h2 style="color: green;">Password Best Practices</h2>
								<ul>
									<li><strong>Create a unique password for all the
											different systems you use.</strong> If you don’t, then one breach
										leaves all your accounts vulnerable.</li>
									<li><strong>Never share your password over the
											phone, in texts, by email, or in person.</strong> If you are asked for
										your password, it’s probably a scam.</li>
									<li><strong>Use unpredictable passwords</strong> with a
										combination of lowercase letters, capital letters, numbers,
										and special characters.</li>
									<li><strong>The longer the password, the tougher
											it is to crack.</strong> Use a password with at least eight
										characters. Every additional character exponentially
										strengthens a password.</li>
									<li><strong>Avoid using obvious passwords</strong> such
										as:
										<ul>
											<li>your name</li>
											<li>your business name</li>
											<li>family member names</li>
											<li>your username</li>
											<li>birthdates</li>
											<li>dictionary words</li>
										</ul></li>
									<li><strong>Choose a password you can remember
											without writing it down. If you do choose to write it down,</strong>
										store it in a secure location.</li>
								</ul>
								<h2 style="color: green;">Institution Specific Information</h2>
								<p>In addition to generic security tips, your bank should
									also include tips specific to your bank’s online banking
									environment. Information concerning multi-factor authentication
									solutions or other controls utilized by the bank would be
									useful to mention.</p>
								<p>Your bank will also need to include contact information
									to be used by customers to notify the bank of suspicious
									account activity or information security-related events. Having
									this information easily accessible can speed up the process of
									your customers notifying the bank of fraud-related events. The
									FFIEC guidance also mentions outlining the circumstances and
									methods with which the institution will contact a customer on
									an unsolicited basis regarding their Internet banking account.
								</p>







							</div>
						</div>

					</div>

					<div class="span1"></div>

				</div>





			</div>



			<jsp:include page="footer.html" />
		</div>
	</section>









	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

</body>
</html>