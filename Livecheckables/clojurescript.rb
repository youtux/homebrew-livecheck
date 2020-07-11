class Clojurescript
  livecheck do
    url "https://github.com/clojure/clojurescript/releases/latest"
    regex(%r{href=.*?/tag/r?(\d+(?:\.\d+)+)["' >]}i)
  end
end
