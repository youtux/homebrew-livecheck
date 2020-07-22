class Freeciv
  livecheck do
    url "https://sourceforge.net/projects/freeciv/"
    regex(%r{/freeciv-v?(\d+(?:\.\d+)+)\.t.*?z.*?/}i)
  end
end
