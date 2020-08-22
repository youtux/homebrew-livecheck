class Nethacked
  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+b?)$/i)
  end
end
