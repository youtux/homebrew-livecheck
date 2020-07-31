class CmuPocketsphinx
  livecheck do
    url :stable
    regex(%r{url=.*?/pocketsphinx[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
