diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_EnableExternalAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_AlphaTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_AlphaTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_48 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AlphaTex, sampler_AlphaTex, x_23);
  u_xlat0.x = x_24.x;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_36);
  u_xlat1 = x_37;
  let x_39 : f32 = u_xlat0.x;
  let x_42 : f32 = u_xlat1.w;
  u_xlat0.x = (x_39 + -(x_42));
  let x_53 : f32 = x_48.x_EnableExternalAlpha;
  let x_55 : f32 = u_xlat0.x;
  let x_58 : f32 = u_xlat1.w;
  u_xlat1.w = ((x_53 * x_55) + x_58);
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_61 * x_64);
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = u_xlat0;
  let x_73 : vec3<f32> = (vec3<f32>(x_69.w, x_69.w, x_69.w) * vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_77 : f32 = u_xlat0.w;
  SV_Target0.w = x_77;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


