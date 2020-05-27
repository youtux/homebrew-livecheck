class Mad
  livecheck do
    regex(%r{url=.+?/libmad-v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
