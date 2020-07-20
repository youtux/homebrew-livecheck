class Libpagemaker
  livecheck do
    url "https://dev-www.libreoffice.org/src/libpagemaker/"
    regex(/href=.*?libpagemaker-([0-9,.]+)\.t/i)
  end
end
