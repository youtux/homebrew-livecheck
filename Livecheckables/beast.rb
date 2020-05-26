class Beast
  livecheck do
    url "https://github.com/beast-dev/beast-mcmc/releases"
    regex(%r{href="/beast-dev/beast-mcmc/tree/v([0-9\.]+)"})
  end
end
