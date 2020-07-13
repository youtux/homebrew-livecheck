class X3270
  livecheck do
    url "http://x3270.bgp.nu/download.html"
    regex(/href=.*?suite3270[._-]v?(\d+(?:\.\d+)+(?:ga\d+)?)(?:-src)?\.t/i)
  end
end
