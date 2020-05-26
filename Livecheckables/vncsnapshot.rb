class Vncsnapshot
  livecheck do
    regex(%r{url=.+?/vncsnapshot-v?(\d+(?:\.\d+)+[a-z]?)-src\.t}i)
  end
end
