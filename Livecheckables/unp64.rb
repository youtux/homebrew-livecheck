class Unp64
  livecheck do
    url :homepage
    regex(/href=.*?unp64.*?UNP64 v?(\d+(?:\.\d+)+) -/i)
  end
end
