class Cntlm
  livecheck do
    url :stable
    regex(%r{url=.*?/cntlm-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
