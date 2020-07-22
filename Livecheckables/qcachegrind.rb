class Qcachegrind
  livecheck do
    url "https://download.kde.org/stable/applications"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
