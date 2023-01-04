type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  unity_CameraInvProjection : mat4x4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_61 : PGlobals;

@group(0) @binding(2) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat2 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_32 : f32 = u_xlat0.x;
  u_xlat0.z = (-(x_32) + 1.0f);
  let x_38 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec2<f32> = vec2<f32>(x_38.z, x_38.w);
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_39.x, x_39.y, x_40.z, x_40.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_50 : vec3<f32> = ((vec3<f32>(x_43.x, x_43.y, x_43.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_51 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_50.x, x_50.y, x_50.z, x_51.w);
  let x_54 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = x_61.unity_CameraInvProjection[1i];
  u_xlat1 = (vec4<f32>(x_54.y, x_54.y, x_54.y, x_54.y) * x_67);
  let x_70 : vec4<f32> = x_61.unity_CameraInvProjection[0i];
  let x_71 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_78 : vec4<f32> = x_61.unity_CameraInvProjection[2i];
  let x_79 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_78 * vec4<f32>(x_79.z, x_79.z, x_79.z, x_79.z)) + x_82);
  let x_84 : vec4<f32> = u_xlat0;
  let x_87 : vec4<f32> = x_61.unity_CameraInvProjection[3i];
  u_xlat0 = (x_84 + x_87);
  let x_89 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat0;
  let x_93 : vec3<f32> = (vec3<f32>(x_89.x, x_89.y, x_89.z) / vec3<f32>(x_91.w, x_91.w, x_91.w));
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_96 : vec4<f32> = u_xlat0;
  let x_99 : vec4<f32> = x_61.unity_CameraToWorld[1i];
  u_xlat1 = (vec4<f32>(x_96.y, x_96.y, x_96.y, x_96.y) * x_99);
  let x_102 : vec4<f32> = x_61.unity_CameraToWorld[0i];
  let x_103 : vec4<f32> = u_xlat0;
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_102 * vec4<f32>(x_103.x, x_103.x, x_103.x, x_103.x)) + x_106);
  let x_109 : vec4<f32> = x_61.unity_CameraToWorld[2i];
  let x_110 : vec4<f32> = u_xlat0;
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_109 * -(vec4<f32>(x_110.z, x_110.z, x_110.z, x_110.z))) + x_114);
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec4<f32> = x_61.unity_CameraToWorld[3i];
  u_xlat0 = (x_116 + x_118);
  let x_120 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = x_61.unity_WorldToShadow[0i][1i];
  let x_125 : vec3<f32> = (vec3<f32>(x_120.y, x_120.y, x_120.y) * vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : vec4<f32> = x_61.unity_WorldToShadow[0i][0i];
  let x_131 : vec4<f32> = u_xlat0;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = ((vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(x_131.x, x_131.x, x_131.x)) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec4<f32> = x_61.unity_WorldToShadow[0i][2i];
  let x_142 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.z, x_142.z, x_142.z)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = x_61.unity_WorldToShadow[0i][3i];
  let x_153 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.w, x_153.w, x_153.w)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_163 : vec4<f32> = u_xlat0;
  let x_164 : vec2<f32> = vec2<f32>(x_163.x, x_163.y);
  let x_166 : f32 = u_xlat0.z;
  txVec0 = vec3<f32>(x_164.x, x_164.y, x_166);
  let x_178 : vec3<f32> = txVec0;
  let x_181 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_178.xy, x_178.z);
  u_xlat0.x = x_181;
  let x_186 : f32 = x_61.x_LightShadowData.x;
  u_xlat2 = (-(x_186) + 1.0f);
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : f32 = u_xlat2;
  let x_197 : vec4<f32> = x_61.x_LightShadowData;
  SV_Target0 = ((vec4<f32>(x_191.x, x_191.x, x_191.x, x_191.x) * vec4<f32>(x_193, x_193, x_193, x_193)) + vec4<f32>(x_197.x, x_197.x, x_197.x, x_197.x));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

