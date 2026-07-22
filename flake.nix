{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        typst
        tectonic
        pandoc
        typstyle
        ocrmypdf
        img2pdf
        qpdf
        exiftool
        typos
        git-lfs
        just
      ];
    };
  };
}
