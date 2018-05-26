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
