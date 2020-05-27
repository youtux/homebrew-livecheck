class Squirrel
  livecheck do
    regex(%r{url=.+?/squirrel.v?(\d+(?:[-_]\d+)+).stable\.t})
  end
end
