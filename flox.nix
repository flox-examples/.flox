{ inputs }:
  
{
  
  ############################################
  #        Company Root Configuration        #
  ############################################

  __reflect.stabilities = inputs.nixpkgs // {
    default = inputs.nixpkgs.stable;
  };
  __reflect.systems = ["aarch64-darwin" "aarch64-linux" "x86_64-darwin" "x86_64-linux"];
  __reflect.projects = inputs.projects;
  __reflect.adopted = inputs.adopted;

  ############################################
  #   Top-Level Re-Exports and Definitions   #
  ############################################

  packages = {};

  apps = {};

  devShells = {};

  lib = {};

}
