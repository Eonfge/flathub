#!/usr/bin/env bash

clear
flatpak-builder --repo=testing-repo --force-clean build-dir org.gnome.gitlab.grimripper.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify grim-testing-repo testing-repo
flatpak --user install grim-testing-repo org.gnome.gitlab.grimripper -y
flatpak --user install grim-testing-repo org.gnome.gitlab.grimripper.Debug -y
flatpak update -y
