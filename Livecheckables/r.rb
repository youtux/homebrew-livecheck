class R
  livecheck do
    url "https://cran.rstudio.com/banner.shtml"
    regex(%r{href="src/base/R-.*>R-([\d.]+)\.tar})
  end
end
