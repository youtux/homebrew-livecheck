class DfuProgrammer
  livecheck do
    url "https://sourceforge.net/projects/dfu-programmer/rss"
    regex(%r{url=.*?/dfu-programmer-v?(\d+(?:\.\d+)+)\.t})
  end
end
