struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SourceSize : vec4<f32>,
  x_CoCParams : vec4<f32>,
}

@group(0) @binding(2) var x_FullCoCTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_DofTexture : texture_2d<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

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
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, x_22, x_33);
  u_xlat0 = x_34.x;
  let x_36 : f32 = u_xlat0;
  u_xlat0 = (x_36 + -0.5f);
  let x_39 : f32 = u_xlat0;
  let x_44 : vec4<f32> = x_26.x_CoCParams;
  u_xlat0 = dot(vec2<f32>(x_39, x_39), vec2<f32>(x_44.z, x_44.z));
  let x_50 : f32 = x_26.x_SourceSize.w;
  let x_54 : f32 = u_xlat0;
  u_xlat0 = ((-(x_50) * 2.0f) + x_54);
  let x_58 : f32 = x_26.x_SourceSize.w;
  let x_60 : f32 = x_26.x_SourceSize.w;
  u_xlat3 = (x_58 + x_60);
  let x_63 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_63);
  let x_65 : f32 = u_xlat3;
  let x_66 : f32 = u_xlat0;
  u_xlat0 = (x_65 * x_66);
  let x_68 : f32 = u_xlat0;
  u_xlat0 = clamp(x_68, 0.0f, 1.0f);
  let x_71 : f32 = u_xlat0;
  u_xlat3 = ((x_71 * -2.0f) + 3.0f);
  let x_76 : f32 = u_xlat0;
  let x_77 : f32 = u_xlat0;
  u_xlat0 = (x_76 * x_77);
  let x_80 : f32 = u_xlat0;
  let x_81 : f32 = u_xlat3;
  u_xlat6 = (x_80 * x_81);
  let x_89 : vec2<f32> = vs_TEXCOORD0;
  let x_91 : f32 = x_26.x_GlobalMipBias.x;
  let x_92 : vec4<f32> = textureSampleBias(x_DofTexture, sampler_LinearClamp, x_89, x_91);
  u_xlat1 = x_92;
  let x_93 : f32 = u_xlat3;
  let x_94 : f32 = u_xlat0;
  let x_97 : f32 = u_xlat1.w;
  u_xlat0 = ((x_93 * x_94) + x_97);
  let x_99 : f32 = u_xlat6;
  let x_102 : f32 = u_xlat1.w;
  let x_104 : f32 = u_xlat0;
  u_xlat0 = ((-(x_99) * x_102) + x_104);
  let x_108 : f32 = u_xlat1.y;
  let x_110 : f32 = u_xlat1.x;
  u_xlat3 = max(x_108, x_110);
  let x_114 : f32 = u_xlat1.z;
  let x_115 : f32 = u_xlat3;
  u_xlat1.w = max(x_114, x_115);
  let x_123 : vec2<f32> = vs_TEXCOORD0;
  let x_125 : f32 = x_26.x_GlobalMipBias.x;
  let x_126 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_123, x_125);
  u_xlat2 = x_126;
  let x_127 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_127 + -(x_128));
  let x_133 : f32 = u_xlat0;
  let x_135 : vec4<f32> = u_xlat1;
  let x_137 : vec4<f32> = u_xlat2;
  SV_Target0 = ((vec4<f32>(x_133, x_133, x_133, x_133) * x_135) + x_137);
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

