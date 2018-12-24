class Rpm
  livecheck :url => "https://github.com/rpm-software-management/rpm.git",
            :regex => /rpm-([0-9\.]+)-release/
end
