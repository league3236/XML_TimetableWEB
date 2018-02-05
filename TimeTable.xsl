<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
 xmlns:foo="http://www.ksh3236.com/TimeTable" exclude-result-prefixes="foo">
<xsl:template match="/foo:TimeTable">
   <HTML>
   <head>
      <TITLE> 승혁이의 강의 시간표</TITLE>
	  <meta http-equiv="Content-Type" content="text/html" charset="utf-8"/>
	  <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400" rel="stylesheet"/>
	  <script src="js/jquery-1.9.1.min.js"></script>
	  <script src="css/5grid/init.js?use=mobile,desktop"></script>
	  <script src="js/jquery.formerize-1.1.js"></script>
	  <script src="js/init.js"></script>
	  <noscript>
	  <link rel="stylesheet" href="css/5grid/core.css"/>
	  <link rel="stylesheet" href="css/5grid/core-desktop.css"/>
	  <link rel="stylesheet" href="css/5grid/core-1200px.css"/>
	  <link rel="stylesheet" href="css/5grid/core-noscript.css"/>
	  <link rel="stylesheet" href="css/style.css"/>
	  <link rel="stylesheet" href="css/style-desktop.css"/>
	  <link rel="stylesheet" href="css/noscript.css"/>
	  </noscript>
   </head>
<body class="homepage">
<div id="wrapper">
  <nav id="nav"> <a href="#me" class="icon icon-user active"><span>Me</span></a> <a href="#timetable" class="icon icon-folder"><span>timetable</span></a> <a href="#email" class="icon icon-mail"><span>Email Me</span></a> <a href="#" class="icon icon-twitter"><span>Twitter</span></a> </nav>
  <div id="main">
    <article id="me" class="panel">
      <header>
        <h1>SH Kwak</h1>
        <span class="byline">Just an ordinary college student</span> </header>
      <a href="#timetable" class="jumplink pic"> <span class="jumplink arrow icon icon-right"><span>See my timetable</span></span> <!--<img src="images/me.jpg" alt=""/>--> </a> </article>
    <article id="timetable" class="panel">
      <header>
        <h2>TimeTable</h2>
      </header>
      <p> My TimeTable </p>
      	<TABLE align="center" BORDER="0" cellpadding="5" cellspacing="2">
			   <THEAD>
			   <TR>
					  <TH bgcolor="#0365B1"><font color="white">시간</font></TH>
					  <TH bgcolor="#0365B1"><font color="white">월</font></TH>
					  <TH bgcolor="#0365B1"><font color="white">화</font></TH>
					  <TH bgcolor="#0365B1"><font color="white">수</font></TH>
					  <TH bgcolor="#0365B1"><font color="white">목</font></TH>
					  <TH bgcolor="#0365B1"><font color="white">금</font></TH>
			   </TR>
			   </THEAD>
			   <TBODY>
					<xsl:apply-templates select = "/foo:TimeTable/foo:Time">
						<xsl:sort order="ascending" select="foo:시간"/>
					</xsl:apply-templates>
			 </TBODY>
	 </TABLE>

    </article>
    <article id="email" class="panel">
      <header>
        <h2>Email Me</h2>
      </header>
      <form action="#" method="post">
        <div class="5grid">
          <div class="row">
            <div class="6u">
              <input type="text" class="text" name="name" placeholder="Name"/>
            </div>
            <div class="6u">
              <input type="text" class="text" name="email" placeholder="Email"/>
            </div>
          </div>
          <div class="row">
            <div class="12u">
              <input type="text" class="text" name="subject" placeholder="Subject"/>
            </div>
          </div>
          <div class="row">
            <div class="12u">
              <textarea name="message" placeholder="Message"></textarea>
            </div>
          </div>
          <div class="row">
            <div class="12u">
              <input type="submit" class="button" value="Send Message"/>
            </div>
          </div>
        </div>
      </form>
    </article>
  </div>
  <div id="footer">
    <ul class="links">
      <li>Kwak SH</li>
      <li>University : <a href="https://www.skuniv.ac.kr/">S.K</a></li>
      <li>Department : <a href="https://cs.skuniv.ac.kr/">Computer Science</a></li>
    </ul>
  </div>
</div>
</body>
   </HTML>
</xsl:template>

<xsl:template match ="/foo:TimeTable/foo:Time">
      <TR>
      <TD bgcolor="#DEE3EF"><p align="center" style="margin-top:3px;"><xsl:value-of select="foo:시간"/></p></TD>
      <TD bgcolor="#DEE3EF"><p align="center" style="margin-top:3px;"><xsl:value-of select="foo:월/foo:강의이름"/><br/><xsl:value-of select="foo:월/foo:담당교수"/><br/><xsl:value-of select="foo:월/foo:수업교실"/></p></TD>
      <TD bgcolor="#DEE3EF"><p align="center" style="margin-top:3px;"><xsl:value-of select="foo:화/foo:강의이름"/><br/><xsl:value-of select="foo:화/foo:담당교수"/><br/><xsl:value-of select="foo:화/foo:수업교실"/></p></TD>
      <TD bgcolor="#DEE3EF"><p align="center" style="margin-top:3px;"><xsl:value-of select="foo:수/foo:강의이름"/><br/><xsl:value-of select="foo:수/foo:담당교수"/><br/><xsl:value-of select="foo:수/foo:수업교실"/></p></TD>
      <TD bgcolor="#DEE3EF"><p align="center" style="margin-top:3px;"><xsl:value-of select="foo:목/foo:강의이름"/><br/><xsl:value-of select="foo:목/foo:담당교수"/><br/><xsl:value-of select="foo:목/foo:수업교실"/></p></TD>
      <TD bgcolor="#DEE3EF"><p align="center" style="margin-top:3px;"><xsl:value-of select="foo:금/foo:강의이름"/><br/><xsl:value-of select="foo:금/foo:담당교수"/><br/><xsl:value-of select="foo:금/foo:수업교실"/></p></TD>
      </TR>
      
</xsl:template>
</xsl:stylesheet>