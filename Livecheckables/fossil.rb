class Fossil
  livecheck :url   => "https://www.fossil-scm.org/home/uv/download.js",
            :regex => /"title":[ ]*?"Version (\d+(?:\.\d+)+)"/
end
