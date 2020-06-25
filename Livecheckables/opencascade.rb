class Opencascade
  livecheck do
    url "https://www.opencascade.com/content/latest-release"
    regex(/href=.*?opencascade-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
