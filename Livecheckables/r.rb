class R
  livecheck do
    url "https://cran.rstudio.com/banner.shtml"
    regex(/href=.*?R[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
