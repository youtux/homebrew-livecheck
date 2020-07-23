class Pigz
  livecheck do
    url :homepage
    regex(/href=.*?pigz-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
