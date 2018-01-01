class Webpack
  livecheck :url => "https://www.npmjs.com/package/webpack",
            :regex => %r{<strong>([0-9\.]+)<.*?latest}m
end
