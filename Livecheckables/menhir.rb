class Menhir
  livecheck :url => "https://github.com/ocaml/opam-repository/tree/master/packages/menhir",
            :regex => %r{href="/ocaml/opam-repository/tree/master/packages/menhir/menhir.([0-9,\.]+)"}
end
