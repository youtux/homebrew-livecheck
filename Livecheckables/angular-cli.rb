class AngularCli
  livecheck :url => "https://www.npmjs.com/package/@angular/cli",
            :regex => %r{package__sidebarText.*?>([0-9\.]+)</p>}
end
