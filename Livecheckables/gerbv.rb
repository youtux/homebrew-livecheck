class Gerbv
  livecheck do
    url :stable
    regex(%r{/gerbv/gerbv[._-]v?(\d+(?:\.\d+)+)/}i)
  end
end
