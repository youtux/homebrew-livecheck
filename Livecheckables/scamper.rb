class Scamper
  livecheck :url   => "https://www.caida.org/tools/measurement/scamper/code/?C=M&O=D",
            :regex => %r{href="scamper-cvs-([0-9\.]+)\.t}
end
