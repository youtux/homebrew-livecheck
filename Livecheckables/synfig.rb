class Synfig
  livecheck do
    url "https://sourceforge.net/projects/synfig/"
    regex(%r{url=.*?/synfig-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
