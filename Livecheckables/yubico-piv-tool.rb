class YubicoPivTool
  livecheck do
    url "https://developers.yubico.com/yubico-piv-tool/Releases/"
    regex(/href=.*?yubico-piv-tool-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
