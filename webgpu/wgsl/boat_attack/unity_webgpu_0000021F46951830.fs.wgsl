struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_Grain_Params : vec2<f32>,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearRepeat : sampler;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_Grain_TilingParams;
  let x_25 : vec4<f32> = x_16.x_Grain_TilingParams;
  u_xlat0 = ((x_12 * vec2<f32>(x_21.x, x_21.y)) + vec2<f32>(x_25.z, x_25.w));
  let x_38 : vec2<f32> = u_xlat0;
  let x_44 : f32 = x_16.x_GlobalMipBias.x;
  let x_45 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, x_38, x_44);
  u_xlat0.x = x_45.w;
  let x_51 : f32 = u_xlat0.x;
  u_xlat0.x = (x_51 + -0.5f);
  let x_56 : f32 = u_xlat0.x;
  let x_58 : f32 = u_xlat0.x;
  u_xlat0.x = (x_56 + x_58);
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : f32 = x_16.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_69, x_71);
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_72.z);
  let x_75 : vec2<f32> = u_xlat0;
  let x_77 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_75.x, x_75.x, x_75.x) * x_77);
  let x_79 : vec3<f32> = u_xlat1;
  let x_83 : vec2<f32> = x_16.x_Grain_Params;
  u_xlat1 = (x_79 * vec3<f32>(x_83.x, x_83.x, x_83.x));
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat0.x = dot(x_86, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_94 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_94);
  let x_99 : f32 = x_16.x_Grain_Params.y;
  let x_101 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_99 * -(x_101)) + 1.0f);
  let x_109 : vec3<f32> = u_xlat1;
  let x_110 : vec2<f32> = u_xlat0;
  let x_113 : vec3<f32> = u_xlat2;
  let x_114 : vec3<f32> = ((x_109 * vec3<f32>(x_110.x, x_110.x, x_110.x)) + x_113);
  let x_115 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
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

