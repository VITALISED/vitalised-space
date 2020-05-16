# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
use Mix.Config

config :vitalised, VitalisedWeb.Endpoint,
  http: [
    port: String.to_integer(System.get_env("PORT") || "4002"),
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: "4DphnFV4NplosyqPZJxPtu0y7dEPZuz/0iQIdOjjI3kPsKQNy9u2D4pfN//BqaVm"

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
config :vitalised, VitalisedWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
