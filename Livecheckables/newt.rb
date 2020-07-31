class Newt
  livecheck do
    url "https://pagure.io/releases/newt/"
    regex(/href=.*?newt[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
