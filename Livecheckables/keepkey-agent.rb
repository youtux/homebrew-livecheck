class KeepkeyAgent
  livecheck do
    url "https://pypi.org/simple/keepkey_agent/"
    regex(/href=.*?keepkey_agent-([0-9.]+)\.t/)
  end
end
