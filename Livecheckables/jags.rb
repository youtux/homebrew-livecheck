class Jags
  livecheck do
    url :stable
    regex(%r{url=.*?/JAGS-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
