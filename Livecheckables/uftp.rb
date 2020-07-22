class Uftp
  livecheck do
    url "https://sourceforge.net/projects/uftp-multicast/"
    regex(%r{.*?/uftp-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
