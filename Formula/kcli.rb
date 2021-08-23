# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kcli < Formula
  desc ""
  homepage ""
  url "https://github.com/michael-magao/homebrew-tools/raw/main/kcli-0.0.1.tar.gz"
  sha256 "e81f511c42a7b51a1888c1b7e1ef6748f93cb216ea5580a24604f95bda24c2f4"
  license ""

  depends_on "ansible"

  def install
    prefix.install Dir["bin"]
    var.install Dir["var/*"]
    etc.install Dir["etc/*"]
    bin.install Dir["bin"]
    system "sh start.sh"
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
