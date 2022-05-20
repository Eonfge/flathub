#!/usr/bin/env bash

clear
flatpak-builder --repo=testing-repo --force-clean build-dir org.electricsheep.ElectricSheep.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify sheep-testing-repo testing-repo
flatpak --user install sheep-testing-repo org.electricsheep.ElectricSheep -y
flatpak --user install sheep-testing-repo org.electricsheep.ElectricSheep.Debug -y
flatpak update -y
