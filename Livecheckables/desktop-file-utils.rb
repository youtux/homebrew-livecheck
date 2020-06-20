class DesktopFileUtils
  livecheck do
    url "https://www.freedesktop.org/software/desktop-file-utils/releases/"
    regex(/href=.*?desktop-file-utils-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
