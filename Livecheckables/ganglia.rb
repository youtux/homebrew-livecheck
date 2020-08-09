class Ganglia
  livecheck do
    url :stable
    regex(%r{url=.*?/ganglia[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
