class Bootloadhid
  livecheck do
    url :homepage
    regex(/href=.*?bootloadHID[._-]v?(\d{4}(?:-\d{2}){2})\.t/i)
  end
end
