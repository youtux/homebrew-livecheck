class EyeD3
  livecheck do
    url "https://eyed3.nicfit.net/releases/"
    regex(/href=.*?eyeD3[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
