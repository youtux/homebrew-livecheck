class Caffe
  livecheck :url => "https://github.com/BVLC/caffe/releases",
            :regex => %r{Latest.*?href="/BVLC/caffe/tree/v?([0-9\.]+)}m
end
