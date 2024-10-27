#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# https://publish.obsidian.md/monospacementor/Notes/Install+1Password+on+Fedora+Silverblue
curl https://downloads.1password.com/linux/keys/1password.asc | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-1password
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=0\ngpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-1password" > /etc/yum.repos.d/1password.repo'
rpm-ostree install 1password 1password-cli

