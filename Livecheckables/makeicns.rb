class Makeicns
  livecheck do
    url :stable
    regex(/href=.*?(\d+(?:\.\d+)+[a-z]?)\.t/i)
  end
end
