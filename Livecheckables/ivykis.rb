class Ivykis
  livecheck do
    url :homepage
    regex(%r{url=.*?/ivykis[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
