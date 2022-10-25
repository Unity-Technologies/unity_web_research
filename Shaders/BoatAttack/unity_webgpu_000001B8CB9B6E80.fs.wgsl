struct PGlobals {
  x_OutlineSoftness : f32,
  x_ScaleRatioA : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_57 : PGlobals;

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
  var u_xlat4 : vec2<f32>;
  var u_xlat2 : f32;
  var u_xlat1 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec2<f32> = dpdxCoarse(x_13);
  let x_15 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_14.x, x_14.y, x_15.z, x_15.w);
  let x_19 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = dpdyCoarse(vec2<f32>(x_19.y, x_19.x));
  let x_27 : f32 = u_xlat4.y;
  let x_29 : f32 = u_xlat0.y;
  u_xlat2 = (x_27 * x_29);
  let x_33 : f32 = u_xlat0.x;
  let x_35 : f32 = u_xlat4.x;
  let x_37 : f32 = u_xlat2;
  u_xlat0.x = ((x_33 * x_35) + -(x_37));
  let x_42 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(abs(x_42));
  let x_47 : f32 = u_xlat0.x;
  let x_52 : f32 = vs_TEXCOORD1.y;
  u_xlat0.x = (x_47 * x_52);
  let x_62 : f32 = x_57.x_OutlineSoftness;
  let x_65 : f32 = x_57.x_ScaleRatioA;
  u_xlat2 = (x_62 * x_65);
  let x_67 : f32 = u_xlat2;
  let x_69 : f32 = u_xlat0.x;
  u_xlat2 = ((x_67 * x_69) + 1.0f);
  let x_74 : f32 = u_xlat0.x;
  let x_75 : f32 = u_xlat2;
  u_xlat0.x = (x_74 / x_75);
  let x_88 : vec2<f32> = vs_TEXCOORD0;
  let x_89 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_88);
  u_xlat2 = x_89.w;
  let x_92 : f32 = u_xlat2;
  let x_94 : f32 = vs_TEXCOORD1.x;
  u_xlat2 = (x_92 + -(x_94));
  let x_97 : f32 = u_xlat2;
  let x_99 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_97 * x_99) + 0.5f);
  let x_105 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_105, 0.0f, 1.0f);
  let x_109 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (vec4<f32>(x_109.x, x_109.x, x_109.x, x_109.x) * x_112);
  let x_121 : vec2<f32> = vs_TEXCOORD2;
  let x_122 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_121);
  u_xlat1 = x_122.w;
  let x_126 : vec4<f32> = u_xlat0;
  let x_127 : f32 = u_xlat1;
  SV_Target0 = (x_126 * vec4<f32>(x_127, x_127, x_127, x_127));
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

