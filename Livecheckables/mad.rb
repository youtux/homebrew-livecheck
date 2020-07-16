class Mad
  livecheck do
    url :stable
    regex(%r{url=.*?/libmad-v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
