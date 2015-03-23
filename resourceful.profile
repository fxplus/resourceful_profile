<?php
/**
 * @file
 * Enables modules and site configuration for a minimal site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function resourceful_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
}

function resourceful_install_tasks() {
  $task['machine_name'] = array(
    'display_name' => st('Human-readable task name'),
    'display' => TRUE,
    'type' => 'normal',
    'run' => INSTALL_TASK_RUN_IF_REACHED,
    'function' => 'function_to_execute',
  );
}
?>