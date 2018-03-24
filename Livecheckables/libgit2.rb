class Libgit2
  livecheck :url => "https://github.com/libgit2/libgit2/releases",
            :regex => %r{Latest.*?href="/libgit2/libgit2/tree/v?([0-9\.]+)}m
end
