<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>MusicSound</title>
     <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="language" content="en" />
    <link href="~/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    <!--
        var image1 = new Image()
        image1.src = "../images/Music_banner-1.jpg"
        var image2 = new Image()
        image2.src = "../images/Music_banner-2.jpg"
        var image3 = new Image()
        image3.src = "../images/Music_banner-3.jpg"
        var image4 = new Image()
        image4.src = "../images/Music_banner-4.jpg"
    //-->  
    </script>

    <style type="text/css">
   .menu {
    position: absolute;
    top: 380px;
    left: 250px;
    width: 765px;
    height: 44px;
   
}

    ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #EBECE4;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 12px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color:#87CEFA;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    color:white;
    position: absolute;
    background-color: #ECF1EF;
    min-width: 170px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 0;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align:left;
}

.dropdown-content a:hover {background-color:#ECF1EF}

.dropdown:hover .dropdown-content {
    display: block;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div>
    <div id="site_shadow">
     <div id="page">
        <div id="header">
            <table><tr><td style="width:635px; font-family:Monotype Corsiva;"><h1><a href="#">Sound Music </a></h1></td>
            <td style="text-align:right; width:300px; color:White;">
           
                </td></tr></table>
            <form id="search" method="get" action="#">
            
               <!-- <input type="text" class="text" />
                <input type="submit" class="submit" value="Search" />
                -->
            </form>
            
           
        </div>
        <div id="topimg">
         <img src="../images/Music_banner-1.jpg" name="slide" width"1015" height="325"/>
         <script type="text/javascript">
         <!--
             var step = 1
             function slideit() {
                 //if browser does not support the image object, exit.
                 if (!document.images)
                     return
                 document.images.slide.src = eval("images" + step + ".src")
                 if (step < 4)
                     step++
                 else
                     step = 1
                 setTimeout("slideit()", 12000)
             }
             slideit()

         //-->
         
         </script>
        </div>
      
       <div class="menu">
            <ul>
                <li><a href="Home.aspx">HOME </a></li><div>
                 <li class="dropdown">
                            <a href="javascript:void(0)" class="dropbtn">SONGS</a>
                            <div class="dropdown-content">
                              <a href="Beng.aspx">BENGALI</a>
                              <a href="Hindi.aspx">HINDI</a>
                              <a href="eng.aspx">ENGLISH</a>
     
                              </div>
                            </li>
                            </div>
                
                            <li><a href="singer.aspx">SINGER SONGS</a></li>
                            <li><a href="#">ALBAM SONG</a></li>
                
                                        <li><a href="Gallery.aspx">GALLERY</a></li>
                                        <li><a href="../Register.aspx">REGISTRATION</a></li>
                                        <li><a href="../userLog.aspx">LOGIN</a></li>
                
            </ul>
        </div> 
        <div id="main">	
            <div id="sidebar">
            <div class="box">
                <h2>MENU</h2>
                <ul>
                    <li><span>&raquo;</span><a href="Home.aspx">HOME</a></li>
                    <li><span>&raquo;</span><a href="Beng.aspx">BENGALI SONGS</a></li>
                    <li><span>&raquo;</span><a href="Hindi.aspx">HINDI SONGS</a></li>
                    <li><span>&raquo;</span><a href="Eng.aspx">ENGLISH SONGS</a></li>
                    <li><span>&raquo;</span><a href="#">ALBUM SONG</a></li>
                    <li><span>&raquo;</span><a href="Singer.aspx">SINGER</a></li>
                    <li><span>&raquo;</span><a href="Gallery.aspx">GALLERY</a></li>
                    
                   
                </ul>
                <h2>UPDATE SONGS</h2>
                <ul>
                    <li><span>&raquo;</span><a href="#">Movies Songs</a></li>
                    <li><span>&raquo;</span><a href="#">Albam Songs</a></li>
                    <li><span>&raquo;</span><a href="#">Fock Songs</a></li>
                    <li><span>&raquo;</span><a href="#">Stage Show</a></li>
                </ul></div>
                <div class="box">
                <h2>MEMBER</h2>
                <ul> <li><span>&raquo;</span><a href="../Register.aspx">REGISTRATION</a></li>
                    <li><span>&raquo;</span><a href="../userLog.aspx">USER LOGIN</a></li>
                    <li><span>&raquo;</span><a href="../AdLogin.aspx">ADMIN LOGIN</a></li></ul></div>
                <div class="box">
                <h2>Follow</h2>
                <ul>
          <li><a href="#"><img src="../images/icon1.jpg" alt=""></a></li>
          <li><a href="#"><img src="../images/icon2.jpg" alt=""></a></li>
          <li><a href="#"><img src="../images/icon3.jpg" alt=""></a></li></ul>
                </div>
            </div><!-- sidebar -->    	              
            <div id="content">			
                <div class="post"><div>
                    <ul><%SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
                          con.Open();
                          SqlDataAdapter adp = new SqlDataAdapter("select distinct Singer from Singer",con);
                          DataTable dt = new DataTable();
                          adp.Fill(dt);
                          for (int i = 0; i < dt.Rows.Count; i++)
                          {
                              string s = dt.Rows[i][0].ToString();
                              %><li>
                                    <a href="Default2.aspx?q=<%=s %>">
                                    <img src="<%=s %>" style="height:150px; width:120px;" /></a>
                                    
                              </li><%
                          }
                             %></ul>
                   
                    </div>

                </div>
                			              
            </div><!-- content -->                    
            <div class="clearing">&nbsp;</div>   
        </div><!-- main -->
        <div id="footer">
            <p>Copyright &copy; 2018, designed by <a href="http://www.webtemplateocean.com/">College Students</a></p>
        </div>
    </div><!-- page -->
    </div>

       
    </div>
    </form>
</body>
</html>
