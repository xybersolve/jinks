# jinks

> Script to help start (choose version), stop, backup & restore local Jenkins

### Expectations
Script expects a few directories to be in place, but these can be changed in
`jinks.conf.sh` to suit requirements.

### Usefulness
This script can useful to move between docker and war implementation of Jenkins.



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

### Syntax and Usage, from --help

```sh

  Script: jinks
  Purpose: Helper script for working with local Jenkins
  Usage: jinks [options]

  Options:
    --help:  help and usage
    --start: Start Jenkins using war file
    --ver: Version of Jenkins to start
    --stop: Kill local Jenkins process
    --backup: Backup Jenkins home directory
    --restore: Restore Jenkins directory
    --archives: View archive files
    --versions: View local war versions
    --home=<jenkins home direcotry>: Directory to backup/restore, default: ~/.jenkins
    --file=<archive filename>: Archive filename (no path information required)
    --dist: Copy files from project to local script bin
    --dryrun|--dry-run: Just show expected source and destinations

  Examples:
    Start:
      ${PROGNAME} --start
      ${PROGNAME} --start --ver=2.114
      ${PROGNAME} --start --ver=2.114 --dryrun
      ${PROGNAME} --stop
      ${PROGNAME} --stop --dryrun

    Backup:
      ${PROGNAME} --backup
      ${PROGNAME} --backup --home=~/jenkins_home

    Restore
      ${PROGNAME} --restore --file=20180405.tgz
      ${PROGNAME} --restore --home=~/jenkins_home --file=20180405.tgz

    Helpers:
      ${PROGNAME} --archives
      ${PROGNAME} --versions

    Distribute (move files to script bin):
      ${PROGNAME} --dist

```

### TODO:
* Download war version files
* Confirmation on --stop


## [License](LICENSE.md)
