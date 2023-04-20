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

@group(1) @binding(3) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_49 : UnityPerDraw;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_173 : LightShadows;

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
  u_xlat6 = max(x_79, 1.17549435e-38f);
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
  vs_TEXCOORD4.w = 0.0f;
  let x_128 : vec4<f32> = in_POSITION0;
  let x_131 : vec4<f32> = x_49.unity_ObjectToWorld[1i];
  let x_133 : vec3<f32> = (vec3<f32>(x_128.y, x_128.y, x_128.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec4<f32> = x_49.unity_ObjectToWorld[0i];
  let x_139 : vec4<f32> = in_POSITION0;
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = ((vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139.x, x_139.x, x_139.x)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_49.unity_ObjectToWorld[2i];
  let x_150 : vec4<f32> = in_POSITION0;
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.z, x_150.z, x_150.z)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = x_49.unity_ObjectToWorld[3i];
  let x_163 : vec3<f32> = (vec3<f32>(x_158.x, x_158.y, x_158.z) + vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec4<f32> = u_xlat0;
  let x_175 : vec4<f32> = x_173.x_MainLightWorldToShadow[0i][1i];
  let x_177 : vec3<f32> = (vec3<f32>(x_167.y, x_167.y, x_167.y) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec4<f32> = x_173.x_MainLightWorldToShadow[0i][0i];
  let x_183 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183.x, x_183.x, x_183.x)) + vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_192 : vec4<f32> = x_173.x_MainLightWorldToShadow[0i][2i];
  let x_194 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = u_xlat1;
  let x_199 : vec3<f32> = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_194.z, x_194.z, x_194.z)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = x_173.x_MainLightWorldToShadow[0i][3i];
  let x_207 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) + vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = vec3<f32>(x_211.x, x_211.y, x_211.z);
  let x_213 : vec4<f32> = u_xlat0;
  let x_216 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_213.y, x_213.y, x_213.y, x_213.y) * x_216);
  let x_219 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_220 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_219 * vec4<f32>(x_220.x, x_220.x, x_220.x, x_220.x)) + x_223);
  let x_226 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_227 : vec4<f32> = u_xlat0;
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_226 * vec4<f32>(x_227.z, x_227.z, x_227.z, x_227.z)) + x_230);
  let x_236 : vec4<f32> = u_xlat0;
  let x_238 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_236 + x_238);
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


