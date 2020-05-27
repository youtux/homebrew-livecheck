class Eccodes
  livecheck do
    url "https://software.ecmwf.int/wiki/display/ECC/Releases"
    regex(%r{href=".*?/eccodes-([0-9\.]+)-Source\.t})
  end
end
