class MitScheme
  livecheck do
    url :homepage
    regex(/href=.*?mit-scheme-v?(\d+(?:\.\d+)+)-svm1\.t/i)
  end
end
