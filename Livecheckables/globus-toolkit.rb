class GlobusToolkit
  livecheck :url => "https://downloads.globus.org/toolkit/gt6/stable/installers/src/",
            :regex => /href='globus_toolkit-([0-9,\.]+)\.t/
end
