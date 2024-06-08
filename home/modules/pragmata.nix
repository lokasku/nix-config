{
  stdenv,
  fetchurl
}:
  stdenv.mkDerivation rec {
    name = "pragmata";
    version = "1.0";
    src = ~/Pragmata;

    installPhase = ''
    install -D ${src}/Pragmata_Pro_Bold_Italic_Liga.ttf $out/share/fonts/opentype/Pragmata_Pro_Bold_Italic_Liga.ttf
    install -D ${src}/Pragmata_Pro_Bold_Liga.ttf $out/share/fonts/opentype/Pragmata_Pro_Bold_Liga.ttf
    install -D ${src}/Pragmata_Pro_Italic_Liga.ttf $out/share/fonts/opentype/Pragmata_Pro_Italic_Liga.ttf
    install -D ${src}/Pragmata_Pro_Regular_Liga.ttf $out/share/fonts/opentype/Pragmata_Pro_Regular_Liga.ttf
    '';
  }
