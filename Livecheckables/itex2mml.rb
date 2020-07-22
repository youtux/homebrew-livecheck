class Itex2mml
  livecheck do
    url "https://golem.ph.utexas.edu/~distler/code/itexToMML/view/head:/itex-src/itex2MML.h"
    regex(/#define ITEX2MML_VERSION &quot;v?(\d+(?:\.\d+)+)&quot;/i)
  end
end
