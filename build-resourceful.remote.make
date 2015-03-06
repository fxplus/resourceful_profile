api = 2
core = 7.x

; MAKE file to build from github
; ie self contained, no includes
; Drupal Core
projects[drupal][type] = core
projects[drupal][version] = 7.34

; Download the resourceful_profile install profile and recursively build all its dependencies:
projects[resourceful_profile][subdir] = "custom"
projects[resourceful_profile][type] = "profile"
projects[resourceful_profile][branch] = "7.x"
projects[resourceful_profile][download][type] = "git"
projects[resourceful_profile][download][url]="git@github.com:fxplus/resourceful_profile.git"