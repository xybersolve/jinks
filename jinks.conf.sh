# local jinks settings
declare -r JINKS_DATA_DIR=~/jenkins
declare -r ARCHIVE_DIR=${JINKS_DATA_DIR}/archives

# user assignable variables
# home directory - i.e, master workspace found within
declare JENKINS_HOME_DIR=~/.jenkins

# docker settings
declare ORG=xybersolve
# oldschool jenkins
#declare JENKINS_IMAGE=jenkinsci/jenkins
#declare JENKINS_CONTAINER=jenkins-oldschool

# original jenkinsci blueocean image
#declare JENKINS_IMAGE=jenkinsci/blueocean
#declare JENKINS_CONTAINER=jenkins-blueocean

# xybersolve jenkins blueocean
declare JENKINS_VOLUME=jenkins_home
declare JENKINS_IMAGE=xybersolve/xs-jenkins-blue:latest
declare JENKINS_CONTAINER=xs-jenkins-blue

# volume
declare JENKINS_HOME_CONTAINER=jenkins_home
declare JENKINS_HOME_IMAGE=xs-jenkins-home
