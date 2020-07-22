class Krb5
  livecheck do
    url :homepage
    regex(/Current release: .*?>krb5-v?(\d+(?:\.\d+)+)</i)
  end
end
