class AprUtil
  livecheck :url => "http://apr.apache.org/",
            :regex => /recommended.*?APR-util (\d+(?:\.\d+)*)/m
end
