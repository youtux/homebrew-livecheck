class Poco
  livecheck :url => "https://pocoproject.org/releases",
            :regex => %r{href="poco-([0-9\.]+)/"}
end
