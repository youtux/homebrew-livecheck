class Pidgin
  livecheck do
    url :stable
    regex(%r{url=.*?/pidgin[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
