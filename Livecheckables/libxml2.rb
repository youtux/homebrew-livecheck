class Libxml2
  livecheck :url => "http://xmlsoft.org/news.html",
            :regex => %r{<h3>[v]*(\d+(?:\.\d+)*): .*</h3>}
end
