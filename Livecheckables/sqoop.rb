class Sqoop
  livecheck do
    url :homepage
    regex(/Latest stable release is (\d+(?:\.\d+)+)/i)
  end
end
