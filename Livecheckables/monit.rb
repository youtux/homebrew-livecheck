class Monit
  livecheck :url => "https://mmonit.com/monit/dist/",
            :regex => /href="monit-([0-9,\.]+)\.t/
end
