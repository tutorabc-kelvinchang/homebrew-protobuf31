class ProtobufAT311 < Formula
  desc "Protocol buffers (Google's data interchange format)"
  homepage "https://protobuf.dev/"
  url "https://github.com/protocolbuffers/protobuf/releases/download/v31.1/protobuf-31.1.tar.gz"
  sha256 "12bfd76d27b9ac3d65c00966901609e020481b9474ef75c7ff4601ac06fa0b82"
  license "BSD-3-Clause"

  # 盡量比照 Homebrew core 的建置方式
  depends_on "cmake" => :build
  depends_on "abseil" # protobuf 31.x 與 abseil 相依（Homebrew core 的新版也是這樣） 

  keg_only :versioned_formula

  def install
    args = std_cmake_args + %W[
      -S .
      -B build
      -Dprotobuf_BUILD_TESTS=OFF
      -Dprotobuf_ABSL_PROVIDER=package
    ]
    system "cmake", *args
    system "cmake", "--build", "build", "--target", "install"
  end

  test do
    assert_match "libprotoc 31.1", shell_output("#{bin}/protoc --version")
  end
end