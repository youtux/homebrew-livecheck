class Kawa
  livecheck do
    url "https://ftp.gnu.org/gnu/kawa"
    strategy :page_match
    regex(/href=.*?kawa[._-]v?(\d+\.\d+(\.\d+)?)\.zip/i)
  end
end
