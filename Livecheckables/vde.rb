class Vde
  livecheck do
    url :stable
    regex(%r{/vde\d*?[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
