class Krb5
  livecheck do
    url :homepage
    regex(/Current release: .*?>krb5-([0-9.]+)</)
  end
end
