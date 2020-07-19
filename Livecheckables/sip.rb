class Sip
  livecheck do
    url "https://riverbankcomputing.com/software/sip/download"
    regex(/sip-(\d+(\.\d+)+)\.t/i)
  end
end
