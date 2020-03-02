class Deployer
  livecheck :url   => "https://deployer.org/download",
            :regex => %r{/releases/v?(\d+(?:\.\d+)+)/deployer.phar}
end
