rec {

  inputs.stable.url = "github:flox/nixpkgs/stable";
  inputs.unstable.url = "github:flox/nixpkgs/unstable";
  inputs.staging.url = "github:flox/nixpkgs/staging";


  outputs = {...} @ inputs: inputs ;

}
