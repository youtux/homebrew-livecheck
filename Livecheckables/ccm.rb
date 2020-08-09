class Ccm
  livecheck do
    url :stable
    regex(%r{href=.*?/ccm[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
