class Codemod
  livecheck :url   => "https://pypi.python.org/simple/codemod/",
            :regex => %r{href=".*?/codemod-([0-9\.]+)\.t}
end
