struct VGlobals {
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_49 : UnityPerDraw;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_171 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_38 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_38;
  let x_43 : vec3<f32> = in_NORMAL0;
  let x_53 : vec4<f32> = x_49.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_43, vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_59 : vec3<f32> = in_NORMAL0;
  let x_61 : vec4<f32> = x_49.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_59, vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_66 : vec3<f32> = in_NORMAL0;
  let x_69 : vec4<f32> = x_49.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_66, vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_74.x, x_74.y, x_74.z), vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : f32 = u_xlat6;
  u_xlat6 = max(x_79, 1.17549435e-37f);
  let x_82 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_82);
  let x_84 : f32 = u_xlat6;
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : vec3<f32> = (vec3<f32>(x_84, x_84, x_84) * vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_91 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat6 = dot(vec3<f32>(x_91.x, x_91.y, x_91.z), vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : f32 = u_xlat6;
  u_xlat6 = clamp(x_97, 0.0f, 1.0f);
  let x_102 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = vec3<f32>(x_102.x, x_102.y, x_102.z);
  let x_105 : vec4<f32> = x_17.x_MainLightColor;
  let x_109 : vec4<f32> = x_49.unity_LightData;
  let x_111 : vec3<f32> = (vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(x_109.z, x_109.z, x_109.z));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : f32 = u_xlat6;
  let x_117 : vec4<f32> = u_xlat0;
  let x_119 : vec3<f32> = (vec3<f32>(x_115, x_115, x_115) * vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  vs_TEXCOORD3.w = 0.0f;
  let x_126 : vec4<f32> = in_POSITION0;
  let x_129 : vec4<f32> = x_49.unity_ObjectToWorld[1i];
  let x_131 : vec3<f32> = (vec3<f32>(x_126.y, x_126.y, x_126.y) * vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_135 : vec4<f32> = x_49.unity_ObjectToWorld[0i];
  let x_137 : vec4<f32> = in_POSITION0;
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : vec3<f32> = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.x, x_137.x, x_137.x)) + vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_146 : vec4<f32> = x_49.unity_ObjectToWorld[2i];
  let x_148 : vec4<f32> = in_POSITION0;
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.z, x_148.z, x_148.z)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_49.unity_ObjectToWorld[3i];
  let x_161 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) + vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_165 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = x_171.x_MainLightWorldToShadow[0i][1i];
  let x_175 : vec3<f32> = (vec3<f32>(x_165.y, x_165.y, x_165.y) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = x_171.x_MainLightWorldToShadow[0i][0i];
  let x_181 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat1;
  let x_186 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.x, x_181.x, x_181.x)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = x_171.x_MainLightWorldToShadow[0i][2i];
  let x_192 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = ((vec3<f32>(x_190.x, x_190.y, x_190.z) * vec3<f32>(x_192.z, x_192.z, x_192.z)) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = x_171.x_MainLightWorldToShadow[0i][3i];
  let x_206 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  vs_TEXCOORD4.w = 0.0f;
  let x_210 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_210.y, x_210.y, x_210.y, x_210.y) * x_213);
  let x_216 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_217 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_216 * vec4<f32>(x_217.x, x_217.x, x_217.x, x_217.x)) + x_220);
  let x_223 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_224 : vec4<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_223 * vec4<f32>(x_224.z, x_224.z, x_224.z, x_224.z)) + x_227);
  let x_233 : vec4<f32> = u_xlat0;
  let x_235 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_233 + x_235);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD3, vs_TEXCOORD4, gl_Position);
}
