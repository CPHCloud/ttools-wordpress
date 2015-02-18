# Terminal Tools for Wordpress

**UNDER DEVELOPMENT**

Terminal helpers for working with Wordpress, including, but not limited to:

* opinionated 1-line Wordpress project setup - following our best practices
* ssh-based deployment to various environments
* asset & database sync between all environments (also local)



## Installation (& kicking off a new Wordpress project)

1. If you're creating a new project, create a new git repository, and clone it locally
2. Run the following command from your repository root:

		git submodule add git://github.com/cphcloud/ttools-wordpress.git ttools/wordpress; ./ttools/wordpress/install/install-ttools.sh;


**NOTE:** If you're adding this to an existing project, you'll need to have all your site root inside of a `public` directory.



## TODO

* write the wordpress installer
* upgrade wordpress sitesync for "onedir"