class Ganglia
  livecheck do
    url "https://downloads.sourceforge.net/project/ganglia/"
    regex(%r{url=.*?/ganglia[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
