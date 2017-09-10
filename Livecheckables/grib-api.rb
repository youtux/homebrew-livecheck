class GribApi
  livecheck :url => "https://mirrors.ocf.berkeley.edu/debian/pool/main/g/grib-api/",
            :regex => /href="grib-api_(([0-9\.]+))\.orig\.t/
end
