class OmegaRpg
  livecheck do
    url :homepage
    regex(/latest.*?>v?(\d+(?:\.\d+)+)</i)
  end
end
