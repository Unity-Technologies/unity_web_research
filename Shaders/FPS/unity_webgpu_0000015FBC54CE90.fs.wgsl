struct PGlobals {
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(1) var x_DepthTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DepthTex : sampler;

var<private> gl_FragDepth : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_27 : vec4<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.x_Color;
  SV_Target0 = (x_27 * x_35);
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = textureSample(x_DepthTex, sampler_DepthTex, x_42);
  u_xlat0.x = x_43.x;
  let x_52 : f32 = u_xlat0.x;
  gl_FragDepth = x_52;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @builtin(frag_depth)
  gl_FragDepth_1 : f32,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, gl_FragDepth);
}

