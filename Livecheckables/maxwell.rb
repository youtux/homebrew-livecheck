class Maxwell
  livecheck do
    url "https://github.com/zendesk/maxwell/releases"
    regex(%r{Latest.*?href="/zendesk/maxwell/tree/v?([0-9.]+)}m)
  end
end
