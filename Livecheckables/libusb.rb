class Libusb
  livecheck do
    url "https://github.com/libusb/libusb/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
