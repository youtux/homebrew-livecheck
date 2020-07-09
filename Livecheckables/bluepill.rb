class Bluepill
  livecheck do
    url "https://github.com/linkedin/bluepill/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
