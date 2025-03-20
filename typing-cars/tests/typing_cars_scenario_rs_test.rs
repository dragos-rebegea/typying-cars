use multiversx_sc_scenario::*;

#[test]
fn empty_rs() {
    let mut world = ScenarioWorld::new();
    world.register_contract("file:output/typing-cars.wasm", typing_cars::ContractBuilder);
}
