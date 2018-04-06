# jackup

> Archive & backup local Jenkins


```sh
  Script: jackup
  Purpose: Backup and restore local Jenkins
  Usage: jackup [options]

Options:
  --help:  help and usage
  --version: show version info
  --home=<jenkins home direcotry>: Directory to backup/restore, default: ~/.jenkins
  --file=<archive filename>: Archive filename (no path information required)
  --dist: Copy files from project to local script bin
  --dryrun|--dry-run: Just show expected source and destinations

Examples:
  Backup:
    ${PROGNAME} --backup
    ${PROGNAME} --backup --home=~/jenkins_home
    ${PROGNAME} --backup --home=~/jenkins_home --dryrun

  Restore
    ${PROGNAME} --restore --file=20180405.tgz
    ${PROGNAME} --restore --file=20180405.tgz --dryrun
    ${PROGNAME} --restore --home=~/jenkins_home --file=20180405.tgz

  Distribute (move files to script bin):
    ${PROGNAME} --dist

```

## [License](LICENSE.md)
