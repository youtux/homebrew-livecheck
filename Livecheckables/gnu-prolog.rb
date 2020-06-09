class GnuProlog
  livecheck do
    url :homepage
    regex(/href=.+gprolog-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
