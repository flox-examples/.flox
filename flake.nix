{

  description = "Company root";

  inputs.capacitor.url = "git+ssh://git@github.com/flox/minicapacitor?ref=main&dir=capacitor";
  inputs.capacitor.inputs.root.follows = "/";

  inputs.nixpkgs.url = "path:./nixpkgs";
  inputs.projects.url = "path:./projects";
  inputs.projects.inputs.capacitor.follows = "capacitor";

  
  
  outputs = { capacitor, ... } @ args: capacitor args ( {lib, auto,...}: 
    let nixpkgs = auto.callSubflake "nixpkgs" {};
        projects = auto.callSubflake "projects" {};
        adopted = auto.callSubflake "adopted" {};

    in
    auto.callPackageWith ./flox.nix { inputs = { inherit nixpkgs projects; }; } {}
  );
}
