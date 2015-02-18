#! /bin/bash

echo ''
echo '  ______                    _             __   ______            __    '
echo ' /_  __/__  _________ ___  (_)___  ____ _/ /  /_  __/___  ____  / /____'
echo '  / / / _ \/ ___/ __ `__ \/ / __ \/ __ `/ /    / / / __ \/ __ \/ / ___/'
echo ' / / /  __/ /  / / / / / / / / / / /_/ / /    / / / /_/ / /_/ / (__  ) '
echo '/_/  \___/_/  /_/ /_/ /_/_/_/ /_/\__,_/_/    /_/  \____/\____/_/____/  '
echo ''
echo 'for Wordpress: Project Kickoff'
echo ''

REPODIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../../.. && pwd )";



VARS="$REPODIR/ttools/core/lib/vars.sh"



#evaluate variables:
eval `$VARS`



PROJECT_URLSAFE="${Projectname//./}"
PROJECT_URLSAFE="${PROJECT_URLSAFE//-/}"
PROJECT_URLSAFE="${PROJECT_URLSAFE// /}"




echo "THIS HAS NOT YET BEEN IMPLEMENTED"

echo "check this as a reference on how this _could_ be done: https://github.com/titledk/ttools-silverstripe/blob/master/install/install-silverstripe.sh"

echo ""

echo "These are the defined variables:"
$VARS;
