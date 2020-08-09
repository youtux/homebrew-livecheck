class Gdcm
  livecheck do
    url :homepage
    regex(%r{url=.*?/gdcm[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
