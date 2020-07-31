class Antiword
  livecheck do
    url "http://www.winfield.demon.nl/linux/"
    regex(/href=.*?antiword[._-]v?(\d+(?:\.\d+)+)\.t[a-z]+(?:\.[a-z]+)?["' >]/i)
  end
end
