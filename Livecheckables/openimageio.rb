class Openimageio
  livecheck do
    url "https://github.com/OpenImageIO/oiio/releases/latest"
    regex(%r{href=.*?/tag/Release[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
