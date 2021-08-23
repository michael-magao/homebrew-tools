#Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class KcliAT2 < Formula
  desc ""
  homepage ""
  url "https://github.com/michael-magao/homebrew-tools/raw/main/kcli-0.0.2.tar.gz"
  sha256 "b35ca850816c67683043e1faa4eef7522e452ad344cb0e9ebf66a15b540aeefa"
  license ""

  depends_on "ansible"

  def install
    bin.install Dir["bin/*"]
    etc.install Dir["etc/*"]
    
    system "./start.sh"
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
