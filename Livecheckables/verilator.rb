class Verilator
  livecheck do
    url "https://github.com/verilator/verilator.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
