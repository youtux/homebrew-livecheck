class Deployer
  livecheck do
    url "https://deployer.org/download"
    regex(%r{/releases/v?(\d+(?:\.\d+)+)/deployer.phar}i)
  end
end
