class Dxflib
  livecheck do
    url "https://www.ribbonsoft.com/en/dxflib-downloads"
    regex(/href=.*?dxflib-([0-9.]+)-src\.t/i)
  end
end
