class Megatools
  livecheck do
    url "https://megatools.megous.com/builds/"
    regex(/href=.*?megatools-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
