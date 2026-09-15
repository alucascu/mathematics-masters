{
  description = "Asher's NMU Mathematics Masters Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
      tex = pkgs.texliveSmall.withPackages (
        ps:
          with ps; [
            amsmath
            amscls # contains amsthm
            amsfonts # contains amssymb
            booktabs
            units
            tools # contains multicol
            lipsum
            fancyvrb
            geometry
            mathtools
            enumitem
            fancyhdr
            xcolor
            hyperref
            psnfss
            graphics # contains graphicx
            titlesec
            setspace
            microtype
            biblatex
            subfiles
          ]
      );
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [tex pkgs.python3];

        packages = with pkgs; [
          typst
          pandoc
          typstyle
          just
          git-lfs
          typos
          biber

          ocrmypdf
          img2pdf
          qpdf
          exiftool
        ];

        TEXINPUTS = "./tex//:";
      };
    });
}
