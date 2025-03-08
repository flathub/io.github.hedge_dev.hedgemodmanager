#!/bin/bash
export APP_ID=io.github.hedge_dev.hedgemodmanager
flatpak-builder --user --install --force-clean --install-deps-from=flathub --repo repo builddir ${APP_ID}.yml
flatpak run --command=flatpak-builder-lint org.flatpak.Builder --exceptions manifest ${APP_ID}.yml
flatpak run --command=flatpak-builder-lint org.flatpak.Builder --exceptions appstream ${APP_ID}.metainfo.xml
flatpak run --command=flatpak-builder-lint org.flatpak.Builder --exceptions repo repo