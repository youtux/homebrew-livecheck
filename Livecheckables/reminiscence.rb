class Reminiscence
  livecheck do
    url :homepage
    regex(/href=.*?REminiscence-([0-9.]+)\.t/i)
  end
end
