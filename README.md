# Frappe App Development in VSCode Devcontainers

## Getting Started

For this to work, make sure you have Remote-Containers extension installed. If you don't already have it, you can grab it from the extensions marketplace or [here](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-containers).

Clone this repository to your local machine and configure the `.env` file as you please. The `.env` file is a simple file that contains the following variables:

-   BENCH_FOLDER=frappe-bench
-   ERPNEXT_VERSION=version-13
-   FRAPPE_ADMIN_PASSWORD=helloworld
-   FRAPPE_VERSION=version-13
-   MYSQL_INITDB_SKIP_TZINFO=1
-   MYSQL_ROOT_PASSWORD=helloworld
-   MYSQL_USER=root
-   POSTGRES_PASSWORD=helloworld
-   SITE_NAME=hellosite
-   SHELL=/bin/bash

Feel free to change the values as you please. When you are ready, press `Ctrl+Shift+B` and search `Rebuild Without Cache and Reopen in Container`. Select the option and wait till it's all done. The setup should take between 5 - 7 minutes depending on your internet speed.
