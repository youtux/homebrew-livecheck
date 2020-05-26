class Elektra
  livecheck do
    url "https://github.com/ElektraInitiative/libelektra/releases"
    regex(%r{Latest.*?href="/ElektraInitiative/libelektra/tree/v?([0-9\.]+)}m)
  end
end
