class Unrar
  livecheck do
    url "https://www.rarlab.com/rar_add.htm"
    regex(/href=.*?unrarsrc-([0-9,.]+)\.t/i)
  end
end
