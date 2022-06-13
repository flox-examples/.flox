rec {

  inputs.company.url = "githug:flox-examples/company";
  inputs.company.inputs.capacitor.follows = "capacitor";

  outputs = {self, capacitor, ...} @ inputs: inputs ;

}
