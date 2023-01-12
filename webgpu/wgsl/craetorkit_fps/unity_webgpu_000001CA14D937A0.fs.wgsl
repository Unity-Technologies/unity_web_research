struct PGlobals {
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_36 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target1 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_24.x, x_24.y));
  u_xlat0.x = x_26.y;
  let x_41 : f32 = x_36.x_OcclusionStrength;
  u_xlat3.x = (-(x_41) + 1.0f);
  let x_49 : f32 = u_xlat0.x;
  let x_51 : f32 = x_36.x_OcclusionStrength;
  let x_54 : f32 = u_xlat3.x;
  SV_Target0.w = ((x_49 * x_51) + x_54);
  let x_61 : f32 = x_36.x_Metallic;
  u_xlat0.x = ((-(x_61) * 0.959999979f) + 0.959999979f);
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_74.x, x_74.y));
  u_xlat1 = x_76;
  let x_78 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = x_36.x_Color;
  u_xlat2 = (vec4<f32>(x_78.w, x_78.x, x_78.y, x_78.z) * vec4<f32>(x_83.w, x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = x_36.x_Color;
  u_xlat3 = ((vec3<f32>(x_86.x, x_86.y, x_86.z) * vec3<f32>(x_89.x, x_89.y, x_89.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_97 : f32 = x_36.x_Metallic;
  let x_99 : f32 = x_36.x_Metallic;
  let x_101 : f32 = x_36.x_Metallic;
  let x_102 : vec3<f32> = vec3<f32>(x_97, x_99, x_101);
  let x_107 : vec3<f32> = u_xlat3;
  let x_111 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * x_107) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_112 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec3<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_114.x, x_114.x, x_114.x) * vec3<f32>(x_116.y, x_116.z, x_116.w));
  let x_119 : vec4<f32> = u_xlat2;
  let x_121 : vec3<f32> = u_xlat0;
  let x_122 : vec3<f32> = (vec3<f32>(x_119.x, x_119.x, x_119.x) * x_121);
  let x_123 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_127 : f32 = x_36.x_Glossiness;
  SV_Target1.w = x_127;
  let x_130 : vec4<f32> = vs_TEXCOORD4;
  let x_132 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0.x = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_137 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_137);
  let x_140 : vec3<f32> = u_xlat0;
  let x_142 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0 = (vec3<f32>(x_140.x, x_140.x, x_140.x) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_146 : vec3<f32> = u_xlat0;
  let x_150 : vec3<f32> = ((x_146 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_151 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  SV_Target2.w = 1.0f;
  SV_Target3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}

