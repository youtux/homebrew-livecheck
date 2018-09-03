class Rebar3
  livecheck :url => "https://www.rebar3.org/",
            :regex => %r{rebar3">Download \(v([0-9,\.]+)\)</a>}
end
