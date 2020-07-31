class Libpng
  livecheck do
    url "https://sourceforge.net/projects/libpng/"
    regex(%r{/libpng[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
