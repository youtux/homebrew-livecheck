class Libpagemaker
  livecheck do
    url "https://dev-www.libreoffice.org/src/libpagemaker/"
    regex(/href=.*?libpagemaker-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
