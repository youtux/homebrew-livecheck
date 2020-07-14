class YubicoPivTool
  livecheck do
    url "https://developers.yubico.com/yubico-piv-tool/Releases/"
    regex(/href=.*?yubico-piv-tool-([0-9.]+)\.t/)
  end
end
