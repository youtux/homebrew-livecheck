class Aqbanking
  livecheck :url => "https://www.aquamaniac.de/sites/download/packages.php",
            :regex => /name="aqbanking-([0-9\.]+)\.t/
end
