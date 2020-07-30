class Squirrel
  livecheck do
    url :stable
    regex(%r{url=.*?/squirrel[._-]v?(\d+(?:[-_]\d+)+).stable\.t}i)
  end
end
