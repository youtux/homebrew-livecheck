class Fpc
  livecheck do
    url "https://sourceforge.net/projects/freepascal/"
    regex(%r{/Linux/([0-9.]+)/readme.txt}i)
  end
end
