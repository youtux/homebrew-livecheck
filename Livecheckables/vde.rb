class Vde
  livecheck do
    url :stable
    regex(%r{/vde\d*?-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
