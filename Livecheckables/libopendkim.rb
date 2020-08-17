class Libopendkim
  livecheck do
    url :stable
    regex(%r{url=.*?/opendkim[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
