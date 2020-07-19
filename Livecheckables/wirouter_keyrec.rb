class WirouterKeyrec
  livecheck do
    url :homepage
    regex(%r{href=.*?/WiRouter_KeyRec_([0-9.]+)\.zip}i)
  end
end
