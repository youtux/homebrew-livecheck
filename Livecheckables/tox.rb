class Tox
  livecheck do
    url :stable
    regex(%r{/tox-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
