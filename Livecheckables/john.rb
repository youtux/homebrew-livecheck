class John
  livecheck do
    url :homepage
    regex(/href=.*?john-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
