class Creduce
  livecheck do
    url :homepage
    regex(/href=.*?creduce-([0-9,.]+)\.t/i)
  end
end
