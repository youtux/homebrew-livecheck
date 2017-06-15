class AngularCli
  livecheck :url => "https://www.npmjs.com/package/@angular/cli",
            :regex => %r{<strong>([0-9,\.]+)</strong>.*is the latest}m
end
