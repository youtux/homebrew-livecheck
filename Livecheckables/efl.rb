class Efl
  livecheck do
    url "https://download.enlightenment.org/rel/libs/efl/"
    regex(/href=.*?efl-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
