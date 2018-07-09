class Fuseki
  livecheck :url => "https://jena.apache.org/download/index.cgi",
            :regex => %r{href=".*?/binaries/apache-jena-([0-9\.]+)\.z}
end
