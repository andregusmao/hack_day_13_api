import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :hack_day_13, HackDay13.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "hack_day_13_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hack_day_13, HackDay13Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "fA1dyNA8C1agYK4fs0gqlJoP+y0QsF1ua/NFAQ9eo0NQ5pSKS3vDAMlPtKl0Xp9f",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
