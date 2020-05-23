class ClosureCompiler
  livecheck :url   => "https://repo1.maven.org/maven2/com/google/javascript/closure-compiler/",
            :regex => /href=.*?v?(\d{8})/i
end
