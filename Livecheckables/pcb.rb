class Pcb
  livecheck do
    url :stable
    regex(%r{url=.*?/pcb[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
