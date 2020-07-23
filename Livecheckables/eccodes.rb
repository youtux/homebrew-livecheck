class Eccodes
  livecheck do
    url "https://software.ecmwf.int/wiki/display/ECC/Releases"
    regex(/href=.*?eccodes-v?(\d+(?:\.\d+)+)-Source\.t/i)
  end
end
