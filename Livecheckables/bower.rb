class Bower
  livecheck :url => "https://www.npmjs.com/package/bower",
            :regex => %r{package__sidebarText.*?>([0-9\.]+)</p>}
end
