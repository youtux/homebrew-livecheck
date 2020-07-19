class Pigz
  livecheck do
    url :homepage
    regex(/href=.*?pigz-([0-9.]+)\.t/i)
  end
end
