class Scamper
  livecheck do
    url "https://www.caida.org/tools/measurement/scamper/code/?C=M&O=D"
    regex(/href=.*?scamper(?:-cvs)?[._-]v?(\d{6,8}[a-z]?)\.t/i)
  end
end
