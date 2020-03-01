class Z3
  livecheck :url   => "https://github.com/Z3Prover/z3/releases",
            :regex => %r{Latest.*?href="/Z3Prover/z3/tree/z3-([0-9\.]+)}m
end
