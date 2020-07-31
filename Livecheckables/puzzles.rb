class Puzzles
  livecheck do
    url "https://www.freshports.org/games/sgt-puzzles"
    regex(/puzzles[._-]v?(\d{6,8})\..*?\.t/i)
  end
end
