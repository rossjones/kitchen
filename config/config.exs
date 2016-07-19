# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :kitchen, connection: [
  database: System.get_env("REGISTER_DBNAME") || "registers",
  username: System.get_env("REGISTER_USERNAME") || "register",
  password: System.get_env("REGISTER_PASSWORD") || "password",
  hostname: System.get_env("REGISTER_HOST") || "127.0.0.1",
]


