{
  description = "MATHE MLL FLAKE";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

 outputs = { self , nixpkgs ,... }: let
    system = "x86_64-linux";
    #system = "x86_64-darwin"; 
  in {
    devShells."${system}".default = let
      pkgs = import nixpkgs {
        inherit system;
      };
    in pkgs.mkShell {
      packages = with pkgs; [
      jdk # Latest Java 
      elmPackages.elm
      ghc
      jupyter-all
      #python3Full #  
      #texliveFull #  Nur für Latexbau      
      ];

      #shellHook = ''
      #'';
    };
  };

}
