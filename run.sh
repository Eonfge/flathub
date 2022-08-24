#!/usr/bin/env bash

clear
flatpak-builder --repo=testing-repo --force-clean build-dir info.cemu.Cemu.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify cemu-testing-repo testing-repo
flatpak --user install cemu-testing-repo info.cemu.Cemu -y
flatpak --user install cemu-testing-repo info.cemu.Cemu.Debug -y
flatpak update -y

