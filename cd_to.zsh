cd_to () {
  cd ~/ruby/social-media-data-display-tool-for-beauty/
  exec zsh

  case $1 in
    "tdse")
      cd ~/ruby/social-media-data-display-tool-for-beauty/
      exec zsh
      ;;
    "dd")
      cd ~/ruby/CR_RegulationCheck/
      exec zsh
      ;;
    "spice")
      cd ~/ruby/spicebox-inc/
  	  exec zsh
      ;;
    "tiny")
      cd ~/ruby/my-tinycards/
      exec zsh
      ;;
    "tiny_front")
      cd ~/ruby/my-tinycards/angular2/
      exec zsh
      ;;
    *)
      echo "Not found project, please add in bin/cd_to"
      ;;
  esac
}

projects() {
  echo "List all projects"
  readonly projects=(
    'tdse|~/ruby/social-media-data-display-tool-for-beauty/'
    'dd|~/ruby/CR_RegulationCheck/'
    'spice|~/ruby/spicebox-inc/'
    'tiny|~/ruby/my-tinycards/'
    'tiny_front|~/ruby/my-tinycards/angular2/'
    )

  local project path
  for fields in ${projects[@]}
  do
    IFS=$'|' read -r project path <<< "$fields"
    echo_help "cd_to $project" "OR cd $path"
  done
}
