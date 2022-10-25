struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SSAOParams : vec4<f32>,
  x_SourceSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_BlitTexture : sampler;

var<private> SV_Target0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_SSAOParams.z;
  u_xlat0.x = (1.0f / x_21);
  let x_27 : f32 = u_xlat0.x;
  let x_31 : f32 = x_14.x_SourceSize.w;
  u_xlat0.y = (x_27 * x_31);
  u_xlat0.x = 0.0f;
  let x_41 : vec4<f32> = u_xlat0;
  let x_46 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(0.538049996f, 0.538049996f, 2.062779903f, 2.062779903f) * vec4<f32>(x_41.x, x_41.y, x_41.x, x_41.y)) + vec4<f32>(x_46.x, x_46.y, x_46.x, x_46.y));
  let x_52 : vec4<f32> = u_xlat0;
  let x_55 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(-0.538049996f, -0.538049996f, -2.062779903f, -2.062779903f) * vec4<f32>(x_52.x, x_52.y, x_52.x, x_52.y)) + vec4<f32>(x_55.x, x_55.y, x_55.x, x_55.y));
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
  u_xlat2 = (x_115 * 0.050919998f);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat2;
  u_xlat0.x = ((x_119 * 0.44907999f) + x_122);
  let x_128 : f32 = u_xlat0.x;
  SV_Target0 = (-(x_128) + 1.0f);
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

