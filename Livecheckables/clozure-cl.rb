class ClozureCl
  livecheck :url => "https://ccl.clozure.com/download.html",
            :regex => %r{href="ftp://ftp.clozure.com/pub/release/([0-9\.]+)/"}
end
