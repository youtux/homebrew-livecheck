class Yaws
  livecheck :url => "http://yaws.hyber.org/download/",
            :regex => /href="yaws-([0-9\.]+)\.t/
end
