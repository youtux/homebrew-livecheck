class OsspUuid
  livecheck do
    url :homepage
    regex(/href=.*?uuid[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
