#!/bin/bash

sudo service nginx start
cd /app
bin/setup

bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed

bundle exec pumactl start

# # Remove a potentially pre-existing server.pid for Rails.
# rm -f /app/tmp/pids/server.pid
# # WARNING:createとseedはfargateの初回のみ実行
# # WARNING:タスクを個々に作って実行の方がいいかも
# bundle exec rails db:create
# bundle exec rails db:migrate
# bundle exec rails db:seed

# # Then exec the container's main process (what's set as CMD in the Dockerfile).
# exec "$@"