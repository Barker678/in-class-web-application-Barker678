<?php
session_start();
require_once(__DIR__.'/config.include.php');
require_once(__DIR__.'/db.include.php');
require_once(__DIR__.'/../vendor/smarty/smarty/libs/Smarty.class.php');
require_once(__DIR__.'/autoloader.include.php');
$smarty = new Smarty;
$smarty->setTemplateDir(__DIR__.'/../smarty/views')
->setPluginsDir(__DIR__.'/../smarty/plugins')
->setCompileDir(__DIR__.'/../smarty/templates_c')
->setCacheDir(__DIR__.'/../smarty/cache')
->setConfigDir(__DIR__.'/../smarty/configs');