class Pcb
  livecheck do
    url "https://sourceforge.net/projects/pcb/"
    regex(%r{.*?/pcb[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
