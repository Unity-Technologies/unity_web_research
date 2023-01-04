struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_BlitTexture_TexelSize : vec4<f32>,
  x_SampleOffset : f32,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_BlitTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = x_13.x_SampleOffset;
  u_xlat0 = (vec4<f32>(x_18, x_18, x_18, x_18) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_28 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_30 : vec4<f32> = u_xlat0;
  let x_35 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_28.x, x_28.y, x_28.x, x_28.y) * vec4<f32>(x_30.x, x_30.y, x_30.z, x_30.y)) + vec4<f32>(x_35.x, x_35.y, x_35.x, x_35.y));
  let x_39 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_39.x, x_39.y, x_39.x, x_39.y) * vec4<f32>(x_41.x, x_41.w, x_41.z, x_41.w)) + vec4<f32>(x_44.x, x_44.y, x_44.x, x_44.y));
  let x_58 : vec4<f32> = u_xlat1;
  let x_64 : f32 = x_13.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_58.x, x_58.y), x_64);
  u_xlat2 = x_65;
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : f32 = x_13.x_GlobalMipBias.x;
  let x_73 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_69.z, x_69.w), x_72);
  u_xlat1 = x_73;
  let x_74 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_74 + x_75);
  let x_80 : vec4<f32> = u_xlat0;
  let x_83 : f32 = x_13.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat2 = x_84;
  let x_88 : vec4<f32> = u_xlat0;
  let x_91 : f32 = x_13.x_GlobalMipBias.x;
  let x_92 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_88.z, x_88.w), x_91);
  u_xlat0 = x_92;
  let x_93 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_93 + x_94);
  let x_96 : vec4<f32> = u_xlat0;
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_96 + x_97);
  let x_101 : vec4<f32> = u_xlat0;
  SV_Target0 = (x_101 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
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

