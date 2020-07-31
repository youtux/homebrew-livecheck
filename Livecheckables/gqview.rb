class Gqview
  livecheck do
    url :stable
    regex(%r{url=.*?/gqview/[^/]+/gqview[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
