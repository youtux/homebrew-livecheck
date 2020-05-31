class Mesa
  livecheck do
    url "https://mesa.freedesktop.org/archive/"
    regex(/href="mesa-(\d+(?:\.\d+)+)\.t/i)
  end
end
