class AtlassianCli
  livecheck do
    url "https://marketplace.atlassian.com/plugins/org.swift.atlassian.cli/versions"
    regex(/class="version">v?(\d+(?:\.\d+)+)</i)
  end
end
