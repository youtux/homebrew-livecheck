class Pgrouting
  livecheck :url   => "https://github.com/pgRouting/pgrouting/releases",
            :regex => %r{href="/pgRouting/pgrouting/tree/v?([0-9\.]+)"}
end
