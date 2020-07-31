class Freeciv
  livecheck do
    url "https://sourceforge.net/projects/freeciv/"
    regex(%r{/freeciv[._-]v?(\d+(?:\.\d+)+)\.t.*?z.*?/}i)
  end
end
