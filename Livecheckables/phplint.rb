class Phplint
  livecheck do
    url "https://www.icosaedro.it/phplint/CHANGES.txt"
    regex(/Version ([0-9._]+):/i)
  end
end
