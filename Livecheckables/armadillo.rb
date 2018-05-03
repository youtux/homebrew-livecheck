class Armadillo
   livecheck :url => "http://bit.ly/2kLBPoS", # http://arma.sourceforge.net/download.html
             :regex => /Stable Version.*?armadillo-(\d+.\d+.\d+).tar.xz.*Development Versions/m
end
