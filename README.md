# proxythroughssh
This is a docker-compose file for creating socks, http and https proxy in your localhost from a ssh connection.

### Usage

Put the neccessary configuration (eg. host ip address, username) in the `.env` file. look in the `.env.example` file to see how to set these configs.

#### TODO:

- move ssh connection to a service
- NP_HTTP_PORT can't be changed :D
- fast ssh connection reload on network disconnect
