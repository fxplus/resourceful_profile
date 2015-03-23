<?php
  // Suggestion: sym link to this from the test root so it isn't deleted by over zealous tidying

  define('MAINTENANCE_MODE', 'install');
  define('DRUPAL_ROOT', getcwd());

  // load the db settings for test site
  // require_once DRUPAL_ROOT . '/sites/default/settings.php';
  $databases = array (
    'default' => 
    array (
      'default' => 
      array (
        'database' => 'resourceful_temp',
        'username' => 'resourceful_temp',
        'password' => '',
        'host' => 'localhost',
        'port' => '',
        'driver' => 'mysql',
        'prefix' => '',
      ),
    ),
  );

  require_once DRUPAL_ROOT . '/includes/install.core.inc';

  $settings = array(
  'parameters' => array(
    'profile' => 'resourceful', // to be replaced with my own profile
    'locale' => 'en',
  ),
  'forms' => array(
    'install_settings_form' => array(
      'driver' => 'mysql',
      'database' => 'resourceful_temp',
      'username' => 'resourceful_temp',
      'password' => '',
    ),
    'install_configure_form' => array(
      'site_name' => 'resourceful test',
      'site_mail' => 'info@site.com',
      'account' => array(
        'name' => 'root',
        'mail' => 'info@site.com',
        'pass' => array(
          'pass1' => '1234',
          'pass2' => '1234',
        ),
      ),
      'update_status_module' => array(
          1 => TRUE,
          2 => TRUE,
        ),
      'clean_url' => TRUE,
    ),
  ),
);

install_drupal($settings);

?>