class Asuka
  livecheck do
    url "https://git.sr.ht/~julienxx/asuka/refs"
    regex(%r{href=.*?/archive/v?(\d+(?:\.\d+)+)\.t}i)
  end
end
