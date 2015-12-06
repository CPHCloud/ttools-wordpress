# Terminal Tools for Wordpress

Terminal helpers for working with Wordpress, including, but not limited to:

* ssh-based deployment to various environments
* asset & database sync between all environments (also local)
* opinionated 1-line Wordpress project setup - following our best practices (**NOT YET IMPLEMENTED**)


## Installation

1. If you're creating a new project, create a new git repository, and clone it locally
2. Run the following command from your repository root:


		git submodule add git://github.com/cphcloud/ttools-wordpress.git ttools/wordpress; ./ttools/wordpress/install/install-ttools.sh;


**NOTE:** If you're adding this to an existing project, you'll need to have your site root inside of a `public` directory.



## TODO

* write the wordpress installer


## Contribution

For us at CPH Cloud, if you want to contribute to this, and need to push, add the following remote:

	git remote add originp git@github.com:CPHCloud/ttools-wordpress.git

Now you can push by running: `git push originp master`
