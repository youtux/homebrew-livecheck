class Uftp
  livecheck do
    url "https://sourceforge.net/projects/uftp-multicast/"
    regex(%r{.*?/uftp-([0-9.]+)\.t}i)
  end
end
