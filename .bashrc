[ -z "$PS1" ] && return
HISTCONTROL=ignoreboth
HISTIGNORE="exit:clear"
export EDITOR=nano
export VISUAL=nano
export PATH="~/bin:$PATH"
USERCOLOR="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"
PS1="${USERCOLOR}\u${RESET}@\h:\w \\$ "
alias myip='curl icanhazip.com'

#
# Functions
#

function vscode () {
  /Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron "$1"
}

function mcd () {
  mkdir -p "$1" && cd "$1"
}

# Open archive.org pages for selecting old time radio shows

function otrSunday () {
  open https://www.oldtimeradiodrama.com
  sleep 5
  open https://ia800304.us.archive.org/20/items/OTRR_Gunsmoke_Singles/
  open https://ia800302.us.archive.org/10/items/JackBenny1/
  open https://ia801308.us.archive.org/4/items/Otrr_The_Great_Gildersleeve_Singles/
  open https://ia802205.us.archive.org/35/items/Dragnet2/
  open https://ia802608.us.archive.org/15/items/OTRR_X_Minus_One_Singles/
  open https://ia601302.us.archive.org/16/items/OTRR_Suspense_Singles_By_Year_1947/
}

function otrSaturday () {
  open https://www.oldtimeradiodrama.com
  sleep 5
  open https://ia800306.us.archive.org/26/items/HaveGunWillTravel_543/
  open https://ia800705.us.archive.org/27/items/Father_Knows_Best/
  open https://ia800204.us.archive.org/13/items/Our_Miss_Brooks_190_Episodes/
  open https://ia800205.us.archive.org/17/items/OTRR_Richard_Diamond_Private_Detective_Singles/
  open https://ia800202.us.archive.org/16/items/NbcsRadioCityPlayhouse/
  open https://ia800802.us.archive.org/1/items/1985TheStoryOfTHESHADOWRadioDocumentary_201708/
  open https://ia802508.us.archive.org/31/items/OTRR_Dimension_X_Singles/
  open https://ia800700.us.archive.org/29/items/OTRR_Inner_Sanctum_Mysteries_Singles/
}

#
# Aliases
#

alias ..='cd ..'
alias myip='curl icanhazip.com'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash



