class Sip
  livecheck do
    url "https://riverbankcomputing.com/software/sip/download"
    regex(/sip[._-]v?(\d+(\.\d+)+)\.t/i)
  end
end
