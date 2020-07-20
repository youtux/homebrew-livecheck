class Systemc
  livecheck do
    url "https://www.accellera.org/downloads/standards/systemc"
    regex(/href=.*?systemc-([0-9.]+)\.t/i)
  end
end
