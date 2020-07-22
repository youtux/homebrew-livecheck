class KeepkeyAgent
  livecheck do
    url :stable
    regex(/href=.*?keepkey_agent-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
