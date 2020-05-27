class Dnsdist
  livecheck do
    url "https://downloads.powerdns.com/releases/"
    regex(/dnsdist-(\d+(?:\.\d+)*)\.t/)
  end
end
