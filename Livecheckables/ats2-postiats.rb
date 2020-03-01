class Ats2Postiats
  livecheck :url   => "http://www.ats-lang.org/Downloads.html",
            :regex => %r{The current <em>stable</em> release of ATS2 is at\n<a href="http://sourceforge.net/projects/ats2-lang/download">ATS2-([0-9\.]+)</a>}
end
