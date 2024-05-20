{
  stdenv,
  fetchurl
}:
  stdenv.mkDerivation rec {
    name = "pragmata";
    version = "1.0";
    src = ~/Pragmata;

  /* installPhase = ''
    install -D ${src}/Pragmata_Pro_Bold_Italic.otf $out/share/fonts/opentype/Pragmata_Pro_Bold_Italic.otf
    install -D ${src}/Pragmata_Pro_Bold.otf $out/share/fonts/opentype/Pragmata_Pro_Bold.otf
    install -D ${src}/Pragmata_Pro_Italic.otf $out/share/fonts/opentype/Pragmata_Pro_Italic.otf
    install -D ${src}/Pragmata_Pro_Mono_Bold_Italic.otf $out/share/fonts/opentype/Pragmata_Pro_Mono_Bold_Italic.otf
    install -D ${src}/Pragmata_Pro_Mono_Bold.otf $out/share/fonts/opentype/Pragmata_Pro_Mono_Bold.otf
    install -D ${src}/Pragmata_Pro_Mono_Italic.otf $out/share/fonts/opentype/Pragmata_Pro_Mono_Italic.otf
    install -D ${src}/Pragmata_Pro_Mono_Regular.otf $out/share/fonts/opentype/Pragmata_Pro_Mono_Regular.otf
    install -D ${src}/Pragmata_Pro_Regular.otf $out/share/fonts/opentype/Pragmata_Pro_Regular.otf
  ''; */

    installPhase = ''
    install -D ${src}/Pragmata_Pro_Bold_Italic_Liga.ttf $out/share/fonts/opentype/Pragmata_Pro_Bold_Italic_Liga.ttf
    install -D ${src}/Pragmata_Pro_Bold_Liga.ttf $out/share/fonts/opentype/Pragmata_Pro_Bold_Liga.ttf
    install -D ${src}/Pragmata_Pro_Italic_Liga.ttf $out/share/fonts/opentype/Pragmata_Pro_Italic_Liga.ttf
    install -D ${src}/Pragmata_Pro_Regular_Liga.ttf $out/share/fonts/opentype/Pragmata_Pro_Regular_Liga.ttf
    '';
  }
