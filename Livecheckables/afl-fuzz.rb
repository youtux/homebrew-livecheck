class AflFuzz
  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+b?)$/)
  end
end
