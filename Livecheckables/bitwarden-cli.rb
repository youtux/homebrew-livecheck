class BitwardenCli
  livecheck :url => "https://www.npmjs.com/package/@bitwarden/cli",
            :regex => %r{package__sidebarText.*?>([0-9\.]+)</p>}
end
