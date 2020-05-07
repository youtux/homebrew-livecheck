def haskell_heuristics(url, _regex = nil)
  package = ((url.split("/")[4]).split("-")[0..-2]).join("-")
  haskell_pkg_url = "https://hackage.haskell.org/package/#{package}/src"
  ver = URI.open(haskell_pkg_url).read.sub(/.*Directory listing for #{package}-(.*) source tarball.*/, "\\1")
  { ver => Version.new(ver) }
end
