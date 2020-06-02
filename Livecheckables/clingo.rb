class Clingo
  livecheck do
    url "https://github.com/potassco/clingo/releases"
    regex(%r{Latest.*?href="/potassco/clingo/tree/v?([0-9.]+)}m)
  end
end
