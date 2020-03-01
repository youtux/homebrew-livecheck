class OpencvAT2
  livecheck :url   => "https://github.com/opencv/opencv/releases",
            :regex => %r{href="/opencv/opencv/tree/(2[0-9\.]+)"}
end
