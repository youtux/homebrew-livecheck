class Newt
  livecheck do
    url "https://pagure.io/releases/newt/"
    regex(/href=.*?newt-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
