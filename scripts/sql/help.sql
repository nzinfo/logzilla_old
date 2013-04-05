-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: syslog
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (2,'Programs','<b><u>Programs Portlet</b></u><br>The Programs portlet contains a list of all known programs that have reported in to LogZilla.<br><br>\r\n<u>Admin</u><br>\r\nThis content is cached in logzilla and updated every minute.<br>\r\nAll programs are stored in the \"programs\" table with an integer (CRC32) reference back to the main \"logs\" table in order to speed up indexing and query times.'),(3,'Severities','<b><u>Severities Portlet</b></u><br>The Severities portlet contains a list of all severities that have reported in to LogZilla.<br><br>\r\n<u>Admin</u><br>\r\nSeverities are stored in the main \"logs\" table as an integer in order to speed up indexing and query times.<br>\r\nA separate \"severities\" table contains a mapping of integer values (0-7) to the actual severity name.<br>\r\nLogZilla performs a translation from integer to name automatically so that you see only the severity name in the output.\r\n\r\n<br>\r\n<br>\r\n<u>More Information</u><br>\r\nThe log source (such as a router) that generates the syslog message also specifies the severity of the message using single-digit integers from 0 to 7:\r\n<br>\r\n0 - Emergency: System is unusable.<br>\r\n1 - Alert: Action must be taken immediately.<br>\r\n2 - Critical: Critical conditions.<br>\r\n3 - Error: Error conditions.<br>\r\n4 - Warning: Warning conditions.<br>\r\n5 - Notice: Normal but significant condition.<br>\r\n6 - Informational: Informational messages.<br>\r\n7 - Debug: Debug-level messages<br>\r\n<br>\r\nNote that <b>best practice</b> states that network devices should log levels 0-6.<br>\r\nLevel 7 should be used for console/local troubleshooting only.\r\n<br><br>\r\n<a href=\"http://www.cisco.com/en/US/technologies/collateral/tk869/tk769/white_paper_c11-557812.html#wp9000332\" target=_new> Click here </a> to learn more!\r\n'),(4,'Facilities','<b><u>Facilities Portlet</b></u><br>The Facilities portlet contains a list of all facilities that have reported in to LogZilla.<br><br>\r\n<u>Admin</u><br>\r\nFacilities are stored in the main \"logs\" table as an integer in order to speed up indexing and query times.<br>\r\nA separate \"facilities\" table contains a mapping of integer values (0-23) to the actual facility name.<br>\r\nLogZilla performs a translation from integer to name automatically so that you see only the facility name in the output.\r\n<br>\r\n<br>\r\n<u>More Information</u><br>\r\nSyslog messages are broadly categorized on the basis of the sources that generate them such as OS, process or application and are represented in integers ranging from 0-23. <br>\r\nCisco devices use the local facility ranges 16-23 (local0 - local7)<br>\r\nBy default, Cisco IOS devices, CatOS switches, and VPN 3000 Concentrators use facility local7 while Cisco Firewalls use local4.\r\n<br>\r\n<br>\r\n<a href=\"http://www.cisco.com/en/US/technologies/collateral/tk869/tk769/white_paper_c11-557812.html#wp9000325\" target=_new> Click here </a> to learn more!\r\n'),(5,'Search Options','<b><u>Search Options Portlet</u></b><br>\r\nThe Search Options portlet allows various search parameters to be\r\nmodified prior to clicking the \"Search\" or \"Graph\" buttons<br>\r\n<br>\r\nAvailable options include:<br>\r\n<ul>\r\n<li>Sort Order - Specifies the database column in which results\r\nshould be sorted by.<br>\r\n<u>Examples</u>\r\n<ul>\r\n<li>Selecting \"Last Occurrence\" or \"Database ID\" would show the\r\nlast (or first if you set \"Search Order\" to Ascending) X entries (where\r\nX = the limit set in the \"Limit\" dropdown).</li>\r\n<li>Selecting \"Count\" would count the number of entries in the\r\nsearch results.</li>\r\n<ul>\r\n<li>Note that \"Count\" should be selected when using \"Group By\"\r\nand \"Chart Type\". <br>\r\n</li>\r\n<li>The combination of these three settings will yield your Top\r\nX\'s such as Top 10 Hosts, Top 10 Messages, etc.</li>\r\n</ul>\r\n</ul>\r\n</li>\r\n<li>Search Order - Specifies the order (Ascending or Descending) in\r\nwhich to display the results.</li>\r\n<li>Limit - Specifies the maximum results to return.<br>\r\n<u>Notes on Limit Setting</u>\r\n</li>\r\n<ul>\r\n<li>The maximum limit allowed is 5000. <br>\r\n</li>\r\n<li>In Graph mode, the \"Limit\" specifies the number of results to\r\nchart such as \"Top 10\" or \"Top 25\".</li>\r\n</ul>\r\n<li>Group By - This option is used to set a column to group the\r\nresults by and is generally used for Graphs.<br>\r\n<u>Examples</u>\r\n<ul>\r\n<li>To Generate Top 10 hosts, set \"Sort Order\" to \"Count\" and\r\n\"Group By\" to \"Host\".</li>\r\n<li>To Generate Top 10 programs, set \"Sort Order\" to \"Count\" and\r\n\"Group By\" to \"Program\".</li>\r\n<li>Note that the default setting in LogZilla is to generate Top\r\n10 Hosts when the \"Graph\" button is clicked without any search criteria\r\nentered.\r\n</li>\r\n</ul>\r\n</li>\r\n<li>Chart Type - Specifies the type of chart to generate when the\r\n\"Graph\" button is clicked.<br>\r\n<u>Notes</u>\r\n<ul>\r\n<li>Pie charts are the only type of chart that can be drilled\r\ninto (i.e. clicking on a pie piece will perform search on the data for\r\nthat piece).\r\n</li>\r\n</ul>\r\n</li>\r\n<li>Live Scroll (Tail) - If the refresh interval is set, then\r\nclicking \"Search\" will take you to a special page where events are\r\nshown in real time as they are entering the system.<br>\r\n<u>Notes</u>\r\n<ul>\r\n<li>Selecting a refresh rate and clicking \"Graph\" will not do\r\nanything - this is only meant for displaying text results.\r\n</li>\r\n<li>Be aware that the refresh is a \"live\" ajax call in the\r\nbackground - if you set the refresh rate to 1 second and a large limit\r\nof \"500\", then you will be making a query against the database every\r\nsecond for 500 rows. It\'s probably more effective to limit your results\r\nto 10 so that everything will be on a single page.\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>'),(6,'About                     ','<b><u>About Portlet</b></u><br>The About portlet contains information about the locally installed version of LogZilla as well as licensing information.<br><br>\r\n'),(7,'Add User                    ','<b><u>Add User Portlet</b></u><br><br>\r\nTo add a new user, simply enter the user\'s name and password and assign them to a group<br>\r\nNote that when a user is added, the data is inserted using the AJAX backend so no page refresh is needed - the new user name will automatically show up in the other portlets on this page.<br>\r\nAny status messages pertaining to the added user (such as duplicate username, invalid password, etc.) will appear at the bottom right corner of the browser once \"Add user\" is clicked.'),(8,'Bugs                        ','<b><u>Bugs/Todo Portlet</b></u><br><br>\r\nThis portlet provides a list of Known Bugs as well as a \"Todo\" list.<br>\r\n<br>\r\nThe <b>History</b> contains a rather long changelog of everything the project has endured over time.<br>'),(9,'Change Password             ','<b><u>Change Password Portlet</b></u><br><br>\r\nTo change your password, you will need to enter your current password.<br>\r\nIf you do not know your current password, then you will need to ask an administrator to change it for you.\r\n\r\n<u>Admin</u><br>\r\nSelect the username to change passwords for and enter the new password.\r\nOnce \"Change Password\" is clicked, there will be a status message with a return value.'),(10,'Date and Time               ','<b><u>Date and Time Portlet</b></u><br>The Date and Time options allow search (or graph) parameters to be narrowed down by time.<br>\r\nType the date you wish to search on or simply click in the date field for a list of available ranges.<br><br>\r\n<u>Admin</u><br>\r\nCurrent Time display:\r\n<ul>\r\n<li>This portlet includes a current display of time as seen from the server itself.\r\n<li>It is here to help you determine whether or not the events you receive are being marked with the proper timestamps.\r\n<li>It is <b>always</b> a good idea to utilize the <a href=\"http://www.cisco.com/en/US/technologies/collateral/tk869/tk769/white_paper_c11-557812.html#wp9000379\" target=\"_new\">Network Time Protocol (NTP)</a> on your servers.\r\n</ul>'),(11,'Delete User                 ','<b><u>Delete User Portlet</b></u><br><br>\r\nTo remove a user, simply select the user\'s name and click \"Delete User\"<br>\r\nNote that when a user is deleted, the procedure is performed using the AJAX backend so no page refresh is needed - the deleted user will automatically be removed from the other portlets on this page.<br>\r\nAny status messages pertaining to the action will  appear once \"Delete User\" is clicked.'),(12,'Graph Results               ','<b><u>Graph Results</b></u><br><br>\r\nThis page displays the results of any custom searches entered on the main page.<br>\r\nThere are other options on this page that may be useful:<br>\r\n<br>\r\n<b><u>Disk icon</b></u><br>\r\nClicking the small disk-shaped icon at the top right of this portlet will allow you to save the results to the \"Favorites\" menu on the top navigation menu.<br>\r\nThere are several items that will be displayed upon clicking save:<br>\r\n<ul>\r\n<li>Short Name - Enter a short name for your saved chart. This is the name that will appear under the navigation menu once it\'s submitted.\r\n<li>URL - There is no need to modify the URL under normal circumstances, but it is available here for people that may need to alter what gets saved.\r\n<li>If the date range is left at the current setting and you try to recall this chart on a later date, only the data for today will be displayed.\r\n</ul>\r\n'),(13,'Group Assignments           ','<b><u>Group Assignments Portlet</b></u><br><br>\r\nGroup assignments are used to assign users to a group.<br>\r\nSimply select a username on the left and click the group you would like to assign them to.<br>\r\nThe currently assigned group for the user will be automatically selected when you click on their name.<br>\r\nYou may assign multiple users to a single group.'),(14,'Groups                      ','<b><u>Group Portlet</b></u><br><br>\r\nThere are two options in this portlet:\r\n<ul>\r\n<li>Add Group<br>\r\nTo add a group, simply enter a new group name and click the \"Add Group\" button.<br>\r\nOnce a new group is added, all other portlets on this page will automatically refresh with the new group name.<br>\r\n<li>Delete Group<br>\r\nTo delete a group, select the group name from the dropdown menu and click \"Delete Group\".<br>\r\nJust like the add group, all other portlets will automatically update, removing the group.\r\n</ul>'),(15,'Hosts                       ','<table style=\"text-align: left; width: 100%;\" border=\"0\" cellpadding=\"2\"\r\ncellspacing=\"2\">\r\n<tbody>\r\n<tr>\r\n<td style=\"vertical-align: top;\"><b><u><br>\r\nHosts Portlet</u></b><br>\r\nThe hosts portlet is used to refine searches based on one or more hosts.<br>\r\n<br>\r\nThe main portlet shows:<br>\r\n<ul>\r\n<li>The last 10 hosts that have reported in.</li>\r\n<li>How many times that host has reported in.</li>\r\n<li>When that hosts last reported in.</li>\r\n</ul>\r\nYou may select one of the ten hosts listed here or you can click on the\r\nsearch icon (magnifying glass) to bring up a selection grid capable of searching on a wide\r\nvariety of parameters.<br>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: top;\"><b><u>Expanded Hosts Search<br>\r\n</u></b>To expand your search beyond the first 10 hosts, click on\r\nthe search icon (magnifying glass) in the top right corner of the portlet.<br>\r\nThis will bring up an advanced \"grid\" display of all hosts in the\r\nsystem and will allow:<br>\r\n<ul>\r\n<li>Advanced search parameters based on a number of criteria</li>\r\n<li>Export to Excel</li>\r\n<li>Export to PDF</li>\r\n</ul>\r\nAfter selecting one or more hosts, click \"Add Selected Hosts\" and they\r\nwill be included in your search or graph criteria when you click\r\n\"Search\" or \"Graph\" on the main page.<br>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: top;\"><b><u>Admin</u></b><br>\r\nThe list of hosts is cached in db_insert.pl and updated every minute,\r\nif you do not see hosts right away on a new installation, either wait\r\nfor that minute or try restarting your syslog-ng daemon to flush the\r\ncache.<br>If you have RBAC (Role-Based Access Control) enabled, then users will only see hosts that they have permission to see.\r\n<br>\r\nAll hosts are stored in the \"hosts\" table to keep track of unique hosts\r\nand also in the main \"logs\" table to indicate the host that reported\r\nthe message.<br>\r\n<br>\r\nThe default number of hosts shown on the main portlet can be changed in:<br>\r\nAdmin&gt;Server Settings&gt;PORTLET_HOSTS_LIMIT<br>\r\n</td>\r\n<td style=\"vertical-align: top;\"><br>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(16,'Messages                    ','The following special operators and modifiers may be used in\r\nLogZilla:<br>\r\n<br>\r\n<span style=\"font-weight: bold; text-decoration: underline;\">Normal\r\nSearches</span><br>\r\n<ul>\r\n<li>operator OR:</li>\r\n</ul>\r\n<pre>hello | world</pre>\r\n<ul>\r\n<li>operator NOT:</li>\r\n</ul>\r\n<pre>hello -world</pre>\r\n<pre>hello !world</pre>\r\n<ul>\r\n<li>phrase search operator:</li>\r\n</ul>\r\n<pre>\"hello world\"</pre>\r\n<ul>\r\n<li>proximity search operator:</li>\r\n</ul>\r\n<pre>\"hello world\"~10</pre>\r\n<ul>\r\n<li>field-start and field-end modifier:</li>\r\n</ul>\r\n<pre>^hello world$</pre>\r\n<span style=\"text-decoration: underline;\"><span style=\"font-weight:\r\nbold;\">Live Scroll Mode</span></span><span style=\"font-weight:\r\nbold; text-decoration: underline;\"></span> (Main Menu&gt;Search\r\nOptions&gt;Live Scroll)<br>\r\n<br>\r\nNote that the search operators in Live Scroll Mode must NOT contain\r\na space.<br>\r\nCorrect: hello !world<br>\r\nIncorrect: hello ! world<br>\r\n<ul>\r\n<li>operator OR:</li>\r\n</ul>\r\n<pre>hello |world<br></pre>\r\n<ul>\r\n<li>operator AND:</li>\r\n</ul>\r\nhello &amp;world\r\n<ul>\r\n<li>operator NOT:</li>\r\n</ul>\r\n<pre>hello -world</pre>\r\n<pre>hello !world</pre>\r\n<span style=\"font-weight: bold; text-decoration: underline;\">Special</span><br>\r\n<br>\r\nAn @ operator at the beginning may also be used to search<br>\r\nhosts using the same methods outlined above, but preceded<br>\r\nwith @hosts or @notes<br>\r\n<br>\r\nExample:<br>\r\n<pre>@hosts server1 | server2</pre>\r\n<br>\r\n<br>'),(17,'Messages Per Day            ','<b><u>Messages Per Day Portlet</b></u><br><br>\r\nThis chart shows the total messages per day as well as an average message count for all days.<br>\r\n<br>\r\n<b><u>Admin</b></u><br>\r\nThe maximum number of days to store may be modified by setting the value of \"Admin>Settings>CHART_MPD_DAYS\".<br>\r\nThe default is 30 days.\r\n'),(18,'Messages Per Hour           ','<b><u>Messages Per Hour Portlet</b></u><br><br>\r\nThis chart shows the total messages per hour as well as an average message count for the day.<br>\r\nClicking on the [refresh] link will query the database to refresh the numbers on the chart.\r\n'),(19,'Messages Per Minute         ','<b><u>Messages Per Minute Portlet</b></u><br><br>\r\nThis chart shows the total messages per minute as well as an average over the sampled time frame.<br>\r\nClicking on the [refresh] link will query the database to refresh the numbers on the chart.'),(20,'Messages Per Month          ','<b><u>Messages Per Month Portlet</b></u><br><br>\r\nThis chart shows the total messages per month.<br>\r\nClicking on the [refresh] link will query the database to refresh the numbers on the chart.<br>\r\n'),(21,'Messages Per Second         ','<b><u>Messages Per Second Portlet</b></u><br><br>\r\nThis chart shows the total messages per second as well as an average over the sampled time frame.<br>\r\nClicking on the [refresh] link will query the database to refresh the numbers on the chart.'),(22,'Messages Per Week           ','<b><u>Messages Per Week Portlet</b></u><br><br>\r\nThis chart shows the total messages per week.<br>\r\nClicking on the [refresh] link will query the database to refresh the numbers on the chart.<br>\r\n<br>\r\n<b><u>Admin</b></u><br>\r\nBecause some areas of the world observe Mondays as the start of a new week, this parameter can be set in \"Admin>Settings>CHART_SOW\".<br>\r\nThe default is Sunday.\r\n'),(23,'Mnemonics                   ','<table style=\"text-align: left; width: 100%;\" border=\"0\" cellpadding=\"2\"\r\ncellspacing=\"2\">\r\n<tbody>\r\n<tr>\r\n<td style=\"vertical-align: top;\"><b><u><br>\r\nMnemonics Portlet</u></b><br>\r\nThe mnemonics portlet is used to refine searches based on one or more\r\nCisco Mnemonics.<br>\r\nNote that this portlet is only used for Cisco-based devices and will\r\ncontain the word \"None\" when a messages enters the system that doesn\'t\r\ncontain a Cisco mnemonic.<br>\r\n<br>\r\nThe main portlet shows:<br>\r\n<ul>\r\n<li>The last 10 mnemonics that have reported in.</li>\r\n<li>How many times that mnemonics has reported in.</li>\r\n<li>When that mnemonic last reported in.</li>\r\n</ul>\r\nYou may select one of the ten mnemonics listed here or you can click on\r\nthe search icon (magnifying glass)  to bring up a selection grid capable of searching on a wide\r\nvariety of parameters.<br>\r\n<br>\r\nTracking the mnemonics of individual messages allows generation of\r\ncharts such as \"Top 10 Mnemonics\" which will yeild useful information\r\nsuch as a high rate of configuration changes in the network. To\r\ngenerate a Top 10 Mnemonics chart, select \"Charts\" from the top menu\r\nand choose \"Top 10\"&gt;\"Cisco Mnemonics\"<br>\r\n<br>\r\n<br>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: top;\"><b><u>Expanded Mnemonics Search<br>\r\n</u></b>To expand your search beyond the first 10 mnemonics,\r\nclick on\r\nthe search icon (magnifying glass) in the top right corner of the portlet.<br>\r\nThis will bring up an advanced \"grid\" display of all mnemonics in the\r\nsystem and will allow:<br>\r\n<ul>\r\n<li>Advanced search parameters based on a number of criteria</li>\r\n<li>Export to Excel</li>\r\n<li>Export to PDF</li>\r\n</ul>\r\nAfter selecting one or more mnemonics, click \"Add Selected Mnemonic\"\r\nand they\r\nwill be included in your search or graph criteria when you click\r\n\"Search\" or \"Graph\" on the main page.<br>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: top;\"><b><u>About Cisco Mnemonics<br>\r\n<br>\r\n</u></b>Messages generated by most Cisco devices begin with a\r\npercent sign (%) and use the following format:<br>\r\n<i>%FACILITY-SEVERITY-MNEMONIC: Message-text</i><br>\r\nThe mnemonic is a device-specific code that uniquely identifies the\r\nmessage such as \"up\", \"down\", \"changed\", \"config\", etc. <br>\r\n<br>\r\nThe \"facility\" in Cisco mnemonics refer to a Cisco-assigned facility,\r\nthey have nothing to do with the IETF definition of a \"facility\"\r\ninteger (0-23).<br>\r\nExamples of Cisco-mnemonic facilities are:<br>\r\n<ul>\r\n<li>%SYS-0-SYS_LCPERR0 (SYS is the Cisco facility here) </li>\r\n<li>%SYS-5-CONFIG_I: (SYS is the Cisco facility here) </li>\r\n<li>%STANDBY-6-STATECHANGE: (STANDBY is the Cisco facility\r\nhere) </li>\r\n<li>%DOT11-7-AUTH_FAILED: (DOT11 is the Cisco facility here) </li>\r\n</ul>\r\n<a\r\nhref=\"http://www.cisco.com/en/US/technologies/collateral/tk869/tk769/white_paper_c11-557812.html#wp9000346\"\r\ntarget=\"_new\">Click here </a> to learn more about Cisco Mnemonics.<br>\r\n</td>\r\n<td style=\"vertical-align: top;\"><br>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: top;\"><b><u>Admin</u></b><br>\r\nThe list of mnemonics is cached in db_insert.pl and updated every\r\nminute,\r\nif you do not see mnemonics right away on a new installation, either\r\nwait\r\nfor that minute or try restarting your syslog-ng daemon to flush the\r\ncache.<br>\r\n<br>\r\nAll mnemonics are stored in the \"mne\" table to keep track of unique\r\nmnemonics and also in the main \"logs\" table as a crc32 integer to\r\nindicate the mnemonic that reported\r\nthe message.<br>\r\n<br>\r\nThe default number of mnemonics shown on the main portlet can be\r\nchanged in:<br>\r\nAdmin&gt;Server Settings&gt;PORTLET_MNE_LIMIT<br>\r\n</td>\r\n<td style=\"vertical-align: top;\"><br>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(24,'Portlet Group Permissions ','<b><u>Portlet Group Permissions</b></u><br><br>\r\nThe group permissions portlet will allow modification of default group assignments for the \"template\" user or for all current users.<br>\r\nWhen a group assigment is set here and new users are created, they will automatically have access to the portlets assigned in this area.<br>\r\nThe assigned groups for each portlet is currently selected.<br>\r\n<ul>\r\n<li>Template User Group Assignments<br>\r\nTo set the default portlet permissions for new users, simply select the portlet on the left side and select a group to assign it to, then click \"Assign Permissions\".<br>\r\nFor example: To deny access to the \"About\" portlet when a new user is created, click on the \"About\" portlet on teh left and select a group other than \"Users\" such as \"Admins\".<br>\r\nNow, when a new user is created in the system and assigned to the \"Users\" group, they will not be able to see the \"About\" portlet.\r\n<br>\r\n<li>Global Group Reset<br>\r\nSelecting the check box at the top of this portlet will reset group permissions for <strong><font color=\"red\">ALL</font></strong> users except the local admin user.<br>\r\nIt is meant to reset everything to the defaults and should not be used under normal circumstances.<br>\r\n</ul>\r\n<br>\r\nAny portlet listed on the page in <font color=\"red\">red</font> are considered \"admin\" portlets and probably should not have regular users assigned to them.\r\n'),(25,'Portlet User Permissions    ','<b><u>User Permissions</b></u><br><br>\r\nThis portlet is used to assign portlet permission on an individual user basis.<br>\r\nFor example: to deny the user \"bob\" access to the \"About\" portlet, simply select \"bob\" from the dropdown menu and uncheck the \"About\" portlet and click \"Assign Permissions\"<br>\r\nNote that when a user is selected, their current permissions are automatically checked.'),(26,'Search Results              ','<b><u>Search Results</u></b><br>\r\n<br>\r\nThis page displays the results of any searches entered on the main\r\npage.<br>\r\nThere are several options on this page:<br>\r\n<br>\r\n<b><u>Filters</u></b><br>\r\n<ul>\r\n<li><b><u>Post-search filtering</u></b><br>\r\nResults may be post-filtered by typing any value of any column\r\nin the \"Search\" text box located at the top right.</li>\r\n<li><b><u>Filter by time</u></b><br>\r\nThe orange bar&nbsp; (under the words \"Slide below to filter by\r\ntime\") has both a right and left handle that may be dragged to\r\nfilter by time range.<br>\r\n</li>\r\n</ul>\r\n<b><u>Disk icon</u></b><br>\r\nClicking the small disk-shaped icon at the top right of this portlet\r\nwill allow you to save the results to the \"Favorites\" menu on the\r\ntop navigation menu.<br>\r\nThere are several items that will be displayed upon clicking save:<br>\r\n<ul>\r\n<li>Short Name - Enter a short name for your saved chart. This is\r\nthe name that will appear under the navigation menu once it\'s\r\nsubmitted.\r\n</li>\r\n<li>URL - There is no need to modify the URL under normal\r\ncircumstances, but it is available here for people that may need\r\nto alter what gets saved.\r\n</li>\r\n<li>Date: If the date range is left at the current setting and you\r\ntry to recall this page at a later date, only the data for today\r\nwill be displayed.</li>\r\n</ul>'),(32,'RBAC Group Assignment','<span style=\"font-weight: bold; text-decoration: underline;\">RBAC</span><br>\r\n<br>\r\n<span style=\"text-decoration: underline;\">R</span>ole <span\r\nstyle=\"text-decoration: underline;\">B</span>ased <span\r\nstyle=\"text-decoration: underline;\">A</span>ccess <span\r\nstyle=\"text-decoration: underline;\">C</span>ontrol allows you to\r\nspecify which hosts a user is allowed access to.<br>\r\n<ul>\r\n<li>By default, new users will not have access to any host. When\r\nthat user first logs in, they will not see any hosts in the\r\n\"Hosts\" portlet.</li>\r\n<li>By default, all 31 possible groups are generically named \"RBAC\r\nGroup NN\".</li>\r\n<li>You may rename groups to your liking by selecting \"Rename\r\nGroup\" from the Actions menu.</li>\r\n</ul>\r\n<br>\r\n<span style=\"font-weight: bold; text-decoration: underline;\">Usage\r\nExample</span><br>\r\n<br>\r\n<ul>\r\n<li>Action&gt;Rename \"RBAC Group 1\" to \"Datacenter Switches\"</li>\r\n<li>Action&gt;Assign&gt;Users will assign a user to the\r\n\"Datacenter Switches\" group.</li>\r\n<li>Action&gt;Assign&gt;Hosts will assign one or more hosts to the\r\n\"Datacenter Switches\" group.</li>\r\n</ul>\r\n<br>\r\nNext, login as that user and verify that he/she only sees hosts from\r\ndevices in the \"Datacenter Switches\" group.<br>\r\n<br>\r\n<br>\r\n<span style=\"font-weight: bold; text-decoration: underline;\">Grouping\r\nRules</span><br>\r\n<br>\r\n<ul>\r\n<li>Users may belong to groups</li>\r\n<li>Devices may not belong to users</li>\r\n<li>Devices may belong to groups</li>\r\n<li>Users may not belong to users</li>\r\n<li>Groups may not belong to devices</li>\r\n</ul>'),(27,'Server Settings             ','<b><u>Server Settings</b></u><br><br>\r\nThese variables are used to define settings for various globals throughout the system.<br>\r\nAs noted at the top of the portlet, care should be taken when changing these variables.<br>\r\n<br>\r\nInformation about each of the settings is included next to each of the variables.'),(30,'Email Alerts','<b><u>Email Alerts</b></u><br>This portlet allows you to specify a Regular Expression pattern to detect during <b>live</b> incoming syslog message processing.<br />\r\nIn will email the person specified with the regex variables captured.<br />\r\nFor example, take the following message:<br />\r\n<pre>\r\n%LINEPROTO-5-UPDOWN:  Line protocol on Interface FastEthernet1/0/20, changed state to down\r\n</pre>\r\nIf we write a pattern to both match it and capture variables, then we can insert the captured variables back into the email:<br />\r\n<pre>\r\n.*Line protocol on Interface (\\S+) changed state to (\\S+)\r\n</pre>\r\nThis will capture two variables as enclosed by parens \'()\'<br />\r\n1. The interface name<br />\r\n2. The status (up or down)<br />\r\n<br />\r\nNow you can send an email and place the two captured variables anywhere you want using the number of the capture surrounded by brackets, for example:<br />\r\n<pre>\r\nHello Clayton,\r\nIt appears that interface {1} is {2}\r\nHave a nice day!\r\n</pre>\r\n<br /><br />\r\n<u>Admin</u><br />\r\nIn order for any patterns to begin matching on incoming data, you must <font color=\"red\">save the patterns by clicking the small disk icon</font> in the top right corner of the portlet.<br />\r\nThis will prompt you to restart the syslog-ng Daemon.<br />\r\nIf you are concerned about restarting using the web interface, you will need to manually restart in a shell before rule changes can be applied.<br />\r\nTo restart from a shell:<br />\r\n<pre>/etc/init.d/syslog-ng restart</pre>'),(31,'Snare EventId','<table style=\"text-align: left; width: 100%;\" border=\"0\" cellpadding=\"2\"\r\ncellspacing=\"2\">\r\n<tbody>\r\n<tr>\r\n<td style=\"vertical-align: top;\"><b><u><br>\r\nSnare Event ID\'s</u></b><br>\r\nThe Snare portlet is used to refine searches based on one or more Snare Windows Event ID\'s.<br>\r\nNote that this portlet is only useful when receiving Snare Windows Events. <b><a href=\"http://www.intersectalliance.com/projects/SnareWindows/\" target=\"_new\">[link]</a></b>\r\n<br>\r\nThe main portlet shows:<br>\r\n<ul>\r\n<li>The last 10 Windows events that have reported in.</li>\r\n<li>How many times that event has reported in.</li>\r\n<li>When that event last reported in.</li>\r\n</ul>\r\nYou may select one of the ten events listed here or you can click on the\r\nsearch icon (magnifying glass)  to bring up a selection grid capable of searching on a wide\r\nvariety of parameters.<br>\r\n\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(33,'Import','<span style=\"font-weight: bold; text-decoration: underline;\">Imports</span><br>\r\nLogZilla will automatically archive any data that is older then the\r\nRETENTION setting specified in the Admin&gt;Settings section.<br>\r\nAll archived data is gzipped to disk and stored in the exports/\r\ndirectory by default.<br>\r\n<br>\r\n<span style=\"text-decoration: underline; font-weight: bold;\">Example</span><br\r\nstyle=\"text-decoration: underline; font-weight: bold;\">\r\nIf RETENTION (in the admin menu or during install) is set to 7 days,\r\nthe autoarchive function (this runs every night) will dump all data\r\nolder than 7 days to disk into a compressed (gzip) file.<br>\r\nThe archived data may then be accessed and re-imported using this\r\nmenu.<br>\r\nAll imported data will automatically get re-indexed and will be\r\nsearchable for TODAY only. <br>\r\nThis is because the archiver would run again the next day and\r\nre-export that data since it is older than RETENTION days.<br>\r\n<br>\r\nIf you do not see any entries on this screen, it is because you have\r\nno archives available for import at this time.<br>'),(34,'Edit Favorites','<span style=\"font-weight: bold; text-decoration: underline;\">Edit\r\nFavorites</span><br>\r\nThis menu allows editing of users\' saved favorites.<br>');
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-15  9:06:02
