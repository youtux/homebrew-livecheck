class Deployer
  livecheck do
    url "https://deployer.org/download"
    regex(%r{href=.*?/releases/v?(\d+(?:\.\d+)+)/deployer.phar}i)
  end
end
