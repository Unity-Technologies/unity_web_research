diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_SourceSize : vec4<f32>,
  /* @offset(64) */
  x_DownSampleScaleFactor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_SourceSize;
  let x_22 : vec4<f32> = x_13.x_DownSampleScaleFactor;
  u_xlat0 = (vec4<f32>(x_18.z, x_18.w, x_18.z, x_18.w) * vec4<f32>(x_22.z, x_22.w, x_22.z, x_22.w));
  let x_26 : vec4<f32> = u_xlat0;
  let x_35 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((-(vec4<f32>(x_26.z, x_26.w, x_26.x, x_26.w)) * vec4<f32>(0.5f, 0.5f, -0.5f, 0.5f)) + vec4<f32>(x_35.x, x_35.y, x_35.x, x_35.y));
  let x_38 : vec4<f32> = u_xlat0;
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_38 * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_41.x, x_41.y, x_41.x, x_41.y));
  let x_47 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_54 : vec4<f32> = x_13.x_RTHandleScale;
  u_xlat2 = ((-(vec4<f32>(x_47.x, x_47.y, x_47.x, x_47.y)) * vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y));
  let x_57 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_57, x_58);
  let x_60 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat2;
  u_xlat0 = min(x_60, x_61);
  let x_73 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_13.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_73.x, x_73.y), x_80);
  u_xlat2 = x_81;
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : f32 = x_13.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_85.z, x_85.w), x_88);
  u_xlat1 = x_89;
  let x_90 : vec4<f32> = u_xlat1;
  let x_91 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_90 + x_91);
  let x_96 : vec4<f32> = u_xlat0;
  let x_99 : f32 = x_13.x_GlobalMipBias.x;
  let x_100 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_96.x, x_96.y), x_99);
  u_xlat2 = x_100;
  let x_104 : vec4<f32> = u_xlat0;
  let x_107 : f32 = x_13.x_GlobalMipBias.x;
  let x_108 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_104.z, x_104.w), x_107);
  u_xlat0 = x_108;
  let x_109 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_109 + x_110);
  let x_112 : vec4<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_112 + x_113);
  let x_117 : vec4<f32> = u_xlat0;
  SV_Target0 = (x_117 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


