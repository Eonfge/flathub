#!/usr/bin/env bash

clear
flatpak-builder --repo=testing-repo --force-clean build-dir com.github.jesseduffield.Lazydocker.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify lazy-testing-repo testing-repo
flatpak --user install lazy-testing-repo com.github.jesseduffield.Lazydocker -y
flatpak update -y

