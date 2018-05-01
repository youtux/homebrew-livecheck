class Phantomjs
  livecheck :url => "http://phantomjs.org/download.html",
            :regex => /phantomjs-([0-9\.]+)/
end
