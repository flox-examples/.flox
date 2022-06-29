{ inputs, lib, has, auto, ... }:
{

  ############################################
  #        Company Root Configuration        #
  ############################################

  config = {
    stabilities = {
      default = inputs.nixpkgs-stable;
      stable = inputs.nixpkgs-stable;
      unstable = inputs.nixpkgs-unstable;
      staging = inputs.nixpkgs-staging;
    };

    projects = {
      inherit (inputs.index) company;
      inherit (inputs) floxpkgs;
    };

    adopted = { };
    
    extraPlugins = [
      (inputs.capacitor.plugins.allLocalResources {})
      (inputs.capacitor.plugins.templates {})
    ];
 
  };


  ############################################
  #   Top-Level Re-Exports and Definitions   #
  ############################################

  packages = 
    (auto.reexport inputs.floxpkgs [ "hello-upstream" ])
    # == { 
    #  hello-upstream = {inputs',...}: inputs'.floxpkgs.legacyPackages.hello-upstream;
    #}
    // { };

  apps = { };

  devShells = { };

  lib = {
    testyou = { ... }: lib.trace "you";
    testme = { ... }: lib.testyou "hello";
  };

  index = inputs.index;

}
