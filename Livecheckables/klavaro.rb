class Klavaro
  livecheck do
    url "https://sourceforge.net/projects/klavaro/"
    regex(%r{/klavaro[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
