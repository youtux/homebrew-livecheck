class Pdnsrec
  livecheck do
    url "https://downloads.powerdns.com/releases/"
    regex(/pdns-recursor[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
