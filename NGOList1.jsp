

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <%@include file="title.html" %>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
        <script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
        <!-- Homepage Only Scripts -->
        <script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
                    timeout: 5000,
                    fx: 'fade',
                    pager: '#fs_pagination',
                    pause: 1,
                    pauseOnPagerHover: 0
                });
            });
        </script>


  <%@page import="java.sql.*" %>

    </head>
    <body>
    <div class="wrapper col1">
            <div id="header">
             <%@include file="upperheader.html" %>
                <div id="topnav">
                    <%@include file="admin.html" %>
                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="featured_slide">
            <div><a href="#"><img src="image/4.jpg" height="300px;" width="960px;" alt="" /></a>

                </div>
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">

             <div class="center-content" style="height: 530px; width: 900px; overflow: auto;">
                    <form  action="sign_Up" method="post" enctype="multipart/form-data">

                        <table width="100%">
                            <h3 class="entry-title"> <a href="NGOLIST.jsp?type=Old">Old Age NGO'S</h3></a>
               <h3 class="entry-title"><a href="NGOLIST.jsp?type=Women">&nbsp;Women NGO'S</h3></a>
              <h3 class="entry-title"><a href="NGOLIST.jsp?type=Orphan">Orphan NGO'S</h3></a>
           
                        </table>
                    </form>
                    </div>



                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->

        <!-- ####################################################################################################### -->
        <%@include file="footer.html" %>
    </body>
</html>