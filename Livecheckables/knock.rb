class Knock
  livecheck do
    url "https://www.zeroflux.org/projects/knock"
    regex(%r{The current version of knockd is <strong>v?(\d+(?:\.\d+)+)</strong>}i)
  end
end
