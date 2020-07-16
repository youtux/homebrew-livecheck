class Pidgin
  livecheck do
    url :stable
    regex(%r{url=.*?/pidgin-v?(\d+(?:\.\d+)+)\.t})
  end
end
