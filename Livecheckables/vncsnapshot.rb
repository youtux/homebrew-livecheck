class Vncsnapshot
  livecheck do
    url :stable
    regex(%r{url=.*?/vncsnapshot[._-]v?(\d+(?:\.\d+)+[a-z]?)-src\.t}i)
  end
end
