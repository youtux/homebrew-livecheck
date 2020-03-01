class PythonAT2
  livecheck :url   => "https://www.python.org/ftp/python",
            :regex => %r{href="(2(?:\.\d+)+)/"}
end
