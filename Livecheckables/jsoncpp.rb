class Jsoncpp
  livecheck do
    url "https://github.com/open-source-parsers/jsoncpp/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
