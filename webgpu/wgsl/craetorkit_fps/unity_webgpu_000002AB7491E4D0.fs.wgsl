struct PGlobals {
  x_OutlineSoftness : f32,
  x_ScaleRatioA : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_GUIClipTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_GUIClipTexture : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat1 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD0.y;
  u_xlat0.x = dpdxCoarse(x_17);
  let x_24 : f32 = vs_TEXCOORD0.y;
  u_xlat2 = dpdyCoarse(x_24);
  let x_26 : f32 = u_xlat2;
  let x_29 : f32 = u_xlat0.x;
  u_xlat0.x = (abs(x_26) + abs(x_29));
  let x_36 : f32 = vs_TEXCOORD1.y;
  let x_38 : f32 = u_xlat0.x;
  u_xlat0.x = (x_36 / x_38);
  let x_48 : f32 = x_43.x_OutlineSoftness;
  let x_51 : f32 = x_43.x_ScaleRatioA;
  u_xlat2 = (x_48 * x_51);
  let x_53 : f32 = u_xlat2;
  let x_55 : f32 = u_xlat0.x;
  u_xlat2 = ((x_53 * x_55) + 1.0f);
  let x_60 : f32 = u_xlat0.x;
  let x_61 : f32 = u_xlat2;
  u_xlat0.x = (x_60 / x_61);
  let x_74 : vec2<f32> = vs_TEXCOORD0;
  let x_75 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_74);
  u_xlat2 = x_75.w;
  let x_78 : f32 = u_xlat2;
  let x_80 : f32 = vs_TEXCOORD1.x;
  u_xlat2 = (x_78 + -(x_80));
  let x_83 : f32 = u_xlat2;
  let x_85 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_83 * x_85) + 0.5f);
  let x_91 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_91, 0.0f, 1.0f);
  let x_95 : vec4<f32> = u_xlat0;
  let x_98 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (vec4<f32>(x_95.x, x_95.x, x_95.x, x_95.x) * x_98);
  let x_107 : vec2<f32> = vs_TEXCOORD2;
  let x_108 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_107);
  u_xlat1 = x_108.w;
  let x_112 : vec4<f32> = u_xlat0;
  let x_113 : f32 = u_xlat1;
  SV_Target0 = (x_112 * vec4<f32>(x_113, x_113, x_113, x_113));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

