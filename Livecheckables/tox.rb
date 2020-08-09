class Tox
  livecheck do
    url :stable
    regex(/href=.*?tox[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
