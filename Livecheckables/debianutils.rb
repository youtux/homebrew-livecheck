class Debianutils
#livecheck.type  regex
#livecheck.regex ${name}_(\\d+(?:.\\d+)+).dsc
  livecheck :url => "https://packages.qa.debian.org/d/debianutils.html",
            :regex => /debianutils_(\d+(?:.\d+)+).dsc/
end
