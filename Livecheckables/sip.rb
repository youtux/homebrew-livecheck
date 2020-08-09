class Sip
  livecheck do
    url "https://riverbankcomputing.com/software/sip/download"
    regex(/href=.*?sip[._-]v?(\d+(\.\d+)+)\.t/i)
  end
end
