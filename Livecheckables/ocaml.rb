class Ocaml
  livecheck :url => "https://ocaml.org/docs/install.html",
            :regex => %r{<a href='/releases/([0-9\.]+)\.html'>}
end
