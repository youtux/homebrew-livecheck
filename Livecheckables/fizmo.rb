class Fizmo
  livecheck do
    url "https://fizmo.spellbreaker.org/download/"
    regex(%r{href="../source/fizmo-([0-9.]+)\.t.*?current branch}m)
  end
end
