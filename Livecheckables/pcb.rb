class Pcb
  livecheck do
    url "https://sourceforge.net/projects/pcb/"
    regex(%r{.*?/pcb-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
