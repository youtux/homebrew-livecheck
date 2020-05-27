class Scamper
  livecheck do
    url "https://www.caida.org/tools/measurement/scamper/code/?C=M&O=D"
    regex(/href=.+?scamper(?:-cvs)?-v?(\d+[a-z]?)\.t/)
  end
end
