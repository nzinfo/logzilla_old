<?php
// Copyright (c) 2010 LogZilla, LLC, cdukes@cdukes.com
// Last updated on 2010-04-23

//----------------------------------------------------------------------------------------
// This is a simple menu layout for the top menu on the search page
// Basic usage:
// 	<li><a href"link">Menu Item</a></li>
// 
// Or, for submenus, just create a new <ul> and close the first </li> after the submenu, like this:
// 	<li><a href"link">Menu Item</a>
// 		<ul>
// 			<li>Sub Menu Item</li>
// 		</ul>
//  </li>
//----------------------------------------------------------------------------------------
session_start();
?>

<!-- Top Level -->
<li><a href="<?php echo $_SESSION['SITE_URL']?>?page=Main"><img style='position: relative; left: 17%; text-align: center; vertical-align: middle; border: 0 none; width: 67px; height: 19px;' src='images/LogZilla_Letterhead_smoothfont_67x19_transparent.png' alt='Home'/></a></li>

    <!-- BEGIN Top Level with 2nd Level -->
    <li><a href="#">
    <?php 
    $user = ucfirst($_SESSION['username']);
    if (strlen($user) <=6 ) {
        echo "$user's Options";
    } else {
        echo "$user";
    }
    ?></a>
        <ul>
            <?php 
            if ($_SESSION['AUTHTYPE'] != "none") { 
            ?>
            <li><a href="<?php echo $_SESSION['SITE_URL']?>?page=User">User Admin</a></li>
            <?php } ?>
            <?php 
            if ((has_portlet_access($_SESSION['username'], 'Server Settings') == TRUE) || ($_SESSION['AUTHTYPE'] == "none")) { 
            ?>
            <li><a href="<?php echo $_SESSION['SITE_URL']?>?page=Admin">Server Admin</a></li>
            <?php } ?>
            <?php 
            if ((has_portlet_access($_SESSION['username'], 'Portlet Group Permissions') == TRUE) && ($_SESSION['AUTHTYPE'] != "none")) { 
            ?>
            <li><a href="<?php echo $_SESSION['SITE_URL']?>?page=Portlet_Admin">Portlet Admin</a></li>
            <?php } ?>
            <li><a href="#" onclick="reset_layout();return false;">Reset Layout</a></li>
        </ul>
    </li>
    <!-- END Top Level with 2nd Level -->

    <!-- BEGIN Top Level Menu -->
            <li><a href="<?php echo $_SESSION['SITE_URL']?>?page=Charts">MPx Charts</a></li>
    <!-- END Top Level Menu -->

    <!-- BEGIN Top Level with 2nd Level -->
     <li><a href="#">Help</a>
        <ul>
            <!-- BEGIN 2nd Level with 3nd Level -->
            <!--
            <li><a href="#">Local</a>
                <ul>
                    <li><a href="<?php echo $_SESSION['SITE_URL']."userguide.doc";?>">User Manual</a></li>
                </ul>
            </li>
            -->
            <!-- END 2nd Level with 3nd Level -->
            <!-- BEGIN 2nd Level with 3nd Level -->
            <li><a href="#">Online</a>
                <ul>
                    <li><a href="http://nms.gdd.net/index.php/LogZilla_Installation_Guide" target="_blank">Installation Guide</a></li>
                    <li><a href="http://code.google.com/p/php-syslog-ng" target="_blank">Google Code Site</a></li>
                    <li><a href="http://php-syslog-ng.gdd.net/login.php" target="_blank">Demo Site</a></li>
                    <li><a href="http://nms.gdd.net" target="_blank">NMS Wiki</a></li>
                    <li><a href="http://forum.logzilla.info" target="_blank">LogZilla Forum</a></li>
                    <li><a href="http://www.cisco.com/en/US/technologies/collateral/tk869/tk769/white_paper_c11-557812.html" target="_blank">Whitepaper</a></li>
                </ul>
            </li>
            <!-- END 2nd Level with 3nd Level -->
            <!-- BEGIN 2nd Level -->
            <li><a href="<?php echo $_SESSION['SITE_URL']?>?page=Bugs">Bugs/TODO</a></li>
            <li><a href="<?php echo $_SESSION['SITE_URL']?>?page=About">About <?php echo $_SESSION['PROGNAME']?></a></li>
            <!-- END 2nd Level -->
        </ul>
    </li>
    <!-- END Top Level with 2nd Level -->

    <!-- BEGIN Top Level with 2nd Level -->
    <li><a href="#">History</a>
        <ul>
            <!-- BEGIN 2nd Level with 3nd Level -->
            <li><a href="#">Saved Searches</a>
                <ul>
                <span id="search_history"></span>
                </ul>
             </li>
             <li><a href="#">Saved Charts</a>
                <ul>
                 <span id="chart_history"></span>
                </ul>
              </li>
         </ul>
            <!-- END 2nd Level with 3nd Level -->
    <?php 
    if($_SESSION['AUTHTYPE'] != 'none')  { 
    echo "<li><a href=$_SERVER[SITE_URL]?pageId=logout>Logout</a></li>";
    } ?>
    <!-- END Top Level with 2nd Level -->
<!-- BEGIN Sparkline -->
<span class="dynamicsparkline sparkbox">Loading MPS Chart - will update every <?php echo $_SESSION['Q_TIME']?> second(s)</span>
<span class="sparkbox" id="spark_mps"></span>
<!-- END Sparkline -->

