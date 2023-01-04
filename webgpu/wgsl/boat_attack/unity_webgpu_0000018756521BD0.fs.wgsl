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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat4 : f32;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_SSAOParams.z;
  u_xlat0.x = (1.0f / x_21);
  let x_26 : vec2<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_14.x_SourceSize;
  u_xlat0 = (vec2<f32>(x_26.x, x_26.x) * vec2<f32>(x_31.w, x_31.z));
  let x_36 : vec2<f32> = u_xlat0;
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  let x_44 : vec2<f32> = ((x_36 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_42.y, x_42.x));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_45.x, x_45.y, x_44.x, x_44.y);
  let x_47 : vec2<f32> = u_xlat0;
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec2<f32> = ((-(vec2<f32>(x_47.y, x_47.x)) * vec2<f32>(0.5f, 0.5f)) + x_51);
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_52.x, x_52.y, x_53.z, x_53.w);
  let x_65 : vec4<f32> = u_xlat1;
  let x_69 : f32 = x_14.x_GlobalMipBias.x;
  let x_70 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_65.w, x_65.z), x_69);
  u_xlat0.x = x_70.x;
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_14.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_77.x, x_77.z), x_80);
  u_xlat2 = x_81.x;
  let x_87 : vec4<f32> = u_xlat1;
  let x_90 : f32 = x_14.x_GlobalMipBias.x;
  let x_91 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_87.w, x_87.y), x_90);
  u_xlat4 = x_91.x;
  let x_97 : vec4<f32> = u_xlat1;
  let x_100 : f32 = x_14.x_GlobalMipBias.x;
  let x_101 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_97.x, x_97.y), x_100);
  u_xlat6 = x_101.x;
  let x_104 : f32 = u_xlat0.x;
  let x_105 : f32 = u_xlat2;
  u_xlat0.x = (x_104 + x_105);
  let x_108 : f32 = u_xlat4;
  let x_110 : f32 = u_xlat0.x;
  u_xlat0.x = (x_108 + x_110);
  let x_113 : f32 = u_xlat6;
  let x_115 : f32 = u_xlat0.x;
  u_xlat0.x = (x_113 + x_115);
  let x_121 : f32 = u_xlat0.x;
  SV_Target0.w = ((-(x_121) * 0.25f) + 1.0f);
  let x_132 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z, x_132.w);
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

