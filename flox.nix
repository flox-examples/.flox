{ inputs, lib,... }:
{
  
  ############################################
  #        Company Root Configuration        #
  ############################################

  __reflect.systems = ["aarch64-darwin" "aarch64-linux" "x86_64-darwin" "x86_64-linux"];
  __reflect.stabilities = {
      default = inputs.nixpkgs-stable;
      stable = inputs.nixpkgs-stable;
      unstable = inputs.nixpkgs-unstable;
      staging =  inputs.nixpkgs-staging;
    };

  __reflect.projects = { inherit (inputs.index) company; };
  __reflect.adopted =  { };


  ############################################
  #   Top-Level Re-Exports and Definitions   #
  ############################################

  packages = {};

  apps = {};

  devShells = {};

  lib = {
    testyou = {...}: lib.trace "you";  
    testme = {...}: lib.testyou "hello";
  };

  index = inputs.index;

}
