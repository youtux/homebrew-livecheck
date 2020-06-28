class Dmg2img
  livecheck do
    url :homepage
    regex(/href=.*?dmg2img-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
