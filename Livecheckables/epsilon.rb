class Epsilon
  livecheck do
    url :stable
    regex(%r{/epsilon-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
