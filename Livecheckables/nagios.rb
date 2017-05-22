class Nagios
  livecheck :url => "https://sourceforge.net/projects/nagios/files/",
            :regex => %r{href=".*/latest.*nagios-.*/nagios-([0-9,\.]+)\.tar}
end
