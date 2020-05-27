class Systemc
  livecheck do
    url "https://www.accellera.org/downloads/standards/systemc"
    regex(%r{href=".*?/systemc-([0-9\.]+)\.t})
  end
end
