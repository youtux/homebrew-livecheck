class Systemc
  livecheck do
    url "https://www.accellera.org/downloads/standards/systemc"
    regex(/href=.*?systemc[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
