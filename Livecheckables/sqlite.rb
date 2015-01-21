class Sqlite
  livecheck :url => "https://sqlite.org/download.html",
            :regex => /version (\d(?:.\d)*)/
end
