<?php

/*
 *
 * Developed by Clayton Dukes <cdukes@cdukes.com>
 * Copyright (c) 2010 LogZilla, LLC
 * All rights reserved.
 * Last updated on 2010-05-09
 *
 * Changelog:
 * 2010-01-13 - created
 *
 */
$basePath = dirname( __FILE__ );
require_once ($basePath . "/../common_funcs.php");
$dbLink = db_connect_syslog(DBADMIN, DBADMINPW);
session_start();

$username = $_SESSION['username']; 
$action = get_input('action');
$urlname = get_input('urlname');
$url = get_input('url');
$spanid = get_input('spanid');

switch ($action) {
    case "save":
        $sql = "INSERT INTO history (userid,url,urlname,spanid,lastupdate) VALUES((SELECT id FROM users WHERE username='$username'), '$url', '$urlname', '$spanid', NOW())";
    $result = perform_query($sql, $dbLink, $_SERVER['PHP_SELF']);
    if ($result) {
        echo "Saved URL as $urlname";
    } else {
        echo "Failed to save";
    }
    break;

    case "get":
        $sql = "SELECT * FROM history WHERE userid=(SELECT id FROM users WHERE spanid='$spanid' AND username='$username') ORDER BY lastupdate DESC";
    $result = perform_query($sql, $dbLink, $_SERVER['PHP_SELF']);
    if($result) {
        while($row = fetch_array($result)) { 
            $line .= "<li><a href='$row[url]'>$row[urlname]</a></li>\n";
        }
        echo $line;
    } else {
        echo "<li><a href='#'>No Favorites Yet</a></li>\n";
    }
    break;
}
?>
