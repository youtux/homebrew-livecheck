class Libusb
  livecheck :url   => "https://github.com/libusb/libusb/releases",
            :regex => %r{latest.*?href="/libusb/libusb/tree/v?([0-9\.]+)}m
end
