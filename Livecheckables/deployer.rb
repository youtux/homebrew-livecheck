class Deployer
  livecheck :url => "https://deployer.org/download",
            :regex => %r{Latest version.*?href=".*?/v?([0-9,\.]+)/deployer\.phar}m
end
