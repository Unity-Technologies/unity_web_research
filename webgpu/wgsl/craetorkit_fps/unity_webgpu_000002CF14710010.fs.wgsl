struct PGlobals {
  x_ObjectId : f32,
  x_PassValue : f32,
}

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = x_12.x_ObjectId;
  let x_20 : f32 = x_12.x_PassValue;
  let x_22 : vec2<f32> = vec2<f32>(x_17, x_20);
  let x_23 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_22.x, x_22.y, x_23.z, x_23.w);
  let x_27 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_27.x, x_27.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

