class Squirrel
  livecheck do
    url :stable
    regex(%r{url=.*?/squirrel.v?(\d+(?:[-_]\d+)+).stable\.t})
  end
end
