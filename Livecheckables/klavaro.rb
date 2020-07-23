class Klavaro
  livecheck do
    url "https://sourceforge.net/projects/klavaro/"
    regex(%r{/klavaro-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
