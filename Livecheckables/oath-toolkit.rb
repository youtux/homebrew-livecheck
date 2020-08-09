class OathToolkit
  livecheck do
    url "http://download.savannah.nongnu.org/releases/oath-toolkit/"
    strategy :page_match
    regex(/href=.*?oath-toolkit[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
