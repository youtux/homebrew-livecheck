class Lean
  livecheck do
    url "https://github.com/leanprover/lean/releases"
    regex(%r{Latest.*?href="/leanprover/lean/tree/v?([0-9.]+)}m)
  end
end
