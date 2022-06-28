struct PGlobals {
  x_Level : f32,
}

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_cube<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_27 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_32 : f32 = x_27.x_Level;
  let x_33 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec3<f32>(x_23.x, x_23.y, x_23.z), x_32);
  SV_Target0 = x_33;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

