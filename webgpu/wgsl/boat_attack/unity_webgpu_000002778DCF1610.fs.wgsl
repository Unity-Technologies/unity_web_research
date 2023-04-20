diagnostic(off, derivative_uniformity);

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : f32 = vs_TEXCOORD1;
  let x_14 : vec3<f32> = vec3<f32>(x_12, x_12, x_12);
  let x_15 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_14.x, x_14.y, x_14.z, x_15.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


