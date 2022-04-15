with import <nixpkgs> {};

# Make a new "derivation" that represents our shell
stdenv.mkDerivation {
  name = "FFRLPWWebsite";

  # The packages in the `buildInputs` list will be added to the PATH in our shell
  buildInputs = [
    # cowsay is an arbitary package
    # see https://nixos.org/nixos/packages.html to search for more
    pkgs.cowsay
    pkgs.figlet
    pkgs.lolcat
    pkgs.git
    pkgs.jekyll	
    pkgs.bundler
   # pkgs.rubyPackages.jekyll
 #   pkgs.rubyPackages.mercenary
 #   pkgs.nodePackages.bower
 #   pkgs.nodePackages.grunt-cli
  #  pkgs.nodePackages.npm
	#pkgs.python38Packages.setuptools
 ];
	  shellHook = ''
    figlet "FFWW Build Env" | lolcat --freq 0.5
  '';
}
