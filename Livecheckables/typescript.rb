class Typescript
  livecheck :url => "https://www.npmjs.com/package/typescript",
            :regex => %r{package__sidebarText.*?>([0-9\.]+)</p>}
end
