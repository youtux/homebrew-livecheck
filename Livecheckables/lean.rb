class Lean
  livecheck do
    url "https://github.com/leanprover/lean/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
