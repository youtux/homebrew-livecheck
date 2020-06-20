class MitScheme
  livecheck do
    url :homepage
    regex(/href=.*?mit-scheme-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
