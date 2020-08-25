class AtlassianCli
  livecheck do
    url "https://marketplace.atlassian.com/apps/10886/atlassian-command-line-interface-cli/version-history"
    regex(/class="version">v?(\d+(?:\.\d+)+)</i)
  end
end
