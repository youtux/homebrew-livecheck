class Joplin
  livecheck :url => "https://www.npmjs.com/package/joplin",
            :regex => %r{package__sidebarText.*?>([0-9\.]+)</p>}
end
