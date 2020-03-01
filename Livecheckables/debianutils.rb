class Debianutils
  livecheck :url   => "https://packages.qa.debian.org/d/debianutils.html",
            :regex => /debianutils_(\d+(?:.\d+)+).dsc/
end
