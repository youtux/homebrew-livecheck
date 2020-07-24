class Unrar
  livecheck do
    url "https://www.rarlab.com/rar_add.htm"
    regex(/href=.*?unrarsrc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
