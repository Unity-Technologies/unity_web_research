struct PGlobals {
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_36 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_EmissionMap : sampler;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_24.x, x_24.y));
  u_xlat0.x = x_26.y;
  let x_41 : f32 = x_36.x_OcclusionStrength;
  u_xlat2.x = (-(x_41) + 1.0f);
  let x_49 : f32 = u_xlat0.x;
  let x_51 : f32 = x_36.x_OcclusionStrength;
  let x_54 : f32 = u_xlat2.x;
  SV_Target0.w = ((x_49 * x_51) + x_54);
  let x_61 : f32 = x_36.x_Metallic;
  u_xlat0.x = ((-(x_61) * 0.959999979f) + 0.959999979f);
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_72.x, x_72.y));
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_77 : vec3<f32> = u_xlat2;
  let x_81 : vec4<f32> = x_36.x_Color;
  u_xlat1 = (x_77 * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_85 : vec4<f32> = x_36.x_Color;
  let x_87 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_85.x, x_85.y, x_85.z) * x_87) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_94 : f32 = x_36.x_Metallic;
  let x_96 : f32 = x_36.x_Metallic;
  let x_98 : f32 = x_36.x_Metallic;
  let x_99 : vec3<f32> = vec3<f32>(x_94, x_96, x_98);
  let x_104 : vec3<f32> = u_xlat2;
  let x_108 : vec3<f32> = ((vec3<f32>(x_99.x, x_99.y, x_99.z) * x_104) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_109 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec3<f32> = u_xlat0;
  let x_113 : vec3<f32> = u_xlat1;
  let x_114 : vec3<f32> = (vec3<f32>(x_111.x, x_111.x, x_111.x) * x_113);
  let x_115 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_119 : f32 = x_36.x_Glossiness;
  SV_Target1.w = x_119;
  let x_122 : vec4<f32> = vs_TEXCOORD4;
  let x_124 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0.x = dot(vec3<f32>(x_122.x, x_122.y, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_129);
  let x_132 : vec3<f32> = u_xlat0;
  let x_134 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0 = (vec3<f32>(x_132.x, x_132.x, x_132.x) * vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_138 : vec3<f32> = u_xlat0;
  let x_142 : vec3<f32> = ((x_138 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_143 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  SV_Target2.w = 1.0f;
  let x_151 : vec4<f32> = vs_TEXCOORD0;
  let x_153 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_151.x, x_151.y));
  u_xlat0 = vec3<f32>(x_153.x, x_153.y, x_153.z);
  let x_156 : vec3<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_36.x_EmissionColor;
  let x_161 : vec3<f32> = (x_156 * vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  SV_Target3.w = 1.0f;
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

