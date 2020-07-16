class KeepkeyAgent
  livecheck do
    url :stable
    regex(/href=.*?keepkey_agent-([0-9.]+)\.t/)
  end
end
