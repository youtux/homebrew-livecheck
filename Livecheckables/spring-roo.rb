class SpringRoo
  livecheck do
    url :homepage
    regex(/href=.*?spring-roo[._-]v?(\d+(?:\.\d+)+)\.RELEASE\.zip/i)
  end
end
