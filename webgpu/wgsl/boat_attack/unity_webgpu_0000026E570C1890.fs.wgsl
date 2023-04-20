diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_SSAOParams : vec4<f32>,
  /* @offset(32) */
  x_SourceSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_BlitTexture : sampler;

var<private> u_xlat2 : f32;

var<private> SV_Target0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_SSAOParams.z;
  u_xlat0.x = (1.0f / x_21);
  let x_27 : f32 = u_xlat0.x;
  let x_30 : f32 = x_14.x_SourceSize.z;
  u_xlat0.x = (x_27 * x_30);
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : vec2<f32> = (vec2<f32>(x_33.x, x_33.x) * vec2<f32>(0.53804999589920043945f, 2.06277990341186523438f));
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_38.x, x_39.y, x_38.y, x_39.w);
  u_xlat0.y = 0.0f;
  u_xlat0.w = 0.0f;
  let x_47 : vec4<f32> = u_xlat0;
  let x_50 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (x_47 + vec4<f32>(x_50.x, x_50.y, x_50.x, x_50.y));
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (-(x_53) + vec4<f32>(x_55.x, x_55.y, x_55.x, x_55.y));
  let x_68 : vec4<f32> = u_xlat1;
  let x_72 : f32 = x_14.x_GlobalMipBias.x;
  let x_73 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_68.z, x_68.w), x_72);
  u_xlat1.z = x_73.x;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : f32 = x_14.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.x;
  let x_89 : vec4<f32> = u_xlat0;
  let x_92 : f32 = x_14.x_GlobalMipBias.x;
  let x_93 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_89.z, x_89.w), x_92);
  u_xlat0.z = x_93.x;
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : f32 = x_14.x_GlobalMipBias.x;
  let x_103 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_99.x, x_99.y), x_102);
  u_xlat0.x = x_103.x;
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec2<f32> = (vec2<f32>(x_106.x, x_106.z) + vec2<f32>(x_108.x, x_108.z));
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_111.w);
  let x_115 : f32 = u_xlat0.y;
  u_xlat2 = (x_115 * 0.05091999843716621399f);
  let x_121 : f32 = u_xlat0.x;
  let x_124 : f32 = u_xlat2;
  SV_Target0 = ((x_121 * 0.44907999038696289062f) + x_124);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


