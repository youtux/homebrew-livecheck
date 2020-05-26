class Exempi
  livecheck do
    url "https://libopenraw.freedesktop.org/exempi/"
    regex(/href="[^"']+exempi-(\d+(?:\.\d+)+)\.t/)
  end
end
