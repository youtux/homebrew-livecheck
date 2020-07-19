class CmuPocketsphinx
  livecheck do
    url :stable
    regex(%r{url=.*?/pocketsphinx-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
