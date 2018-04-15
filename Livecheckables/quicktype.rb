class Quicktype
  livecheck :url => "https://www.npmjs.com/package/quicktype",
            :regex => %r{package__sidebarText.*?>([0-9\.]+)</p>}
end
