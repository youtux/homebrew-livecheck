class Stunnel
  livecheck :url => "https://www.stunnel.org/downloads.html",
            :regex => %r{href=".*?/stunnel-([0-9\.]+)\.t}
end
