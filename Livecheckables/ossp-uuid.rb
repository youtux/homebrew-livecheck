class OsspUuid
  livecheck do
    url :homepage
    regex(/href=.*?uuid-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
