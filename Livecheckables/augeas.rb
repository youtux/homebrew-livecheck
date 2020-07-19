class Augeas
  livecheck do
    url "http://download.augeas.net/"
    regex(/href=.*?augeas-([0-9,.]+)\.t/i)
  end
end
