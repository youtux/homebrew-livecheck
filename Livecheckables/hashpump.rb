class Hashpump
  livecheck do
    url "https://github.com/bwall/HashPump/releases"
    regex(%r{Latest.*?href="/bwall/HashPump/tree/v?([0-9\.]+)"}m)
  end
end
