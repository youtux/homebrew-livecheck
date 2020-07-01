class Fifechan
  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
