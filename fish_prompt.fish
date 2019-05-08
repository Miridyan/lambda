function fish_prompt
  # Cache exit status
  set -l last_status $status

  # Setup colors
  set -l normal (set_color normal)
  set -l blue (set_color blue)
  set -l yellow (set_color -o yellow)
  set -l green (set_color green)
  set -l bpurple (set_color -o purple)
  set -l red (set_color red)
  set -l bcyan (set_color -o cyan)
  set -l bwhite (set_color -o white)

  # Color prompt char red for non-zero exit status
  set -l pcolor $bpurple
  if [ $last_status -ne 0 ]
    set pcolor $bred
  end

  # Prompt
  echo -n $red\[$yellow$USER$green@$blue$hostname $bpurple(prompt_pwd)$red]$normal ""
end
