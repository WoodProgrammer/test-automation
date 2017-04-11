#!/bin/bash
mkdir -p /myapp/cucumber_output
bundle install
#cucumber features/Demo.feature -f html -t @done -o cucumber_output/result.html
bundle exec parallel_cucumber features/Demo.feature -n 6 --group-by scenarios -o '-t @done -p parallel'