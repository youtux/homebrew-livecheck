class Z3
  livecheck do
    url "https://github.com/Z3Prover/z3/releases/latest"
    regex(%r{href=.*?/tag/z3[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
