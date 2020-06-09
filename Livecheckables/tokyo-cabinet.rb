class TokyoCabinet
  livecheck do
    url :homepage
    regex(/href="tokyocabinet-([\d.]+)\.tar\.gz"/)
  end
end
