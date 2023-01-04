struct PGlobals {
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_34 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_24.x;
  let x_30 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_34.x_Color;
  u_xlat0 = (vec4<f32>(x_30.x, x_30.x, x_30.x, x_30.x) * x_39);
  let x_48 : vec4<f32> = vs_TEXCOORD2;
  let x_50 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_48.x, x_48.y));
  u_xlat1 = vec2<f32>(x_50.y, x_50.z);
  let x_52 : vec4<f32> = u_xlat0;
  let x_53 : vec2<f32> = u_xlat1;
  u_xlat0 = (x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x));
  let x_58 : vec2<f32> = u_xlat1;
  let x_60 : vec4<f32> = u_xlat0;
  SV_Target0 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_60);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

