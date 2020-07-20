class Freeciv
  livecheck do
    url "https://sourceforge.net/projects/freeciv/"
    regex(%r{/freeciv-([0-9.]+)\.t.*?z.*?/}i)
  end
end
