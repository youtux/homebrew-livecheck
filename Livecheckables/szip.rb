class Szip
  livecheck :url   => "https://support.hdfgroup.org/ftp/lib-external/szip/",
            :regex => %r{href=.+?v?(\d+(?:\.\d+)+)/?["']}
end
