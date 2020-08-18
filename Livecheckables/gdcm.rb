class Gdcm
  livecheck do
    url "https://github.com/malaterre/GDCM/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
