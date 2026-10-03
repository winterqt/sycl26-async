{ stdenv, fetchFromGitHub, zig_0_17, callPackage }:

stdenv.mkDerivation rec {
  pname = "zls";
  version = "0.16.0-unstable-2026-10-02";

  src = fetchFromGitHub {
    owner = "zigtools";
    repo = "zls";
    rev = "eab2be0fd74443a27662da809b771c4ad0d2afcf";
    hash = "sha256-7BnT4VrhOApLVWDay7w6Jm9z/pNWc4trOLAwu+TfQLk=";
  };

  nativeBuildInputs = [ zig_0_17 ];

  strictDeps = true;

  zigBuildFlags = [
    "--system"
    "${callPackage ./deps.nix { }}"
  ];

  __structuredAttrs = true;
}
