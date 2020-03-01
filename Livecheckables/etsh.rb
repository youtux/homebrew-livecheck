class Etsh
  livecheck :url   => "https://etsh.io/",
            :regex => %r{href="/src/etsh-([\d.]+)\.t}
end
