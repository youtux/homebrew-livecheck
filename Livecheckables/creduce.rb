class Creduce
  livecheck do
    url "https://embed.cs.utah.edu/creduce/"
    regex(/href="creduce-([0-9,\.]+)\.tar/)
  end
end
