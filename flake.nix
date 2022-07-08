{

  description = "Company root";
  # inputs.capacitor.url = "/Volumes/Projects/Flox/tests/minicapacitor/capacitor";
  inputs.capacitor.url = "git+ssh://git@github.com/flox/capacitor?ref=v0";
  inputs.capacitor.inputs.root.follows = "/";


  inputs.nixpkgs-stable.url = "github:flox/nixpkgs/stable";
  inputs.nixpkgs-unstable.url = "github:flox/nixpkgs/unstable";
  inputs.nixpkgs-staging.url = "github:flox/nixpkgs/staging";

  inputs.index.url = "github:flox-examples/.index"; 
  inputs.index.inputs.capacitor.follows = "capacitor";

  inputs.floxpkgs.url = "github:flox/floxpkgs-internal/devshells-minicap";
  inputs.floxpkgs.inputs.capacitor.follows = "capacitor";

  outputs = { capacitor, ... } @ args: capacitor args (import ./flox.nix);
}
