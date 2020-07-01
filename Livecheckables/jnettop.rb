class Jnettop
  livecheck do
    url :stable
    regex(%r{url=.+?/jnettop-v?(\d+(?:\.\d+)+)\.t})
  end
end
