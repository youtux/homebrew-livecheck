class Ircii
  livecheck do
    url "https://ircii.warped.com/"
    regex(/href=.*?ircii[._-]v?(\d{6,8})\.t/i)
  end
end
