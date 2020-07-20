class Knock
  livecheck do
    url "https://www.zeroflux.org/projects/knock"
    regex(%r{The current version of knockd is <strong>([0-9.]+)</strong>}i)
  end
end
