class Kimwituxx
  livecheck do
    url "https://download.savannah.gnu.org/releases/kimwitu-pp/"
    regex(/href=.*?kimwitu\+\+[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
