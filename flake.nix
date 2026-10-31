{
    description = "";

    # `tack init` populates ./.tack with your pins
    outputs =
        { self, ... }@args:
        let
            inputs = (import ./.tack) { overrides = args.tackOverrides or { }; };
            system = "x86_64-linux";
        in
        {
            packages.${system}.hello = inputs.nixpkgs.legacyPackages.${system}.hello;
        };
}
