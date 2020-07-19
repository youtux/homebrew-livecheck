class IcarusVerilog
  livecheck do
    url "https://ftp.openbsd.org/pub/OpenBSD/distfiles/"
    regex(/href=.*?verilog-([0-9.]+)\.t/i)
  end
end
