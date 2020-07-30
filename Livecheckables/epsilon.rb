class Epsilon
  livecheck do
    url :stable
    regex(%r{/epsilon[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
