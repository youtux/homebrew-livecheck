class Sdedit
  livecheck do
    url :stable
    regex(%r{url=.*?/sdedit-v?(\d+(?:\.\d+)+)\.jar})
  end
end
