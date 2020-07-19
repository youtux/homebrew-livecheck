class Agedu
  livecheck do
    url :homepage
    regex(/href=.*?agedu-(\d+)(?:\.[\da-z]+)?\.t/i)
  end
end
