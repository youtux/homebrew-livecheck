class Agedu
  livecheck do
    url :homepage
    regex(/href=.*?agedu[._-]v?(\d+)(?:\.[\da-z]+)?\.t/i)
  end
end
