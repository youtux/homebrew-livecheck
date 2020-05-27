class Etsh
  livecheck do
    url "https://etsh.nl/src/"
    regex(%r{href="etsh[-_](\d+(?:\.\d+)+)(?:(?:\.t)|/)?})
  end
end
