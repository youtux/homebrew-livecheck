class ClangFormat
  livecheck :url   => "https://github.com/llvm/llvm-project/releases/latest",
            :regex => %r{href=.+?/tag/llvmorg-v?(\d+(?:\.\d+)+)}i
end
