class Fpc
  livecheck do
    url "https://sourceforge.net/projects/freepascal/"
    regex(%r{/Linux/v?(\d+(?:\.\d+)+)/readme.txt}i)
  end
end
