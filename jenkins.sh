#!/bin/bash
# This is a Bash script to automate the installation of Jenkins on a Linux system.

sudo apt update -y
# Updates the package lists for available updates from configured sources (-y assumes 'yes' to all prompts).

sudo apt upgrade -y
# Upgrades all installed packages to their latest versions (-y assumes 'yes' to all prompts).

sudo apt install openjdk-17-jre -y
# Installs OpenJDK 17 runtime environment, which is required for Jenkins to run.

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
# Downloads the GPG key for the Jenkins repository and saves it to the keyring for package verification.

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
# Adds the Jenkins repository to the system's package sources, using the saved GPG key for verification.

sudo apt-get update -y
# Updates the package lists again, now including the newly added Jenkins repository.

sudo apt-get install jenkins -y
# Installs Jenkins from the repository (-y assumes 'yes' to all prompts).

