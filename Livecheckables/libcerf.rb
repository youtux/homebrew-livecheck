class Libcerf
  livecheck do
    url "https://jugit.fz-juelich.de/api/v4/projects/269/releases"
    regex(/libcerf-(\d+(?:\.\d+)+)/i)
  end
end
