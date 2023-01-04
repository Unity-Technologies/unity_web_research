struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_BlitTexture_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  u_xlat0.x = 0.0f;
  let x_23 : vec4<f32> = x_18.x_BlitTexture_TexelSize;
  let x_28 : vec2<f32> = (vec2<f32>(x_23.y, x_23.y) * vec2<f32>(3.230769157f, 1.384615421f));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_28.x, x_29.z, x_28.y);
  let x_32 : vec4<f32> = u_xlat0;
  let x_37 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (-(vec4<f32>(x_32.x, x_32.y, x_32.x, x_32.w)) + vec4<f32>(x_37.x, x_37.y, x_37.x, x_37.y));
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (vec4<f32>(x_40.x, x_40.w, x_40.x, x_40.y) + vec4<f32>(x_42.x, x_42.y, x_42.x, x_42.y));
  let x_58 : vec4<f32> = u_xlat1;
  let x_63 : f32 = x_18.x_GlobalMipBias.x;
  let x_64 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_58.z, x_58.w), x_63);
  u_xlat2 = vec3<f32>(x_64.x, x_64.y, x_64.z);
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : f32 = x_18.x_GlobalMipBias.x;
  let x_73 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_69.x, x_69.y), x_72);
  let x_74 : vec3<f32> = vec3<f32>(x_73.x, x_73.y, x_73.z);
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_77 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_77 * vec3<f32>(0.31621623f, 0.31621623f, 0.31621623f));
  let x_81 : vec4<f32> = u_xlat1;
  let x_86 : vec3<f32> = u_xlat2;
  let x_87 : vec3<f32> = ((vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(0.07027027f, 0.07027027f, 0.07027027f)) + x_86);
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_93 : vec2<f32> = vs_TEXCOORD0;
  let x_95 : f32 = x_18.x_GlobalMipBias.x;
  let x_96 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_93, x_95);
  u_xlat2 = vec3<f32>(x_96.x, x_96.y, x_96.z);
  let x_98 : vec3<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat1;
  let x_104 : vec3<f32> = ((x_98 * vec3<f32>(0.227027029f, 0.227027029f, 0.227027029f)) + vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_113 : f32 = x_18.x_GlobalMipBias.x;
  let x_114 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_110.x, x_110.y), x_113);
  u_xlat2 = vec3<f32>(x_114.x, x_114.y, x_114.z);
  let x_119 : vec4<f32> = u_xlat0;
  let x_122 : f32 = x_18.x_GlobalMipBias.x;
  let x_123 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_119.z, x_119.w), x_122);
  let x_124 : vec3<f32> = vec3<f32>(x_123.x, x_123.y, x_123.z);
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_127 : vec3<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec3<f32> = ((x_127 * vec3<f32>(0.31621623f, 0.31621623f, 0.31621623f)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_136 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = u_xlat1;
  let x_141 : vec3<f32> = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(0.07027027f, 0.07027027f, 0.07027027f)) + vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  SV_Target0.w = 1.0f;
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

