class Deark
  livecheck do
    url "https://entropymine.com/deark/releases/"
    regex(/href=.*?deark-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
