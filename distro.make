api = 2
core = 7.x

; MAKE file for Resourceful distribution (potentially used by Drupal.org packaging script)

; Include the definition for how to build Drupal core directly, including patches:
includes[] = drupal-org-core.make

; Download the resourceful_profile install profile and recursively build all its dependencies:
projects[resourceful_profile][subdir] = "custom"
projects[resourceful_profile][type] = "profile"
projects[resourceful_profile][branch] = "7.x"
projects[resourceful_profile][download][type] = "git"
projects[resourceful_profile][download][url]="git@github.com:fxplus/resourceful_profile.git"