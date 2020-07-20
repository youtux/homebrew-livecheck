class Unp64
  livecheck do
    url :homepage
    regex(/href=.*?unp64.*?UNP64 ([0-9.]+) -/i)
  end
end
