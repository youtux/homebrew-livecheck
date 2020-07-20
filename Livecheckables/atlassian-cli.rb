class AtlassianCli
  livecheck do
    url "https://marketplace.atlassian.com/plugins/org.swift.atlassian.cli/versions"
    regex(/class="version">([0-9.]+)</i)
  end
end
