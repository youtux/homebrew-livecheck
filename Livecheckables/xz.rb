class Xz
  livecheck do
    url :homepage
    regex(/v?(\d+(?:\.\d+)+) was released/i)
  end
end
