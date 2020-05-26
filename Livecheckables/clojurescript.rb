class Clojurescript
  livecheck do
    url "https://github.com/clojure/clojurescript/releases"
    regex(%r{Latest.*?href="/clojure/clojurescript/tree/r([0-9\.]+)}m)
  end
end
