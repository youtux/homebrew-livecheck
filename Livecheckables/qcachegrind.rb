class Qcachegrind
  livecheck do
    url "https://download.kde.org/stable/applications"
    regex(%r{href=.*?([0-9.]+)/?["' >]}i)
  end
end
