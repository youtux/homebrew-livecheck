class Yarn
  livecheck :url => "https://yarnpkg.com/en/",
            :regex => /Stable:.*?v([0-9\.]+)/m
end
