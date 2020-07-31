class Cuba
  livecheck do
    url :homepage
    regex(/href=.*?Cuba[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
