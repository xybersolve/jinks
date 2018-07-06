# jinks

> Script provides functionality around Jenkins configuration and instantiation.
Targets both war and docker Jenkins implementations.

### Syntax and Usage, from --help
```sh

jinks --help

Script: jinks
  Purpose: Script to manage Jenkins docker deployment
  Usage: jinks [options]

  Options:
    --help:  help and usage

    Jenkin in Docker:
    --start|--run|--up: instantiate docker container
    --stop|--down: bring down docker container
    --clean: stop docker container & delete docker iamge
    --ssh: SSH into Jenkins container
    --logs: attach to docker container logs

    Volume:
    --setup-vol:
    --commit-vol: Commit jenkins_home data container to an image
    --clean-vol:
    --live-vol: Use the local Jenkins home directory

    Backup & Restore jenkins_home:
    --backup: Backup Jenkins home directory
    --restore: Restore Jenkins directory
    --archives: View archive files

    Maintanence:
    --dist: Copy files from project to local script bin

  Examples:
    jinks --start --|
    jinks --run ----|-- all start Jenkins
    jinks --up -----|
    jinks --up --live-vol

    jinks --stop -----|
    jinks --down -----| -- all stop Jenkins
    jinks --restart
    jinks --clean
    jinks --logs

    Volume:

      jinks --create-vol
      jinks --setup-vol
      jinks --mount-vol
      jinks --commit-vol
      jinks --view-vol

    Backup & Restore:
      jinks --backup
      jinks --restore

    Distribute (move files to script bin):
      jinks --dist
```

### jinks.conf.sh - configuration file
> Configuration file contains setting for both WAR and docker implementations of Jenkins.

```sh

# local jinks settings
declare -r ARCHIVE_DIR=~/jenkins/archives
declare -r JENKINS_WAR_BASE_DIR=~/jenkins/war-files

# user assignable variables
declare JENKINS_HOME_DIR=~/.jenkins
declare JENKINS_VER='2.107'

# docker settings
# oldschool jenkins
#declare JENKINS_IMAGE=jenkinsci/jenkins
#declare JENKINS_CONTAINER=jenkins-oldschool

# original jenkinsci blueocean image
#declare JENKINS_IMAGE=jenkinsci/blueocean
#declare JENKINS_CONTAINER=jenkins-blueocean

# xybersolve jenkins blueocean
declare JENKINS_IMAGE=xybersolve/xs-jenkins-blue:latest
declare JENKINS_CONTAINER=xs-jenkins-blue

```


## [License](LICENSE.md)
