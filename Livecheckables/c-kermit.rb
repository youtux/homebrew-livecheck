class CKermit
  livecheck do
    url "http://www.kermitproject.org/ck90.html"
    regex(/The current C-Kermit release is v?(\d+(?:\.\d+)+) /i)
  end
end
