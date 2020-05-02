class StressNg
  livecheck :url   => "https://kernel.ubuntu.com/~cking/tarballs/stress-ng/",
            :regex => /href="stress-ng-([0-9\.]+)\.t/
end
