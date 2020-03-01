class Fossil
  livecheck :url   => "https://www.fossil-scm.org/index.html/uv/download.html",
            :regex => /"title":     "Version ([0-9\.]+)",/
end
