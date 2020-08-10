class M2c
  livecheck do
    url "https://download.savannah.gnu.org/releases/m2c/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
