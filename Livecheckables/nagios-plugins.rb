class NagiosPlugins
  livecheck :url => "https://nagios-plugins.org/download/",
            :regex => /href="nagios-plugins-([\d.]+)\.tar/
end
