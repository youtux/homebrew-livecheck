class Jhiccup
  livecheck do
    url :homepage
    regex(/href=.*?jHiccup[._-]v?(\d+(?:\.\d+)+)-dist\.zip/i)
  end
end
