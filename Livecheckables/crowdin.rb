class Crowdin
  livecheck do
    url "https://github.com/crowdin/crowdin-cli.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
