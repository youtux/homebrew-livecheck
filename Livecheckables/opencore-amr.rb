class OpencoreAmr
  livecheck do
    url :stable
    regex(%r{url=.*?/opencore-amr[._-]v?([\d.]+)\.t}i)
  end
end
