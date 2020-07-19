class RakudoStar
  livecheck do
    url "https://rakudo.org/dl/star/"
    regex(/rakudo-star-(\d+(?:\.\d+)+)\.t/i)
  end
end
