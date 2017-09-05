class Cherokee
  livecheck :url => "http://cherokee-project.com/",
            :regex => %r{href="/downloads.html">Download Cherokee ([0-9\.]+)</a>}
end
