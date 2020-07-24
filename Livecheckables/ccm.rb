class Ccm
  livecheck do
    url :stable
    regex(%r{/ccm-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
