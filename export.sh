#!/usr/bin/env bash

set -e

cd "$(dirname "$(readlink -f "$0")")"

source config.sh

function exportAndUpload {
    ExportTemplate="$1"
    Channel="$2"
    MainFile="$3"

    echo "Preparing the export directory for $ExportTemplate"

    rm -rf ".export/$Channel"
    mkdir -p ".export/$Channel"

    echo "Exporting the $ExportTemplate build"

    "$Godot" --no-window --export "$ExportTemplate" ".export/$Channel/$MainFile"

    echo "Uploading the $ExportTemplate build to $ItchUsername/$ItchProjectName:$Channel"

    "$Butler" push ".export/$Channel" "$ItchUsername/$ItchProjectName:$Channel"

    echo "Done exporting the $ExportTemplate build!"
}

rm -rf ".export"
mkdir -p ".export"
touch ".export/.gdignore"

exportAndUpload "Web" "web" "index.html"

exportAndUpload "Windows" "windows" "$ItchProjectName.exe"
