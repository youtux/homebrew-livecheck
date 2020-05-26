class Bluepill
  livecheck do
    url "https://github.com/linkedin/bluepill/releases"
    regex(%r{Latest.*?href="/linkedin/bluepill/tree/v?([0-9\.]+)}m)
  end
end
