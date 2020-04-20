class Qmmp
  livecheck :url   => "https://qmmp.ylsoftware.com/downloads.php",
            :regex => /href=".*?qmmp-([0-9\.]+)\.t/
end
