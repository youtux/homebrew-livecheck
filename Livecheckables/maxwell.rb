class Maxwell
  livecheck do
    url "https://github.com/zendesk/maxwell/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
