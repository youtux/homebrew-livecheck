class Lynis
  livecheck do
    url "https://cisofy.com/downloads/lynis/"
    regex(%r{href=.*?/lynis-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
