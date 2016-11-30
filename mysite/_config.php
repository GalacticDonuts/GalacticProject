<?php

global $project;
$project = 'mysite';

global $database;
$database = SS_DATABASE_NAME;

require_once 'conf/ConfigureFromEnv.php';

date_default_timezone_set('Pacific/Auckland');