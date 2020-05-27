class Pdns
  livecheck do
    url "https://downloads.powerdns.com/releases/"
    regex(/pdns-(\d+(?:\.\d+)*)\.t/)
  end
end
