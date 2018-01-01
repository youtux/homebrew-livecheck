class Joplin
  livecheck :url => "https://www.npmjs.com/package/joplin",
            :regex => %r{<strong>([0-9\.]+)<.*?latest}m
end
