class ImageoptimCli
  livecheck :url => "https://www.npmjs.com/package/imageoptim-cli",
            :regex => %r{package__sidebarText.*?>([0-9\.]+)</p>}
end
