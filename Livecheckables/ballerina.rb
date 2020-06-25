class Ballerina
  livecheck do
    url "https://ballerina.io/learn/installing-ballerina/"
    regex(/href=.*?ballerina[._-]v?(\d+(?:\.\d+)+)/i)
  end
end
