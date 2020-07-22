class WirouterKeyrec
  livecheck do
    url :homepage
    regex(%r{href=.*?/WiRouter_KeyRec_v?(\d+(?:\.\d+)+)\.zip}i)
  end
end
