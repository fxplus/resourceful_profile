# Resourceful Profile

Resourceful is intended to be a simple starter for a multiple handbook style site.

The initial build is quite specific (and opinionated), though it should be highly configurable from that point, without too many custom interdependencies.

## Useful shell commands for testing

create a new make file from enabled modules

    drush generate-makefile drupal-org.make --exclude-versions

recreate db

    mysql -u resourceful_temp -e "DROP DATABASE resourceful_temp; CREATE DATABASE resourceful_temp;"

reinstall via install profile (copied or symlinked to site root)

    php unattended-install.php

download all the modules (from site root)

    drush make profiles/resourceful/drupal-org.make --no-core

make an alias for to drop then reinstall

    alias recreate='mysql -u resourceful_temp -e "DROP DATABASE resourceful_temp; CREATE DATABASE resourceful_temp;"; php unattended-install.php'



