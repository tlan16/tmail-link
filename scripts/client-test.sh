#!/usr/bin/env bash

work_directory="$(mktemp --directory)"
cd "$work_directory" || exit 1

