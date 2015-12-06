#! /bin/bash

echo ''
echo '  ______                    _             __   ______            __    '
echo ' /_  __/__  _________ ___  (_)___  ____ _/ /  /_  __/___  ____  / /____'
echo '  / / / _ \/ ___/ __ `__ \/ / __ \/ __ `/ /    / / / __ \/ __ \/ / ___/'
echo ' / / /  __/ /  / / / / / / / / / / /_/ / /    / / / /_/ / /_/ / (__  ) '
echo '/_/  \___/_/  /_/ /_/ /_/_/_/ /_/\__,_/_/    /_/  \____/\____/_/____/  '
echo ''
echo 'for Wordpress: Installer'
echo ''

echo "";

echo "Please enter the project name:"
read PROJECTNAME


echo "Please enter the host name of your server:"
read HOST



echo ""
echo "* Now creating project configuration for $PROJECTNAME"




echo "
##############################################################
# Terminal Tools Configuration for \"$PROJECTNAME\"
# Add environments under \"Evnironments\"
# Adjust the menu under \"Menu\" to your needs
##############################################################
Projectname: \"$PROJECTNAME\"
Environments:
  Live:
    #required
    Host: \"$HOST\"
    Sshuser: \"SSHUSER\"
    Repodir: \"REPODIR\"
    #additional settings
    Domain: \"$HOST\"
    Sshport: \"\"
    Composerpath: \"\" #currently not used
    PhpPath: \"\"
  Dev:
    #add dev site info here
Menu:
  Heading1:
    Title: Local
    Item1:
      Title: Local \"deploy\" (git pull etc.)
      Command: \"ttools/githelpers/lib/git-pull.sh POSTDEPLOYSCRIPTHERE\"
    Item2:
      Title: Overwrite Local Site with Database & Assets from Live Site
      Command: \"ttools/sitesync-core/local/sync-environments.sh Live Local\"
  Heading2:
    Title: Dev Site
    Item1:
      Title: SSH Dev Site
      Command: \"ttools/core/local/ssh.sh Dev\"
    Item2:
      Title: Deploy Dev Site
      Command: \"ttools/githelpers/local/git-pull-remote.sh Dev POSTDEPLOYSCRIPTHERE\"
    Item3:
      Title: Push Database & Assets to Dev Site
      Command: \"ttools/sitesync-core/local/sync-environments.sh Local Dev\"
    Item4:
      Title: Overwrite Dev Site with Database & Assets from Live Site
      Command: \"ttools/sitesync-core/local/sync-environments.sh Live Dev\"      
  Heading3:
    Title: Live Site
    Item1:
      Title: SSH Live Site
      Command: \"ttools/core/local/ssh.sh Live\"
    Item2:
      Title: Deploy Live Site
      Command: \"ttools/githelpers/local/git-pull-remote.sh Live POSTDEPLOYSCRIPTHERE\"
Sitesync:
  FrameworkModule: 'ttools/sitesync-wordpress'

" > ttools/config.yml


echo ""
echo "* Now installing ttools libraries"

#core 
git submodule add git://github.com/titledk/ttools-core.git ttools/core;

#git helpers
git submodule add https://github.com/titledk/ttools-githelpers.git ttools/githelpers

#sitesync core
git submodule add https://github.com/titledk/ttools-sitesync-core.git ttools/sitesync-core

#sitesync wordpress
git submodule add https://github.com/cphcloud/ttools-sitesync-wordpress.git ttools/sitesync-wordpress


echo ""
echo "* Now installing the ttools binary"


##the ttools binary
echo "#!/bin/sh
./ttools/core/lib/ttools.sh \"\$@\"" > tt;
chmod u+x tt;

echo "";
echo "Installation is done. You can now run Terminal Tools by running \"./tt\"";
echo "Remember to commit the changes to your repository."


echo ""




read -p "Do you want to go ahead installing Wordpress now (NOT YET IMPLEMENTED)? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  ./ttools/wordpress/install/install-wordpress.sh;
else
  exit 0
fi


