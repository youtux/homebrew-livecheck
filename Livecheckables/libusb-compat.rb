class LibusbCompat
  livecheck do
    url :stable
    regex(%r{/libusb-compat-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
