class Remctl
  livecheck do
    url :homepage
    regex(/href=.*?remctl-([0-9.]+)\.t/)
  end
end
