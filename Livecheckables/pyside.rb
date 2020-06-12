class Pyside
  livecheck do
    url "https://download.qt.io/official_releases/QtForPython/pyside2/"
    regex(%r{href=.*?PySide2-v?(\d+(?:\.\d+)+)-src/}i)
  end
end
