class Asymptote
  livecheck do
    url :stable
    regex(%r{url=.*?/asymptote-v?(\d+(?:\.\d+)+)\.src\.t}i)
  end
end
