class OmegaRpg
  livecheck do
    url :homepage
    regex(/latest.*?>([0-9.]+)</i)
  end
end
