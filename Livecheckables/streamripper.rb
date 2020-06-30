class Streamripper
  livecheck do
    url :stable
    regex(%r{url=.+?/streamripper-v?(\d+(?:\.\d+)+)\.t})
  end
end
