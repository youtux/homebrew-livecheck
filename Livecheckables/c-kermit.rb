class CKermit
  livecheck do
    url "http://www.kermitproject.org/ck90.html"
    regex(/The current C-Kermit release is ([0-9.]+) /i)
  end
end
