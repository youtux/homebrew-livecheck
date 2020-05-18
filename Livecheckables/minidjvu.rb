class Minidjvu
  livecheck :url   => "https://sourceforge.net/projects/minidjvu/",
            :regex => %r{url=.+?/minidjvu-v?((?!0\.33)\d+(?:\.\d+)+)\.t}
end
