#!/usr/bin/env bash
clear

# Debugging setup starts here
set -eu
flatpak install --system flathub org.freedesktop.Platform//20.08
flatpak install --system flathub org.freedesktop.Sdk//20.08
flatpak-builder --repo=testing-repo --force-clean build-dir org.dhewm3.Dhewm3.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify d3-testing-repo testing-repo
flatpak --user install d3-testing-repo org.dhewm3.Dhewm3 -y
flatpak --user install d3-testing-repo org.dhewm3.Dhewm3.Debug -y
flatpak update -y

