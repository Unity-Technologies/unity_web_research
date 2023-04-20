diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : f32;

var<private> vs_INTERP0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP0;
  let x_13 : vec3<f32> = vs_INTERP0;
  u_xlat0 = dot(x_12, x_13);
  let x_15 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_15);
  let x_20 : f32 = u_xlat0;
  let x_22 : vec3<f32> = vs_INTERP0;
  let x_23 : vec3<f32> = (vec3<f32>(x_20, x_20, x_20) * x_22);
  let x_24 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_23.x, x_23.y, x_23.z, x_24.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


