class Readosm
  livecheck do
    url :homepage
    regex(%r{current version is <b>([0-9a-z.]+)</b>})
  end
end
