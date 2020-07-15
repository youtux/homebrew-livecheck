class Deark
  livecheck do
    url :homepage
    regex(/href=.*?deark-([0-9.]+)\.t/)
  end
end
