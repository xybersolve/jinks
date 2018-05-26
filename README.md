# jinks

> Script provides functionality around Jenkins configuration and instantiation.
Targets both war and docker Jenkins implementations.

### Syntax and Usage, from --help
```sh

jinks --help

Script: jinks
Purpose:
Usage: jinks [-h|--help] [-v|--version]

Options:
  --help:  help and usage
  --start: Start Jenkins using war file

  Jenkins from WAR:
  --ver: Version of Jenkins to start
  --versions: View local war versions
  --home=<jenkins home direcotry>: Directory to backup/restore, default: ~/.jenkins
  --file=<archive filename>: Archive filename (no path information required)
  --latest: Get the latest jenkins war versions, from updates.jenkins-ci.org
  --dist: Copy files from project to local script bin
  --dryrun|--dry-run: Show expected source and destinations, without execution.

  Jenkin in Docker:
  --up: start in docker container
  --down: bring down docker container
  --clean: stop dockler container & delete docker iamge
  --ssh: SSH into container
  --logs: attach to docker container logs

  Backup & Restore jenkins_home:
  --backup: Backup Jenkins home directory
  --restore: Restore Jenkins directory
  --archives: View archive files


Examples:
  WAR:
    jinks --start
    jinks --start --ver=2.114
    jinks --start --ver=2.114 --dryrun
    jinks --stop
    jinks --stop --dryrun

  Docker:
    jinks --up
    jinks --restart
    jinks --down
    jinks --clean
    jinks --logs

  Backup & Restore:
    jinks --backup
    jinks --backup --home=~/jenkins_home
    jinks --restore --file=20180405.tgz
    jinks --restore --home=~/jenkins_home --file=20180405.tgz

  Helpers:
    jinks --latest
    jinks --archives
    jinks --versions

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

### Jinks data directory structure, for backup and war version files. These can
be changed in `jinks.conf.sh`.

```sh

~/jenkins
  - archives
     20180304.tgz
  - war-files
    - 2.111
        jenkins.war
    - 2.112
        jenkins.war

```

### TODO:
* Fix download of war version files
* Confirmation on --stop


## [License](LICENSE.md)
