class Dcm2niix
  livecheck do
    url "https://github.com/rordenlab/dcm2niix/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
