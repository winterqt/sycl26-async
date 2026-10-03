let
  pins = import ./npins;
  pkgs = import pins.nixpkgs { };
in
pkgs.mkShell {
  packages = [ pkgs.zig_0_17 (pkgs.callPackage ./zls { }) ];
}
