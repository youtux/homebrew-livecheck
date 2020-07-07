class Iozone
  livecheck do
    url "http://www.iozone.org/src/current"
    regex(/href=.*?iozone[._-]?v?(\d+(?:[._]\d+)+)\.t/i)
  end
end
