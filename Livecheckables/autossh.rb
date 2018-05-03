class Autossh
  livecheck :url => "http://www.harding.motd.ca/autossh/",
            :regex => /HREF="autossh-([0-9\.]+[a-z]+)\.t/
end
