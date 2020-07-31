class Ccm
  livecheck do
    url :stable
    regex(%r{/ccm[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
