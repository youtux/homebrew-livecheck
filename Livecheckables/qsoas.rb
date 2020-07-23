class Qsoas
  livecheck do
    url "http://bip.cnrs-mrs.fr/bip06/qsoas/downloads.html"
    regex(/href=.*?qsoas-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
