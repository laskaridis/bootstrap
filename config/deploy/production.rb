server "46.101.125.147", roles: %w{web app}

set :ssh_options, {
  user: "lefteris",
  forward_agent: true,
  auth_methods: %w(publickey)
}
