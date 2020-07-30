class Dxflib
  livecheck do
    url "https://www.ribbonsoft.com/en/dxflib-downloads"
    regex(/href=.*?dxflib[._-]v?(\d+(?:\.\d+)+)-src\.t/i)
  end
end
