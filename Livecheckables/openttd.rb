class Openttd
  livecheck do
    url "https://www.openttd.org/"
    regex(/Download stable \((\d+(\.\d+)+)\)/)
  end
end
