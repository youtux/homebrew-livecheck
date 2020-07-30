class Base64
  livecheck do
    url :homepage
    regex(/href=.*?base64[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
