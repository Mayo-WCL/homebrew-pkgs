require "language/node"

class Alanone < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.2.1.tgz"
	sha256 "f85614cb588db3d828652d07599e52629cef4cf97f71eaa0842105fa6bca359f"
	license "ISC" # or the appropriate license
  
	depends_on "node"
  
	def install
		system "npm", "install", *Language::Node.std_npm_install_args(libexec)
		bin.install_symlink Dir["#{libexec}/bin/*"]
	end
  
	test do
		system "#{bin}/alanone"
	end
end
