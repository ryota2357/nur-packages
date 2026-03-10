{
  lib,
  rustPlatform,
  source,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "mical";
  inherit (source) src;
  version = builtins.replaceStrings [ "v" ] [ "" ] source.version;

  cargoLock = {
    lockFile = "${finalAttrs.src}/Cargo.lock";
  };

  meta = {
    description = "CLI for the MICAL configuration language";
    homepage = "https://github.com/mical-lang/mical";
    license = lib.licenses.mit;
    mainProgram = "mical";
  };
})
