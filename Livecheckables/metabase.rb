class Metabase
  livecheck do
    url "https://github.com/metabase/metabase/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
