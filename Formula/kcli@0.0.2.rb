# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class KcliAT002 < Formula
  desc ""
  homepage ""
  url "https://github.com/michael-magao/homebrew-tools/raw/main/kcli-0.0.2.tar.gz"
  sha256 "667a5bf21aaac0594e9c27ba30c7a8abf16d009bffb5137e53356c520f7d1582"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    prefix.install Dir["bin"]
    prefix.install Dir["conf"]
    prefix.install Dir["example"]
    prefix.install Dir["lib"]
    prefix.install Dir["tmp"]
    prefix.install Dir["log"]
    system "sh start.sh"
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test kcli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
