class OsrmBackend
  livecheck :url => "https://api.github.com/repos/Project-OSRM/osrm-backend/releases/latest",
            :regex => /([0-9\.]+\.[0-9\.]+)"/
            # :regex => /"tag_name": "v?([0-9\.]+)",/
end
