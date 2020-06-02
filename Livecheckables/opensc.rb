class Opensc
  livecheck do
    url "https://github.com/OpenSC/OpenSC/releases"
    regex(%r{Latest.*?href="/OpenSC/OpenSC/tree/v?([0-9.]+)}m)
  end
end
