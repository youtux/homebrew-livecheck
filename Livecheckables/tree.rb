class Tree
  livecheck do
    url "http://mama.indstate.edu/users/ice/tree/src"
    regex(/href=.*?tree[._-]v?(.*?)\.t/i)
  end
end
