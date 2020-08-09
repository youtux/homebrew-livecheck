class LibusbCompat
  livecheck do
    url :stable
    regex(%r{url=.*?/libusb-compat[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
