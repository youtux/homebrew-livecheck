class Systemc
  livecheck do
    url "https://www.accellera.org/downloads/standards/systemc"
    regex(/href=.*?systemc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
