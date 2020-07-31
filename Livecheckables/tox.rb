class Tox
  livecheck do
    url :stable
    regex(%r{/tox[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
