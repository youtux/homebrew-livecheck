class LibusbCompat
  livecheck do
    url :stable
    regex(%r{/libusb-compat[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
