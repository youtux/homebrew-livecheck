class Opencv
  livecheck :url => "https://github.com/opencv/opencv/releases",
            :regex => %r{Latest release.*?href="/opencv/opencv/tree/(3[0-9\.]+)"}m
end
