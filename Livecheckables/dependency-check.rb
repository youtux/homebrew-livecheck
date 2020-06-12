class DependencyCheck
  livecheck do
    url :homepage
    regex(/href=.*?dependency-check-v?(\d+(?:\.\d+)+)-release\.zip/i)
  end
end
