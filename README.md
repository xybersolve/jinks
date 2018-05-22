# jinks

> Script to help start (choose version), stop, backup & restore local Jenkins

### Expectations
Script expects a few directories to be in place, but these can be changed in
`jinks.conf.sh` to suit requirements.

### Purpose
Provides some functionality around Jenkins configuration and instantiation.
Targets war and dockerized Jenkins installs.



### Syntax and Usage, from --help

```sh

$jinks --help
Script: jinks
Purpose:
Usage: jinks [options]

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
  --dryrun|--dry-run: Just show expected source and destinations

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

  Helpers:
    jinks --latest
    jinks --archives
    jinks --versions

  Backup & Restore:
    jinks --backup
    jinks --backup --home=~/jenkins_home
    jinks --restore --file=20180405.tgz
    jinks --restore --home=~/jenkins_home --file=20180405.tgz

  Docker:
    jinks --up
    jinks --restart
    jinks --down
    jinks --clean
    jinks --logs

  Distribute (move files to script bin):
    jinks --dist

```

```sh
Anticipated directory structure

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
