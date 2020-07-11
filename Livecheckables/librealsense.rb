class Librealsense
  livecheck do
    url "https://github.com/IntelRealSense/librealsense/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
