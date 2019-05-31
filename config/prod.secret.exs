use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :firstphoenixproject, FirstphoenixprojectWeb.Endpoint,
  secret_key_base: "QqYJ9Fw/cU5ycCyFrrsNLd6ukl3i9LF7tJ5hu2sR5uxZCQCUv/4hG+TQeoLLhIRt"

# Configure your database
config :firstphoenixproject, Firstphoenixproject.Repo,
  username: "postgres",
  password: "postgres",
  database: "firstphoenixproject_prod",
  pool_size: 15
