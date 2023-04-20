diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(16) */
  x_MainLightColor : vec4<f32>,
  /* @offset(32) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(96) */
  x_MainTex_ST : vec4<f32>,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_37 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_182 : LightShadows;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_31 : vec2<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_37.unity_LightmapST;
  let x_44 : vec4<f32> = x_37.unity_LightmapST;
  vs_TEXCOORD1 = ((x_31 * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_51 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_51;
  let x_57 : vec3<f32> = in_NORMAL0;
  let x_61 : vec4<f32> = x_37.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_57, vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_67 : vec3<f32> = in_NORMAL0;
  let x_69 : vec4<f32> = x_37.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_67, vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : vec3<f32> = in_NORMAL0;
  let x_77 : vec4<f32> = x_37.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_74, vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : f32 = u_xlat6;
  u_xlat6 = max(x_87, 1.17549435e-38f);
  let x_90 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_90);
  let x_92 : f32 = u_xlat6;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat6 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat6;
  u_xlat6 = clamp(x_105, 0.0f, 1.0f);
  let x_111 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = vec3<f32>(x_111.x, x_111.y, x_111.z);
  let x_114 : vec4<f32> = x_17.x_MainLightColor;
  let x_118 : vec4<f32> = x_37.unity_LightData;
  let x_120 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.z) * vec3<f32>(x_118.z, x_118.z, x_118.z));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : f32 = u_xlat6;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = (vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  vs_TEXCOORD3.w = 0.0f;
  vs_TEXCOORD4.w = 0.0f;
  let x_137 : vec4<f32> = in_POSITION0;
  let x_140 : vec4<f32> = x_37.unity_ObjectToWorld[1i];
  let x_142 : vec3<f32> = (vec3<f32>(x_137.y, x_137.y, x_137.y) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_146 : vec4<f32> = x_37.unity_ObjectToWorld[0i];
  let x_148 : vec4<f32> = in_POSITION0;
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec4<f32> = x_37.unity_ObjectToWorld[2i];
  let x_159 : vec4<f32> = in_POSITION0;
  let x_162 : vec4<f32> = u_xlat0;
  let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.z, x_159.z, x_159.z)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  let x_172 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) + vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = x_182.x_MainLightWorldToShadow[0i][1i];
  let x_186 : vec3<f32> = (vec3<f32>(x_176.y, x_176.y, x_176.y) * vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = x_182.x_MainLightWorldToShadow[0i][0i];
  let x_192 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = ((vec3<f32>(x_190.x, x_190.y, x_190.z) * vec3<f32>(x_192.x, x_192.x, x_192.x)) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : vec4<f32> = x_182.x_MainLightWorldToShadow[0i][2i];
  let x_203 : vec4<f32> = u_xlat0;
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203.z, x_203.z, x_203.z)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_211 : vec4<f32> = u_xlat1;
  let x_214 : vec4<f32> = x_182.x_MainLightWorldToShadow[0i][3i];
  let x_216 : vec3<f32> = (vec3<f32>(x_211.x, x_211.y, x_211.z) + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_221 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = vec3<f32>(x_221.x, x_221.y, x_221.z);
  let x_223 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_223.y, x_223.y, x_223.y, x_223.y) * x_226);
  let x_229 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_230 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_229 * vec4<f32>(x_230.x, x_230.x, x_230.x, x_230.x)) + x_233);
  let x_236 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_237 : vec4<f32> = u_xlat0;
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_236 * vec4<f32>(x_237.z, x_237.z, x_237.z, x_237.z)) + x_240);
  let x_246 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_246 + x_248);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_TEXCOORD1_param : vec2<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD3, vs_TEXCOORD4, gl_Position);
}


