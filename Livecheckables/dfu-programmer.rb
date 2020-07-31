class DfuProgrammer
  livecheck do
    url "https://sourceforge.net/projects/dfu-programmer/rss"
    regex(%r{url=.*?/dfu-programmer[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
