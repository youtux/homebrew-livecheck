class Pcb
  livecheck do
    url "https://sourceforge.net/projects/pcb/"
    regex(%r{.*?/pcb-([0-9.]+\.[0-9.]+)\.t}i)
  end
end
