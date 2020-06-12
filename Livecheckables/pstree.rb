class Pstree
  livecheck do
    url "http://www.thp.uni-duisburg.de/pstree/README"
    regex(/This is pstree V (\d+(?:\.\d+)+)/i)
  end
end
