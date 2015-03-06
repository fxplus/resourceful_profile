api = 2
core = 7.x

; MAKE file for Resourceful distribution (potentially used by Drupal.org packaging script)

; Include the definition for how to build Drupal core directly, including patches:
includes[] = drupal-org-core.make

; Download the resourceful_profile install profile and recursively build all its dependencies:
projects[resourceful][type] = "profile"
projects[resourceful][branch] = "7.x"
projects[resourceful][download][type] = "git"
projects[resourceful][download][url]="git@github.com:fxplus/resourceful_profile.git"