class IcarusVerilog
  livecheck do
    url "https://ftp.openbsd.org/pub/OpenBSD/distfiles/"
    regex(/href=.*?verilog[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
