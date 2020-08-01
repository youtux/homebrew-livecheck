class Pdns
  livecheck do
    url "https://downloads.powerdns.com/releases/"
    regex(/pdns[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
