class Reminiscence
  livecheck do
    url :homepage
    regex(/href=.*?REminiscence-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
