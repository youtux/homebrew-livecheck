class Qmmp
  livecheck :url => "http://qmmp.ylsoftware.com/downloads.php",
            :regex => /href=".*?qmmp-([0-9\.]+)\.t/
end
