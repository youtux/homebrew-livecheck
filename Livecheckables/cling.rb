class Cling
  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
