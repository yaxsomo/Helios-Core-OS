#!/bin/bash

git submodule foreach --recursive git pull origin $(git rev-parse --abbrev-ref HEAD)
