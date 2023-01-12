struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
  x_MaxCoC : f32,
}

@group(0) @binding(1) var x_CoCTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_CoCTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(2) var x_DepthOfFieldTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DepthOfFieldTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat3 : f32;
  var u_xlat6 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_CoCTex, sampler_CoCTex, x_22);
  u_xlat0 = x_24.x;
  let x_28 : f32 = u_xlat0;
  u_xlat0 = (x_28 + -0.5f);
  let x_31 : f32 = u_xlat0;
  let x_32 : f32 = u_xlat0;
  u_xlat0 = (x_31 + x_32);
  let x_43 : f32 = x_37.x_MainTex_TexelSize.y;
  let x_45 : f32 = x_37.x_MainTex_TexelSize.y;
  u_xlat3 = (x_43 + x_45);
  let x_47 : f32 = u_xlat0;
  let x_50 : f32 = x_37.x_MaxCoC;
  let x_52 : f32 = u_xlat3;
  u_xlat0 = ((x_47 * x_50) + -(x_52));
  let x_56 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_56);
  let x_58 : f32 = u_xlat3;
  let x_59 : f32 = u_xlat0;
  u_xlat0 = (x_58 * x_59);
  let x_61 : f32 = u_xlat0;
  u_xlat0 = clamp(x_61, 0.0f, 1.0f);
  let x_64 : f32 = u_xlat0;
  u_xlat3 = ((x_64 * -2.0f) + 3.0f);
  let x_69 : f32 = u_xlat0;
  let x_70 : f32 = u_xlat0;
  u_xlat0 = (x_69 * x_70);
  let x_73 : f32 = u_xlat0;
  let x_74 : f32 = u_xlat3;
  u_xlat6 = (x_73 * x_74);
  let x_83 : vec2<f32> = vs_TEXCOORD1;
  let x_84 : vec4<f32> = textureSample(x_DepthOfFieldTex, sampler_DepthOfFieldTex, x_83);
  u_xlat1 = x_84;
  let x_85 : f32 = u_xlat3;
  let x_86 : f32 = u_xlat0;
  let x_90 : f32 = u_xlat1.w;
  u_xlat0 = ((x_85 * x_86) + x_90);
  let x_92 : f32 = u_xlat6;
  let x_95 : f32 = u_xlat1.w;
  let x_97 : f32 = u_xlat0;
  u_xlat0 = ((-(x_92) * x_95) + x_97);
  let x_100 : f32 = u_xlat1.y;
  let x_102 : f32 = u_xlat1.x;
  u_xlat3 = max(x_100, x_102);
  let x_106 : f32 = u_xlat1.z;
  let x_107 : f32 = u_xlat3;
  u_xlat1.w = max(x_106, x_107);
  let x_116 : vec2<f32> = vs_TEXCOORD1;
  let x_117 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_116);
  u_xlat2 = x_117;
  let x_118 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_118 + -(x_119));
  let x_124 : f32 = u_xlat0;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat2;
  SV_Target0 = ((vec4<f32>(x_124, x_124, x_124, x_124) * x_126) + x_128);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

