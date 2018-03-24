class Webpack
  livecheck :url => "https://www.npmjs.com/package/webpack",
            :regex => %r{package__sidebarText.*?>([0-9\.]+)</p>}
end
