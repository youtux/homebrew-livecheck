class Nagios
  livecheck :url => "https://sourceforge.net/projects/nagios/",
            :regex => %r{/.*nagios-.*/nagios-([0-9,\.]+)\.tar}
end
