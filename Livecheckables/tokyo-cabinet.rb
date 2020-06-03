class TokyoCabinet
  livecheck do
    url "https://fallabs.com/tokyocabinet/"
    regex(/href="tokyocabinet-([\d.]+)\.tar\.gz"/)
  end
end
