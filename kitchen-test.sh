#!/bin/bash


cp ../fusionauth-install/install.sh .
bundle exec kitchen test
