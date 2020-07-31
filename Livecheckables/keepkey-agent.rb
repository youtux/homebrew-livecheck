class KeepkeyAgent
  livecheck do
    url :stable
    regex(/href=.*?keepkey_agent[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
