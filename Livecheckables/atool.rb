class Atool
  livecheck do
    url "https://download.savannah.gnu.org/releases/atool/?C=M&O=D"
    strategy :page_match
    regex(/href=.*?atool[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
