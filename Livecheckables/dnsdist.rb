class Dnsdist
  livecheck do
    url "https://downloads.powerdns.com/releases/"
    regex(/dnsdist[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
