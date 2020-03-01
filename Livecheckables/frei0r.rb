class Frei0r
  livecheck :url => "https://github.com/dyne/frei0r/releases",
            :regex => %r{<a href="/dyne/frei0r/releases/tag/v([\d\.]+)"}
end
