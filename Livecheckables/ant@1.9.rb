class AntAT19
  livecheck do
    url :stable
    regex(/href=.*?apache-ant[._-]v?(1\.9(?:\.\d+)*)(?:-bin)?\.t/i)
  end
end
