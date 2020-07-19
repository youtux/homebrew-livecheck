class Efl
  livecheck do
    url "https://download.enlightenment.org/rel/libs/efl/"
    regex(/href=.*?efl-([0-9,.]+)\.t/i)
  end
end
