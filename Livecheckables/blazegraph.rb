class Blazegraph
  livecheck do
    url :stable
    regex(%r{url=.*?/v?(\d+(?:\.\d+)+)/blazegraph\.jar}i)
  end
end
