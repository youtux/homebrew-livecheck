class Kawa
  livecheck do
    url "https://ftp.gnu.org/gnu/kawa"
    regex(/href=.*?kawa[._-]v?(\d+\.\d+(\.\d+)?)\.zip/i)
  end
end
