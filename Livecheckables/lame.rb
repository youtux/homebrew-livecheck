class Lame
  livecheck do
    url "https://sourceforge.net/projects/lame/"
    regex(%r{.*?/lame-([0-9\.]+\.[0-9\.]+)\.t})
  end
end
