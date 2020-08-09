class DfuProgrammer
  livecheck do
    url :stable
    regex(%r{url=.*?/dfu-programmer[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
