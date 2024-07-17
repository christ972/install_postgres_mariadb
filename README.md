# Installation and Configuration of PostgreSQL and MariaDB

This Bash script installs, initializes, starts, and configures the automatic startup of PostgreSQL and MariaDB on Fedora.

## Prerequisites

- Fedora (or a Fedora-based distribution)
- Sudo access

## Features

- Cleans up previous installations of PostgreSQL and MariaDB
- Installs PostgreSQL and MariaDB
- Initializes PostgreSQL
- Starts PostgreSQL and MariaDB services
- Configures the services to start automatically on system boot
- Checks the status of PostgreSQL and MariaDB services

## Usage Instructions

### Step 1: Clone the Repository

Clone this repository to your local machine or download the `install_databases.sh` script.

```sh
git clone https://github.com/christ972/install_postgres_mariadb.git
cd install_postgres_mariadb
