#!/bin/bash

bundle check || bundle install

yarn install

rm -f tmp/pids/server.pid

bin/rails s -p 3000 -b '0.0.0.0'


