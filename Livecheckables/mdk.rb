class Mdk
  livecheck do
    url :stable
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
