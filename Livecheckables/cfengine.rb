class Cfengine
  livecheck do
    url "https://cfengine.com/release-data/community/releases.json"
    regex(/"version": ?"(\d+(?:\.\d+)+)"/i)
  end
end
