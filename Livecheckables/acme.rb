class Acme
  livecheck do
    url :homepage
    regex(/acme(\d+(?:\.\d+)+)win/i)
  end
end
