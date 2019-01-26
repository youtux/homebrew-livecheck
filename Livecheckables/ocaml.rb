class Ocaml
  livecheck :url => "https://ocaml.org/releases",
            :regex => %r{<a href='([\d.]+\.[\d.]+\.?[\d.]?)\.html'>}
end
