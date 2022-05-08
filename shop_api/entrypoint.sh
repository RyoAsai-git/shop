#!/bin/bash

sudo service nginx start
cd /app
bin/setup

DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rails db:reset
# bundle exec rails db:create
# bundle exec rails db:migrate
# bundle exec rails db:seed

bundle exec pumactl start