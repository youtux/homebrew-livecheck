class Codemod
  livecheck :url   => "https://pypi.org/simple/codemod/",
            :regex => %r{href=".*?/codemod-([0-9\.]+)\.t}
end
