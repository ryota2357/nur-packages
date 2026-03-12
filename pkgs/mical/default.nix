{
  lib,
  rustPlatform,
  source,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  inherit (source) pname src version;

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
