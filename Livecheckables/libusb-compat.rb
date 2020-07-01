class LibusbCompat
  livecheck do
    url :stable
    regex(%r{/libusb-compat-v?(\d+(?:\.\d+)+)\.t})
  end
end
