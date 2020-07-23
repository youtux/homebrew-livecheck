class Cuba
  livecheck do
    url :homepage
    regex(/href=.*?Cuba-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
