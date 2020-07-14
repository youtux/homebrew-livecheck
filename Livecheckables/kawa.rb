class Kawa
  livecheck do
    url "https://ftp.gnu.org/gnu/kawa"
    regex(/href=.*?kawa-(\d+\.\d+(\.\d+)?)\.zip/)
  end
end
