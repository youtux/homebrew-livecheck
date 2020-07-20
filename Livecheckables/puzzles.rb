class Puzzles
  livecheck do
    url "https://www.freshports.org/games/sgt-puzzles"
    regex(/puzzles-([0-9.]+)\..*?\.t/i)
  end
end
