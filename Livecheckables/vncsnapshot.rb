class Vncsnapshot
  livecheck do
    url :stable
    regex(%r{url=.+?/vncsnapshot-v?(\d+(?:\.\d+)+[a-z]?)-src\.t}i)
  end
end
