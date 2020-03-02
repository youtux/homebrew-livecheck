class Cfengine
  livecheck :url   => "https://cfengine.com/release-data/community/releases.json",
            :regex => /"version": ?"(\d+(?:\.\d+)+)"/
end
