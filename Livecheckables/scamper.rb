class Scamper
  livecheck :url   => "https://www.caida.org/tools/measurement/scamper/",
            :regex => %r{href="code/scamper-cvs-([0-9\.]+)\.t}
end
