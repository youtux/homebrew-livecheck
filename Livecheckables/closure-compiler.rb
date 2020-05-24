class ClosureCompiler
  livecheck :url   => "https://search.maven.org/remotecontent?filepath=com/google/javascript/closure-compiler/",
            :regex => /href=.*?v?(\d{8})/i
end
