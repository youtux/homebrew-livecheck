class Librealsense
  livecheck do
    url "https://github.com/IntelRealSense/librealsense/releases"
    regex(%r{href="/IntelRealSense/librealsense/tree/v?([0-9.]+)})
  end
end
