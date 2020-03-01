class Aqbanking
  livecheck :url   => "https://www.aquamaniac.de/rdm/projects/aqbanking/files",
            :regex => /href=.*aqbanking-([0-9\.]+)\.t/
end
