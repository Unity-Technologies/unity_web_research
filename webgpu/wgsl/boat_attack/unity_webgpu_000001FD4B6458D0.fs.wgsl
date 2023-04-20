diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_148 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(1) @binding(2) var<uniform> x_341 : UnityPerDraw;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat18 : f32;

var<private> u_xlatb18 : bool;

var<private> u_xlatb32 : bool;

var<private> u_xlat32 : f32;

@group(1) @binding(5) var<uniform> x_586 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu32 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati32 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1027 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu45 : u32;

fn main_1() {
  var x_90 : f32;
  var x_103 : f32;
  var x_116 : f32;
  var txVec0 : vec3<f32>;
  var x_538 : f32;
  var x_671 : f32;
  var x_682 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1159 : f32;
  var x_1170 : f32;
  var txVec1 : vec3<f32>;
  var x_1616 : f32;
  var x_1629 : f32;
  var x_1687 : f32;
  var x_1698 : vec3<f32>;
  var x_1832 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb42 = (x_55 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_67 : vec3<f32> = (-(x_61) + x_66);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat44 = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_77);
  let x_79 : f32 = u_xlat44;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : bool = u_xlatb42;
  if (x_88) {
    let x_94 : f32 = u_xlat2.x;
    x_90 = x_94;
  } else {
    let x_99 : f32 = x_28.unity_MatrixV[0i].z;
    x_90 = x_99;
  }
  let x_100 : f32 = x_90;
  u_xlat3.x = x_100;
  let x_102 : bool = u_xlatb42;
  if (x_102) {
    let x_108 : f32 = u_xlat2.y;
    x_103 = x_108;
  } else {
    let x_112 : f32 = x_28.unity_MatrixV[1i].z;
    x_103 = x_112;
  }
  let x_113 : f32 = x_103;
  u_xlat3.y = x_113;
  let x_115 : bool = u_xlatb42;
  if (x_115) {
    let x_120 : f32 = u_xlat2.z;
    x_116 = x_120;
  } else {
    let x_123 : f32 = x_28.unity_MatrixV[2i].z;
    x_116 = x_123;
  }
  let x_124 : f32 = x_116;
  u_xlat3.z = x_124;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_128, x_129);
  let x_131 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_131);
  let x_133 : f32 = u_xlat42;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = (vec3<f32>(x_133, x_133, x_133) * x_135);
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec4<f32> = x_148.x_CascadeShadowSplitSpheres0;
  let x_153 : vec3<f32> = (x_140 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_TEXCOORD1;
  let x_159 : vec4<f32> = x_148.x_CascadeShadowSplitSpheres1;
  let x_162 : vec3<f32> = (x_157 + -(vec3<f32>(x_159.x, x_159.y, x_159.z)));
  let x_163 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec3<f32> = vs_TEXCOORD1;
  let x_169 : vec4<f32> = x_148.x_CascadeShadowSplitSpheres2;
  let x_172 : vec3<f32> = (x_166 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_173 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec3<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = x_148.x_CascadeShadowSplitSpheres3;
  let x_181 : vec3<f32> = (x_176 + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat4;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec4<f32> = u_xlat5;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec4<f32> = u_xlat6;
  let x_198 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = u_xlat7;
  let x_204 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_211 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = x_148.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_211 < x_213);
  let x_216 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_216);
  let x_221 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_233);
  let x_239 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_239);
  let x_243 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_243);
  let x_246 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = u_xlat5;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + vec3<f32>(x_248.y, x_248.z, x_248.w));
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat4;
  let x_256 : vec3<f32> = max(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_257 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_257.x, x_256.x, x_256.y, x_256.z);
  let x_259 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_259, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_265 : f32 = u_xlat42;
  u_xlat42 = (-(x_265) + 4.0f);
  let x_270 : f32 = u_xlat42;
  u_xlatu42 = u32(x_270);
  let x_274 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_274) << bitcast<u32>(2i));
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : i32 = u_xlati42;
  let x_282 : i32 = u_xlati42;
  let x_286 : vec4<f32> = x_148.x_MainLightWorldToShadow[((x_279 + 1i) / 4i)][((x_282 + 1i) % 4i)];
  let x_288 : vec3<f32> = (vec3<f32>(x_277.y, x_277.y, x_277.y) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : i32 = u_xlati42;
  let x_293 : i32 = u_xlati42;
  let x_296 : vec4<f32> = x_148.x_MainLightWorldToShadow[(x_291 / 4i)][(x_293 % 4i)];
  let x_298 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.x, x_298.x)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : i32 = u_xlati42;
  let x_309 : i32 = u_xlati42;
  let x_313 : vec4<f32> = x_148.x_MainLightWorldToShadow[((x_306 + 2i) / 4i)][((x_309 + 2i) % 4i)];
  let x_315 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.z, x_315.z, x_315.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat4;
  let x_325 : i32 = u_xlati42;
  let x_328 : i32 = u_xlati42;
  let x_332 : vec4<f32> = x_148.x_MainLightWorldToShadow[((x_325 + 3i) / 4i)][((x_328 + 3i) % 4i)];
  let x_334 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  u_xlat2.w = 1.0f;
  let x_344 : vec4<f32> = x_341.unity_SHAr;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_344, x_345);
  let x_350 : vec4<f32> = x_341.unity_SHAg;
  let x_351 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_350, x_351);
  let x_356 : vec4<f32> = x_341.unity_SHAb;
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_356, x_357);
  let x_360 : vec4<f32> = u_xlat2;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_360.y, x_360.z, x_360.z, x_360.x) * vec4<f32>(x_362.x, x_362.y, x_362.z, x_362.z));
  let x_367 : vec4<f32> = x_341.unity_SHBr;
  let x_368 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_367, x_368);
  let x_373 : vec4<f32> = x_341.unity_SHBg;
  let x_374 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_373, x_374);
  let x_379 : vec4<f32> = x_341.unity_SHBb;
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_379, x_380);
  let x_384 : f32 = u_xlat2.y;
  let x_386 : f32 = u_xlat2.y;
  u_xlat42 = (x_384 * x_386);
  let x_389 : f32 = u_xlat2.x;
  let x_391 : f32 = u_xlat2.x;
  let x_393 : f32 = u_xlat42;
  u_xlat42 = ((x_389 * x_391) + -(x_393));
  let x_398 : vec4<f32> = x_341.unity_SHC;
  let x_400 : f32 = u_xlat42;
  let x_403 : vec4<f32> = u_xlat7;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400, x_400, x_400)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat5;
  let x_410 : vec4<f32> = u_xlat6;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) + vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat5;
  let x_417 : vec3<f32> = max(vec3<f32>(x_415.x, x_415.y, x_415.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_422 : f32 = x_42.x_Metallic;
  u_xlat42 = ((-(x_422) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_427 : f32 = u_xlat42;
  u_xlat44 = (-(x_427) + 1.0f);
  let x_431 : f32 = u_xlat42;
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.y, x_433.z, x_433.w));
  let x_436 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = x_42.x_BaseColor;
  let x_444 : vec3<f32> = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(x_439.x, x_439.y, x_439.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_448 : f32 = x_42.x_Metallic;
  let x_450 : f32 = x_42.x_Metallic;
  let x_452 : f32 = x_42.x_Metallic;
  let x_453 : vec3<f32> = vec3<f32>(x_448, x_450, x_452);
  let x_458 : vec4<f32> = u_xlat0;
  let x_463 : vec3<f32> = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_458.x, x_458.y, x_458.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_464 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : f32 = x_42.x_Smoothness;
  u_xlat42 = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat42;
  let x_472 : f32 = u_xlat42;
  u_xlat45 = (x_471 * x_472);
  let x_474 : f32 = u_xlat45;
  u_xlat45 = max(x_474, 0.0078125f);
  let x_478 : f32 = u_xlat45;
  let x_479 : f32 = u_xlat45;
  u_xlat46 = (x_478 * x_479);
  let x_481 : f32 = u_xlat44;
  let x_483 : f32 = x_42.x_Smoothness;
  u_xlat44 = (x_481 + x_483);
  let x_485 : f32 = u_xlat44;
  u_xlat44 = clamp(x_485, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat45;
  u_xlat47 = ((x_488 * 4.0f) + 2.0f);
  let x_493 : vec4<f32> = u_xlat4;
  let x_494 : vec2<f32> = vec2<f32>(x_493.x, x_493.y);
  let x_496 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_494.x, x_494.y, x_496);
  let x_508 : vec3<f32> = txVec0;
  let x_510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_508.xy, x_508.z);
  u_xlat4.x = x_510;
  let x_515 : f32 = x_148.x_MainLightShadowParams.x;
  u_xlat18 = (-(x_515) + 1.0f);
  let x_519 : f32 = u_xlat4.x;
  let x_521 : f32 = x_148.x_MainLightShadowParams.x;
  let x_523 : f32 = u_xlat18;
  u_xlat4.x = ((x_519 * x_521) + x_523);
  let x_528 : f32 = u_xlat4.z;
  u_xlatb18 = (0.0f >= x_528);
  let x_532 : f32 = u_xlat4.z;
  u_xlatb32 = (x_532 >= 1.0f);
  let x_534 : bool = u_xlatb32;
  let x_535 : bool = u_xlatb18;
  u_xlatb18 = (x_534 | x_535);
  let x_537 : bool = u_xlatb18;
  if (x_537) {
    x_538 = 1.0f;
  } else {
    let x_543 : f32 = u_xlat4.x;
    x_538 = x_543;
  }
  let x_544 : f32 = x_538;
  u_xlat4.x = x_544;
  let x_546 : vec3<f32> = vs_TEXCOORD1;
  let x_548 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_550 : vec3<f32> = (x_546 + -(x_548));
  let x_551 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat6;
  let x_555 : vec4<f32> = u_xlat6;
  u_xlat18 = dot(vec3<f32>(x_553.x, x_553.y, x_553.z), vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_559 : f32 = u_xlat18;
  let x_561 : f32 = x_148.x_MainLightShadowParams.z;
  let x_564 : f32 = x_148.x_MainLightShadowParams.w;
  u_xlat32 = ((x_559 * x_561) + x_564);
  let x_566 : f32 = u_xlat32;
  u_xlat32 = clamp(x_566, 0.0f, 1.0f);
  let x_569 : f32 = u_xlat4.x;
  u_xlat6.x = (-(x_569) + 1.0f);
  let x_573 : f32 = u_xlat32;
  let x_575 : f32 = u_xlat6.x;
  let x_578 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_573 * x_575) + x_578);
  let x_588 : f32 = x_586.x_MainLightCookieTextureFormat;
  u_xlatb32 = !((x_588 == -1.0f));
  let x_590 : bool = u_xlatb32;
  if (x_590) {
    let x_593 : vec3<f32> = vs_TEXCOORD1;
    let x_596 : vec4<f32> = x_586.x_MainLightWorldToLight[1i];
    let x_598 : vec2<f32> = (vec2<f32>(x_593.y, x_593.y) * vec2<f32>(x_596.x, x_596.y));
    let x_599 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
    let x_602 : vec4<f32> = x_586.x_MainLightWorldToLight[0i];
    let x_604 : vec3<f32> = vs_TEXCOORD1;
    let x_607 : vec4<f32> = u_xlat6;
    let x_609 : vec2<f32> = ((vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_604.x, x_604.x)) + vec2<f32>(x_607.x, x_607.y));
    let x_610 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
    let x_613 : vec4<f32> = x_586.x_MainLightWorldToLight[2i];
    let x_615 : vec3<f32> = vs_TEXCOORD1;
    let x_618 : vec4<f32> = u_xlat6;
    let x_620 : vec2<f32> = ((vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_615.z, x_615.z)) + vec2<f32>(x_618.x, x_618.y));
    let x_621 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
    let x_623 : vec4<f32> = u_xlat6;
    let x_626 : vec4<f32> = x_586.x_MainLightWorldToLight[3i];
    let x_628 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) + vec2<f32>(x_626.x, x_626.y));
    let x_629 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
    let x_631 : vec4<f32> = u_xlat6;
    let x_636 : vec2<f32> = ((vec2<f32>(x_631.x, x_631.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_637 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
    let x_644 : vec4<f32> = u_xlat6;
    let x_647 : f32 = x_28.x_GlobalMipBias.x;
    let x_648 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_644.x, x_644.y), x_647);
    u_xlat6 = x_648;
    let x_653 : f32 = x_586.x_MainLightCookieTextureFormat;
    let x_655 : f32 = x_586.x_MainLightCookieTextureFormat;
    let x_657 : f32 = x_586.x_MainLightCookieTextureFormat;
    let x_659 : f32 = x_586.x_MainLightCookieTextureFormat;
    let x_660 : vec4<f32> = vec4<f32>(x_653, x_655, x_657, x_659);
    let x_667 : vec4<bool> = (vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_667.x, x_667.y);
    let x_670 : bool = u_xlatb7.y;
    if (x_670) {
      let x_675 : f32 = u_xlat6.w;
      x_671 = x_675;
    } else {
      let x_678 : f32 = u_xlat6.x;
      x_671 = x_678;
    }
    let x_679 : f32 = x_671;
    u_xlat32 = x_679;
    let x_681 : bool = u_xlatb7.x;
    if (x_681) {
      let x_685 : vec4<f32> = u_xlat6;
      x_682 = vec3<f32>(x_685.x, x_685.y, x_685.z);
    } else {
      let x_688 : f32 = u_xlat32;
      x_682 = vec3<f32>(x_688, x_688, x_688);
    }
    let x_690 : vec3<f32> = x_682;
    let x_691 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_697 : vec4<f32> = u_xlat6;
  let x_700 : vec4<f32> = x_28.x_MainLightColor;
  let x_702 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec3<f32> = u_xlat3;
  let x_707 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(-(x_705), vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : f32 = u_xlat32;
  let x_711 : f32 = u_xlat32;
  u_xlat32 = (x_710 + x_711);
  let x_713 : vec4<f32> = u_xlat2;
  let x_715 : f32 = u_xlat32;
  let x_719 : vec3<f32> = u_xlat3;
  let x_721 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.y, x_713.z) * -(vec3<f32>(x_715, x_715, x_715))) + -(x_719));
  let x_722 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat2;
  let x_726 : vec3<f32> = u_xlat3;
  u_xlat32 = dot(vec3<f32>(x_724.x, x_724.y, x_724.z), x_726);
  let x_728 : f32 = u_xlat32;
  u_xlat32 = clamp(x_728, 0.0f, 1.0f);
  let x_730 : f32 = u_xlat32;
  u_xlat32 = (-(x_730) + 1.0f);
  let x_733 : f32 = u_xlat32;
  let x_734 : f32 = u_xlat32;
  u_xlat32 = (x_733 * x_734);
  let x_736 : f32 = u_xlat32;
  let x_737 : f32 = u_xlat32;
  u_xlat32 = (x_736 * x_737);
  let x_740 : f32 = u_xlat42;
  u_xlat48 = ((-(x_740) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_746 : f32 = u_xlat42;
  let x_747 : f32 = u_xlat48;
  u_xlat42 = (x_746 * x_747);
  let x_749 : f32 = u_xlat42;
  u_xlat42 = (x_749 * 6.0f);
  let x_760 : vec4<f32> = u_xlat7;
  let x_762 : f32 = u_xlat42;
  let x_763 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_760.x, x_760.y, x_760.z), x_762);
  u_xlat7 = x_763;
  let x_765 : f32 = u_xlat7.w;
  u_xlat42 = (x_765 + -1.0f);
  let x_768 : f32 = x_341.unity_SpecCube0_HDR.w;
  let x_769 : f32 = u_xlat42;
  u_xlat42 = ((x_768 * x_769) + 1.0f);
  let x_772 : f32 = u_xlat42;
  u_xlat42 = max(x_772, 0.0f);
  let x_774 : f32 = u_xlat42;
  u_xlat42 = log2(x_774);
  let x_776 : f32 = u_xlat42;
  let x_778 : f32 = x_341.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_776 * x_778);
  let x_780 : f32 = u_xlat42;
  u_xlat42 = exp2(x_780);
  let x_782 : f32 = u_xlat42;
  let x_784 : f32 = x_341.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_782 * x_784);
  let x_786 : vec4<f32> = u_xlat7;
  let x_788 : f32 = u_xlat42;
  let x_790 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) * vec3<f32>(x_788, x_788, x_788));
  let x_791 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_795 : f32 = u_xlat45;
  let x_797 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_795, x_795) * vec2<f32>(x_797, x_797)) + vec2<f32>(-1.0f, 1.0f));
  let x_803 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_803);
  let x_806 : vec4<f32> = u_xlat0;
  let x_809 : f32 = u_xlat44;
  u_xlat22 = (-(vec3<f32>(x_806.x, x_806.y, x_806.z)) + vec3<f32>(x_809, x_809, x_809));
  let x_812 : f32 = u_xlat32;
  let x_814 : vec3<f32> = u_xlat22;
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_812, x_812, x_812) * x_814) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : f32 = u_xlat42;
  let x_821 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_819, x_819, x_819) * x_821);
  let x_823 : vec4<f32> = u_xlat7;
  let x_825 : vec3<f32> = u_xlat22;
  let x_826 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) * x_825);
  let x_827 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat5;
  let x_831 : vec3<f32> = u_xlat15;
  let x_833 : vec4<f32> = u_xlat7;
  let x_835 : vec3<f32> = ((vec3<f32>(x_829.x, x_829.y, x_829.z) * x_831) + vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_839 : f32 = u_xlat4.x;
  let x_841 : f32 = x_341.unity_LightData.z;
  u_xlat42 = (x_839 * x_841);
  let x_843 : vec4<f32> = u_xlat2;
  let x_846 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat44;
  u_xlat44 = clamp(x_849, 0.0f, 1.0f);
  let x_851 : f32 = u_xlat42;
  let x_852 : f32 = u_xlat44;
  u_xlat42 = (x_851 * x_852);
  let x_854 : f32 = u_xlat42;
  let x_856 : vec4<f32> = u_xlat6;
  let x_858 : vec3<f32> = (vec3<f32>(x_854, x_854, x_854) * vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = u_xlat3;
  let x_863 : vec4<f32> = x_28.x_MainLightPosition;
  let x_865 : vec3<f32> = (x_861 + vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat7;
  let x_870 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_868.x, x_868.y, x_868.z), vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : f32 = u_xlat42;
  u_xlat42 = max(x_873, 1.17549435e-38f);
  let x_876 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_876);
  let x_878 : f32 = u_xlat42;
  let x_880 : vec4<f32> = u_xlat7;
  let x_882 : vec3<f32> = (vec3<f32>(x_878, x_878, x_878) * vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat2;
  let x_887 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_885.x, x_885.y, x_885.z), vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : f32 = u_xlat42;
  u_xlat42 = clamp(x_890, 0.0f, 1.0f);
  let x_893 : vec4<f32> = x_28.x_MainLightPosition;
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_893.x, x_893.y, x_893.z), vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : f32 = u_xlat44;
  u_xlat44 = clamp(x_898, 0.0f, 1.0f);
  let x_900 : f32 = u_xlat42;
  let x_901 : f32 = u_xlat42;
  u_xlat42 = (x_900 * x_901);
  let x_903 : f32 = u_xlat42;
  let x_905 : f32 = u_xlat8.x;
  u_xlat42 = ((x_903 * x_905) + 1.00001001358032226562f);
  let x_909 : f32 = u_xlat44;
  let x_910 : f32 = u_xlat44;
  u_xlat44 = (x_909 * x_910);
  let x_912 : f32 = u_xlat42;
  let x_913 : f32 = u_xlat42;
  u_xlat42 = (x_912 * x_913);
  let x_915 : f32 = u_xlat44;
  u_xlat44 = max(x_915, 0.10000000149011611938f);
  let x_918 : f32 = u_xlat42;
  let x_919 : f32 = u_xlat44;
  u_xlat42 = (x_918 * x_919);
  let x_921 : f32 = u_xlat47;
  let x_922 : f32 = u_xlat42;
  u_xlat42 = (x_921 * x_922);
  let x_924 : f32 = u_xlat46;
  let x_925 : f32 = u_xlat42;
  u_xlat42 = (x_924 / x_925);
  let x_927 : vec4<f32> = u_xlat0;
  let x_929 : f32 = u_xlat42;
  let x_932 : vec3<f32> = u_xlat15;
  let x_933 : vec3<f32> = ((vec3<f32>(x_927.x, x_927.y, x_927.z) * vec3<f32>(x_929, x_929, x_929)) + x_932);
  let x_934 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_937 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_939 : f32 = x_341.unity_LightData.y;
  u_xlat42 = min(x_937, x_939);
  let x_941 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_941));
  let x_944 : f32 = u_xlat18;
  let x_947 : f32 = x_148.x_AdditionalShadowFadeParams.x;
  let x_950 : f32 = x_148.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_944 * x_947) + x_950);
  let x_952 : f32 = u_xlat44;
  u_xlat44 = clamp(x_952, 0.0f, 1.0f);
  let x_955 : f32 = x_586.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_957 : f32 = x_586.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_959 : f32 = x_586.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_961 : f32 = x_586.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_962 : vec4<f32> = vec4<f32>(x_955, x_957, x_959, x_961);
  let x_968 : vec4<bool> = (vec4<f32>(x_962.x, x_962.y, x_962.z, x_962.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_969 : vec2<bool> = vec2<bool>(x_968.x, x_968.y);
  let x_970 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_969.x, x_969.y, x_970.z, x_970.w);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_982 : u32 = u_xlatu_loop_1;
    let x_983 : u32 = u_xlatu42;
    if ((x_982 < x_983)) {
    } else {
      break;
    }
    let x_986 : u32 = u_xlatu_loop_1;
    u_xlatu32 = (x_986 >> 2u);
    let x_989 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_989 & 3u));
    let x_992 : u32 = u_xlatu32;
    let x_995 : vec4<f32> = x_341.unity_LightIndices[bitcast<i32>(x_992)];
    let x_1005 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1010 : vec4<u32> = indexable[x_1005];
    u_xlat32 = dot(x_995, bitcast<vec4<f32>>(x_1010));
    let x_1014 : f32 = u_xlat32;
    u_xlati32 = i32(x_1014);
    let x_1017 : vec3<f32> = vs_TEXCOORD1;
    let x_1028 : i32 = u_xlati32;
    let x_1030 : vec4<f32> = x_1027.x_AdditionalLightsPosition[x_1028];
    let x_1033 : i32 = u_xlati32;
    let x_1035 : vec4<f32> = x_1027.x_AdditionalLightsPosition[x_1033];
    u_xlat9 = ((-(x_1017) * vec3<f32>(x_1030.w, x_1030.w, x_1030.w)) + vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
    let x_1038 : vec3<f32> = u_xlat9;
    let x_1039 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1038, x_1039);
    let x_1041 : f32 = u_xlat48;
    u_xlat48 = max(x_1041, 0.00006103515625f);
    let x_1045 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1045);
    let x_1048 : f32 = u_xlat49;
    let x_1050 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1048, x_1048, x_1048) * x_1050);
    let x_1053 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_1053);
    let x_1055 : f32 = u_xlat48;
    let x_1056 : i32 = u_xlati32;
    let x_1058 : f32 = x_1027.x_AdditionalLightsAttenuation[x_1056].x;
    u_xlat48 = (x_1055 * x_1058);
    let x_1060 : f32 = u_xlat48;
    let x_1062 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1060) * x_1062) + 1.0f);
    let x_1065 : f32 = u_xlat48;
    u_xlat48 = max(x_1065, 0.0f);
    let x_1067 : f32 = u_xlat48;
    let x_1068 : f32 = u_xlat48;
    u_xlat48 = (x_1067 * x_1068);
    let x_1070 : f32 = u_xlat48;
    let x_1071 : f32 = u_xlat51;
    u_xlat48 = (x_1070 * x_1071);
    let x_1073 : i32 = u_xlati32;
    let x_1075 : vec4<f32> = x_1027.x_AdditionalLightsSpotDir[x_1073];
    let x_1077 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1075.x, x_1075.y, x_1075.z), x_1077);
    let x_1079 : f32 = u_xlat51;
    let x_1080 : i32 = u_xlati32;
    let x_1082 : f32 = x_1027.x_AdditionalLightsAttenuation[x_1080].z;
    let x_1084 : i32 = u_xlati32;
    let x_1086 : f32 = x_1027.x_AdditionalLightsAttenuation[x_1084].w;
    u_xlat51 = ((x_1079 * x_1082) + x_1086);
    let x_1088 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1088, 0.0f, 1.0f);
    let x_1090 : f32 = u_xlat51;
    let x_1091 : f32 = u_xlat51;
    u_xlat51 = (x_1090 * x_1091);
    let x_1093 : f32 = u_xlat48;
    let x_1094 : f32 = u_xlat51;
    u_xlat48 = (x_1093 * x_1094);
    let x_1098 : i32 = u_xlati32;
    let x_1100 : f32 = x_148.x_AdditionalShadowParams[x_1098].w;
    u_xlati51 = i32(x_1100);
    let x_1103 : i32 = u_xlati51;
    u_xlatb52 = (x_1103 >= 0i);
    let x_1105 : bool = u_xlatb52;
    if (x_1105) {
      let x_1109 : i32 = u_xlati32;
      let x_1111 : f32 = x_148.x_AdditionalShadowParams[x_1109].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1111, x_1111, x_1111, x_1111))));
      let x_1115 : bool = u_xlatb52;
      if (x_1115) {
        let x_1119 : vec3<f32> = u_xlat10;
        let x_1122 : vec3<f32> = u_xlat10;
        let x_1125 : vec4<bool> = (abs(vec4<f32>(x_1119.z, x_1119.z, x_1119.y, x_1119.z)) >= abs(vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.x)));
        let x_1127 : vec3<bool> = vec3<bool>(x_1125.x, x_1125.y, x_1125.z);
        let x_1128 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
        let x_1131 : bool = u_xlatb11.y;
        let x_1133 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1131 & x_1133);
        let x_1135 : vec3<f32> = u_xlat10;
        let x_1138 : vec4<bool> = (-(vec4<f32>(x_1135.z, x_1135.y, x_1135.z, x_1135.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1139 : vec3<bool> = vec3<bool>(x_1138.x, x_1138.y, x_1138.w);
        let x_1140 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1139.x, x_1139.y, x_1140.z, x_1139.z);
        let x_1144 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1144);
        let x_1149 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1149);
        let x_1154 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1154);
        let x_1158 : bool = u_xlatb11.z;
        if (x_1158) {
          let x_1163 : f32 = u_xlat11.y;
          x_1159 = x_1163;
        } else {
          let x_1165 : f32 = u_xlat53;
          x_1159 = x_1165;
        }
        let x_1166 : f32 = x_1159;
        u_xlat25.x = x_1166;
        let x_1169 : bool = u_xlatb52;
        if (x_1169) {
          let x_1174 : f32 = u_xlat11.x;
          x_1170 = x_1174;
        } else {
          let x_1177 : f32 = u_xlat25.x;
          x_1170 = x_1177;
        }
        let x_1178 : f32 = x_1170;
        u_xlat52 = x_1178;
        let x_1179 : i32 = u_xlati32;
        let x_1181 : f32 = x_148.x_AdditionalShadowParams[x_1179].w;
        u_xlat11.x = trunc(x_1181);
        let x_1184 : f32 = u_xlat52;
        let x_1186 : f32 = u_xlat11.x;
        u_xlat52 = (x_1184 + x_1186);
        let x_1188 : f32 = u_xlat52;
        u_xlati51 = i32(x_1188);
      }
      let x_1190 : i32 = u_xlati51;
      u_xlati51 = (x_1190 << bitcast<u32>(2i));
      let x_1192 : vec3<f32> = vs_TEXCOORD1;
      let x_1195 : i32 = u_xlati51;
      let x_1198 : i32 = u_xlati51;
      let x_1202 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_1195 + 1i) / 4i)][((x_1198 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1192.y, x_1192.y, x_1192.y, x_1192.y) * x_1202);
      let x_1204 : i32 = u_xlati51;
      let x_1206 : i32 = u_xlati51;
      let x_1209 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[(x_1204 / 4i)][(x_1206 % 4i)];
      let x_1210 : vec3<f32> = vs_TEXCOORD1;
      let x_1213 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1209 * vec4<f32>(x_1210.x, x_1210.x, x_1210.x, x_1210.x)) + x_1213);
      let x_1215 : i32 = u_xlati51;
      let x_1218 : i32 = u_xlati51;
      let x_1222 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_1215 + 2i) / 4i)][((x_1218 + 2i) % 4i)];
      let x_1223 : vec3<f32> = vs_TEXCOORD1;
      let x_1226 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1222 * vec4<f32>(x_1223.z, x_1223.z, x_1223.z, x_1223.z)) + x_1226);
      let x_1228 : vec4<f32> = u_xlat11;
      let x_1229 : i32 = u_xlati51;
      let x_1232 : i32 = u_xlati51;
      let x_1236 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_1229 + 3i) / 4i)][((x_1232 + 3i) % 4i)];
      u_xlat11 = (x_1228 + x_1236);
      let x_1238 : vec4<f32> = u_xlat11;
      let x_1240 : vec4<f32> = u_xlat11;
      let x_1242 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.y, x_1238.z) / vec3<f32>(x_1240.w, x_1240.w, x_1240.w));
      let x_1243 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
      let x_1246 : vec4<f32> = u_xlat11;
      let x_1247 : vec2<f32> = vec2<f32>(x_1246.x, x_1246.y);
      let x_1249 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1247.x, x_1247.y, x_1249);
      let x_1257 : vec3<f32> = txVec1;
      let x_1259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1257.xy, x_1257.z);
      u_xlat51 = x_1259;
      let x_1260 : i32 = u_xlati32;
      let x_1262 : f32 = x_148.x_AdditionalShadowParams[x_1260].x;
      u_xlat52 = (1.0f + -(x_1262));
      let x_1265 : f32 = u_xlat51;
      let x_1266 : i32 = u_xlati32;
      let x_1268 : f32 = x_148.x_AdditionalShadowParams[x_1266].x;
      let x_1270 : f32 = u_xlat52;
      u_xlat51 = ((x_1265 * x_1268) + x_1270);
      let x_1273 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1273);
      let x_1276 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1276 >= 1.0f);
      let x_1279 : bool = u_xlatb52;
      let x_1281 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1279 | x_1281);
      let x_1283 : bool = u_xlatb52;
      let x_1284 : f32 = u_xlat51;
      u_xlat51 = select(x_1284, 1.0f, x_1283);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1287 : f32 = u_xlat51;
    u_xlat52 = (-(x_1287) + 1.0f);
    let x_1290 : f32 = u_xlat44;
    let x_1291 : f32 = u_xlat52;
    let x_1293 : f32 = u_xlat51;
    u_xlat51 = ((x_1290 * x_1291) + x_1293);
    let x_1296 : i32 = u_xlati32;
    u_xlati52 = (1i << bitcast<u32>((x_1296 & 31i)));
    let x_1300 : i32 = u_xlati52;
    let x_1303 : f32 = x_586.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1300) & bitcast<u32>(x_1303)));
    let x_1307 : i32 = u_xlati52;
    if ((x_1307 != 0i)) {
      let x_1311 : i32 = u_xlati32;
      let x_1313 : f32 = x_586.x_AdditionalLightsLightTypes[x_1311].el;
      u_xlati52 = i32(x_1313);
      let x_1316 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1316 != 0i));
      let x_1320 : i32 = u_xlati32;
      u_xlati25 = (x_1320 << bitcast<u32>(2i));
      let x_1322 : i32 = u_xlati11;
      if ((x_1322 != 0i)) {
        let x_1326 : vec3<f32> = vs_TEXCOORD1;
        let x_1328 : i32 = u_xlati25;
        let x_1331 : i32 = u_xlati25;
        let x_1335 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1328 + 1i) / 4i)][((x_1331 + 1i) % 4i)];
        let x_1337 : vec3<f32> = (vec3<f32>(x_1326.y, x_1326.y, x_1326.y) * vec3<f32>(x_1335.x, x_1335.y, x_1335.w));
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1337.x, x_1338.y, x_1337.y, x_1337.z);
        let x_1340 : i32 = u_xlati25;
        let x_1342 : i32 = u_xlati25;
        let x_1345 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[(x_1340 / 4i)][(x_1342 % 4i)];
        let x_1347 : vec3<f32> = vs_TEXCOORD1;
        let x_1350 : vec4<f32> = u_xlat11;
        let x_1352 : vec3<f32> = ((vec3<f32>(x_1345.x, x_1345.y, x_1345.w) * vec3<f32>(x_1347.x, x_1347.x, x_1347.x)) + vec3<f32>(x_1350.x, x_1350.z, x_1350.w));
        let x_1353 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1352.x, x_1353.y, x_1352.y, x_1352.z);
        let x_1355 : i32 = u_xlati25;
        let x_1358 : i32 = u_xlati25;
        let x_1362 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1355 + 2i) / 4i)][((x_1358 + 2i) % 4i)];
        let x_1364 : vec3<f32> = vs_TEXCOORD1;
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1369 : vec3<f32> = ((vec3<f32>(x_1362.x, x_1362.y, x_1362.w) * vec3<f32>(x_1364.z, x_1364.z, x_1364.z)) + vec3<f32>(x_1367.x, x_1367.z, x_1367.w));
        let x_1370 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1369.x, x_1370.y, x_1369.y, x_1369.z);
        let x_1372 : vec4<f32> = u_xlat11;
        let x_1374 : i32 = u_xlati25;
        let x_1377 : i32 = u_xlati25;
        let x_1381 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1374 + 3i) / 4i)][((x_1377 + 3i) % 4i)];
        let x_1383 : vec3<f32> = (vec3<f32>(x_1372.x, x_1372.z, x_1372.w) + vec3<f32>(x_1381.x, x_1381.y, x_1381.w));
        let x_1384 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1383.x, x_1384.y, x_1383.y, x_1383.z);
        let x_1386 : vec4<f32> = u_xlat11;
        let x_1388 : vec4<f32> = u_xlat11;
        let x_1390 : vec2<f32> = (vec2<f32>(x_1386.x, x_1386.z) / vec2<f32>(x_1388.w, x_1388.w));
        let x_1391 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1390.x, x_1391.y, x_1390.y, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat11;
        let x_1396 : vec2<f32> = ((vec2<f32>(x_1393.x, x_1393.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1397 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1396.x, x_1397.y, x_1396.y, x_1397.w);
        let x_1399 : vec4<f32> = u_xlat11;
        let x_1403 : vec2<f32> = clamp(vec2<f32>(x_1399.x, x_1399.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1404 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1403.x, x_1404.y, x_1403.y, x_1404.w);
        let x_1406 : i32 = u_xlati32;
        let x_1408 : vec4<f32> = x_586.x_AdditionalLightsCookieAtlasUVRects[x_1406];
        let x_1410 : vec4<f32> = u_xlat11;
        let x_1413 : i32 = u_xlati32;
        let x_1415 : vec4<f32> = x_586.x_AdditionalLightsCookieAtlasUVRects[x_1413];
        let x_1417 : vec2<f32> = ((vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(x_1410.x, x_1410.z)) + vec2<f32>(x_1415.z, x_1415.w));
        let x_1418 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1417.x, x_1418.y, x_1417.y, x_1418.w);
      } else {
        let x_1421 : i32 = u_xlati52;
        u_xlatb52 = (x_1421 == 1i);
        let x_1423 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1423);
        let x_1425 : i32 = u_xlati52;
        if ((x_1425 != 0i)) {
          let x_1430 : vec3<f32> = vs_TEXCOORD1;
          let x_1432 : i32 = u_xlati25;
          let x_1435 : i32 = u_xlati25;
          let x_1439 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1432 + 1i) / 4i)][((x_1435 + 1i) % 4i)];
          let x_1441 : vec2<f32> = (vec2<f32>(x_1430.y, x_1430.y) * vec2<f32>(x_1439.x, x_1439.y));
          let x_1442 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1441.x, x_1441.y, x_1442.z, x_1442.w);
          let x_1444 : i32 = u_xlati25;
          let x_1446 : i32 = u_xlati25;
          let x_1449 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[(x_1444 / 4i)][(x_1446 % 4i)];
          let x_1451 : vec3<f32> = vs_TEXCOORD1;
          let x_1454 : vec4<f32> = u_xlat12;
          let x_1456 : vec2<f32> = ((vec2<f32>(x_1449.x, x_1449.y) * vec2<f32>(x_1451.x, x_1451.x)) + vec2<f32>(x_1454.x, x_1454.y));
          let x_1457 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1456.x, x_1456.y, x_1457.z, x_1457.w);
          let x_1459 : i32 = u_xlati25;
          let x_1462 : i32 = u_xlati25;
          let x_1466 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1459 + 2i) / 4i)][((x_1462 + 2i) % 4i)];
          let x_1468 : vec3<f32> = vs_TEXCOORD1;
          let x_1471 : vec4<f32> = u_xlat12;
          let x_1473 : vec2<f32> = ((vec2<f32>(x_1466.x, x_1466.y) * vec2<f32>(x_1468.z, x_1468.z)) + vec2<f32>(x_1471.x, x_1471.y));
          let x_1474 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1473.x, x_1473.y, x_1474.z, x_1474.w);
          let x_1476 : vec4<f32> = u_xlat12;
          let x_1478 : i32 = u_xlati25;
          let x_1481 : i32 = u_xlati25;
          let x_1485 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1478 + 3i) / 4i)][((x_1481 + 3i) % 4i)];
          let x_1487 : vec2<f32> = (vec2<f32>(x_1476.x, x_1476.y) + vec2<f32>(x_1485.x, x_1485.y));
          let x_1488 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1487.x, x_1487.y, x_1488.z, x_1488.w);
          let x_1490 : vec4<f32> = u_xlat12;
          let x_1493 : vec2<f32> = ((vec2<f32>(x_1490.x, x_1490.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1494 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1493.x, x_1493.y, x_1494.z, x_1494.w);
          let x_1496 : vec4<f32> = u_xlat12;
          let x_1498 : vec2<f32> = fract(vec2<f32>(x_1496.x, x_1496.y));
          let x_1499 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
          let x_1501 : i32 = u_xlati32;
          let x_1503 : vec4<f32> = x_586.x_AdditionalLightsCookieAtlasUVRects[x_1501];
          let x_1505 : vec4<f32> = u_xlat12;
          let x_1508 : i32 = u_xlati32;
          let x_1510 : vec4<f32> = x_586.x_AdditionalLightsCookieAtlasUVRects[x_1508];
          let x_1512 : vec2<f32> = ((vec2<f32>(x_1503.x, x_1503.y) * vec2<f32>(x_1505.x, x_1505.y)) + vec2<f32>(x_1510.z, x_1510.w));
          let x_1513 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1512.x, x_1513.y, x_1512.y, x_1513.w);
        } else {
          let x_1516 : vec3<f32> = vs_TEXCOORD1;
          let x_1518 : i32 = u_xlati25;
          let x_1521 : i32 = u_xlati25;
          let x_1525 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1518 + 1i) / 4i)][((x_1521 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1516.y, x_1516.y, x_1516.y, x_1516.y) * x_1525);
          let x_1527 : i32 = u_xlati25;
          let x_1529 : i32 = u_xlati25;
          let x_1532 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[(x_1527 / 4i)][(x_1529 % 4i)];
          let x_1533 : vec3<f32> = vs_TEXCOORD1;
          let x_1536 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1532 * vec4<f32>(x_1533.x, x_1533.x, x_1533.x, x_1533.x)) + x_1536);
          let x_1538 : i32 = u_xlati25;
          let x_1541 : i32 = u_xlati25;
          let x_1545 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1538 + 2i) / 4i)][((x_1541 + 2i) % 4i)];
          let x_1546 : vec3<f32> = vs_TEXCOORD1;
          let x_1549 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1545 * vec4<f32>(x_1546.z, x_1546.z, x_1546.z, x_1546.z)) + x_1549);
          let x_1551 : vec4<f32> = u_xlat12;
          let x_1552 : i32 = u_xlati25;
          let x_1555 : i32 = u_xlati25;
          let x_1559 : vec4<f32> = x_586.x_AdditionalLightsWorldToLights[((x_1552 + 3i) / 4i)][((x_1555 + 3i) % 4i)];
          u_xlat12 = (x_1551 + x_1559);
          let x_1561 : vec4<f32> = u_xlat12;
          let x_1563 : vec4<f32> = u_xlat12;
          let x_1565 : vec3<f32> = (vec3<f32>(x_1561.x, x_1561.y, x_1561.z) / vec3<f32>(x_1563.w, x_1563.w, x_1563.w));
          let x_1566 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
          let x_1568 : vec4<f32> = u_xlat12;
          let x_1570 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1568.x, x_1568.y, x_1568.z), vec3<f32>(x_1570.x, x_1570.y, x_1570.z));
          let x_1573 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1573);
          let x_1575 : f32 = u_xlat52;
          let x_1577 : vec4<f32> = u_xlat12;
          let x_1579 : vec3<f32> = (vec3<f32>(x_1575, x_1575, x_1575) * vec3<f32>(x_1577.x, x_1577.y, x_1577.z));
          let x_1580 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1579.x, x_1579.y, x_1579.z, x_1580.w);
          let x_1582 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1582.x, x_1582.y, x_1582.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1587 : f32 = u_xlat52;
          u_xlat52 = max(x_1587, 0.00000099999999747524f);
          let x_1590 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1590);
          let x_1593 : f32 = u_xlat52;
          let x_1595 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1593, x_1593, x_1593) * vec3<f32>(x_1595.z, x_1595.x, x_1595.y));
          let x_1599 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1599);
          let x_1603 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1603, 0.0f, 1.0f);
          let x_1608 : vec3<f32> = u_xlat13;
          let x_1610 : vec4<bool> = (vec4<f32>(x_1608.y, x_1608.y, x_1608.z, x_1608.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1611 : vec2<bool> = vec2<bool>(x_1610.x, x_1610.z);
          let x_1612 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1611.x, x_1612.y, x_1611.y);
          let x_1615 : bool = u_xlatb25.x;
          if (x_1615) {
            let x_1620 : f32 = u_xlat13.x;
            x_1616 = x_1620;
          } else {
            let x_1623 : f32 = u_xlat13.x;
            x_1616 = -(x_1623);
          }
          let x_1625 : f32 = x_1616;
          u_xlat25.x = x_1625;
          let x_1628 : bool = u_xlatb25.z;
          if (x_1628) {
            let x_1633 : f32 = u_xlat13.x;
            x_1629 = x_1633;
          } else {
            let x_1636 : f32 = u_xlat13.x;
            x_1629 = -(x_1636);
          }
          let x_1638 : f32 = x_1629;
          u_xlat25.z = x_1638;
          let x_1640 : vec4<f32> = u_xlat12;
          let x_1642 : f32 = u_xlat52;
          let x_1645 : vec3<f32> = u_xlat25;
          let x_1647 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642, x_1642)) + vec2<f32>(x_1645.x, x_1645.z));
          let x_1648 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1647.x, x_1648.y, x_1647.y);
          let x_1650 : vec3<f32> = u_xlat25;
          let x_1653 : vec2<f32> = ((vec2<f32>(x_1650.x, x_1650.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1654 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1653.x, x_1654.y, x_1653.y);
          let x_1656 : vec3<f32> = u_xlat25;
          let x_1660 : vec2<f32> = clamp(vec2<f32>(x_1656.x, x_1656.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1661 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1660.x, x_1661.y, x_1660.y);
          let x_1663 : i32 = u_xlati32;
          let x_1665 : vec4<f32> = x_586.x_AdditionalLightsCookieAtlasUVRects[x_1663];
          let x_1667 : vec3<f32> = u_xlat25;
          let x_1670 : i32 = u_xlati32;
          let x_1672 : vec4<f32> = x_586.x_AdditionalLightsCookieAtlasUVRects[x_1670];
          let x_1674 : vec2<f32> = ((vec2<f32>(x_1665.x, x_1665.y) * vec2<f32>(x_1667.x, x_1667.z)) + vec2<f32>(x_1672.z, x_1672.w));
          let x_1675 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1675.w);
        }
      }
      let x_1682 : vec4<f32> = u_xlat11;
      let x_1684 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1682.x, x_1682.z), 0.0f);
      u_xlat11 = x_1684;
      let x_1686 : bool = u_xlatb4.y;
      if (x_1686) {
        let x_1691 : f32 = u_xlat11.w;
        x_1687 = x_1691;
      } else {
        let x_1694 : f32 = u_xlat11.x;
        x_1687 = x_1694;
      }
      let x_1695 : f32 = x_1687;
      u_xlat52 = x_1695;
      let x_1697 : bool = u_xlatb4.x;
      if (x_1697) {
        let x_1701 : vec4<f32> = u_xlat11;
        x_1698 = vec3<f32>(x_1701.x, x_1701.y, x_1701.z);
      } else {
        let x_1704 : f32 = u_xlat52;
        x_1698 = vec3<f32>(x_1704, x_1704, x_1704);
      }
      let x_1706 : vec3<f32> = x_1698;
      let x_1707 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1713 : vec4<f32> = u_xlat11;
    let x_1715 : i32 = u_xlati32;
    let x_1717 : vec4<f32> = x_1027.x_AdditionalLightsColor[x_1715];
    let x_1719 : vec3<f32> = (vec3<f32>(x_1713.x, x_1713.y, x_1713.z) * vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
    let x_1720 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
    let x_1722 : f32 = u_xlat48;
    let x_1723 : f32 = u_xlat51;
    u_xlat32 = (x_1722 * x_1723);
    let x_1725 : vec4<f32> = u_xlat2;
    let x_1727 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1725.x, x_1725.y, x_1725.z), x_1727);
    let x_1729 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1729, 0.0f, 1.0f);
    let x_1731 : f32 = u_xlat32;
    let x_1732 : f32 = u_xlat48;
    u_xlat32 = (x_1731 * x_1732);
    let x_1734 : f32 = u_xlat32;
    let x_1736 : vec4<f32> = u_xlat11;
    let x_1738 : vec3<f32> = (vec3<f32>(x_1734, x_1734, x_1734) * vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
    let x_1739 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1739.w);
    let x_1741 : vec3<f32> = u_xlat9;
    let x_1742 : f32 = u_xlat49;
    let x_1745 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1741 * vec3<f32>(x_1742, x_1742, x_1742)) + x_1745);
    let x_1747 : vec3<f32> = u_xlat9;
    let x_1748 : vec3<f32> = u_xlat9;
    u_xlat32 = dot(x_1747, x_1748);
    let x_1750 : f32 = u_xlat32;
    u_xlat32 = max(x_1750, 1.17549435e-38f);
    let x_1752 : f32 = u_xlat32;
    u_xlat32 = inverseSqrt(x_1752);
    let x_1754 : f32 = u_xlat32;
    let x_1756 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1754, x_1754, x_1754) * x_1756);
    let x_1758 : vec4<f32> = u_xlat2;
    let x_1760 : vec3<f32> = u_xlat9;
    u_xlat32 = dot(vec3<f32>(x_1758.x, x_1758.y, x_1758.z), x_1760);
    let x_1762 : f32 = u_xlat32;
    u_xlat32 = clamp(x_1762, 0.0f, 1.0f);
    let x_1764 : vec3<f32> = u_xlat10;
    let x_1765 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1764, x_1765);
    let x_1767 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1767, 0.0f, 1.0f);
    let x_1769 : f32 = u_xlat32;
    let x_1770 : f32 = u_xlat32;
    u_xlat32 = (x_1769 * x_1770);
    let x_1772 : f32 = u_xlat32;
    let x_1774 : f32 = u_xlat8.x;
    u_xlat32 = ((x_1772 * x_1774) + 1.00001001358032226562f);
    let x_1777 : f32 = u_xlat48;
    let x_1778 : f32 = u_xlat48;
    u_xlat48 = (x_1777 * x_1778);
    let x_1780 : f32 = u_xlat32;
    let x_1781 : f32 = u_xlat32;
    u_xlat32 = (x_1780 * x_1781);
    let x_1783 : f32 = u_xlat48;
    u_xlat48 = max(x_1783, 0.10000000149011611938f);
    let x_1785 : f32 = u_xlat32;
    let x_1786 : f32 = u_xlat48;
    u_xlat32 = (x_1785 * x_1786);
    let x_1788 : f32 = u_xlat47;
    let x_1789 : f32 = u_xlat32;
    u_xlat32 = (x_1788 * x_1789);
    let x_1791 : f32 = u_xlat46;
    let x_1792 : f32 = u_xlat32;
    u_xlat32 = (x_1791 / x_1792);
    let x_1794 : vec4<f32> = u_xlat0;
    let x_1796 : f32 = u_xlat32;
    let x_1799 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1794.x, x_1794.y, x_1794.z) * vec3<f32>(x_1796, x_1796, x_1796)) + x_1799);
    let x_1801 : vec3<f32> = u_xlat9;
    let x_1802 : vec4<f32> = u_xlat11;
    let x_1805 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1801 * vec3<f32>(x_1802.x, x_1802.y, x_1802.z)) + x_1805);

    continuing {
      let x_1807 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1807 + bitcast<u32>(1i));
    }
  }
  let x_1809 : vec4<f32> = u_xlat7;
  let x_1811 : vec4<f32> = u_xlat6;
  let x_1814 : vec4<f32> = u_xlat5;
  let x_1816 : vec3<f32> = ((vec3<f32>(x_1809.x, x_1809.y, x_1809.z) * vec3<f32>(x_1811.x, x_1811.y, x_1811.z)) + vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  let x_1821 : vec3<f32> = u_xlat22;
  let x_1822 : vec4<f32> = u_xlat0;
  let x_1824 : vec3<f32> = (x_1821 + vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1825 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
  let x_1829 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1829 == 1.0f);
  let x_1831 : bool = u_xlatb0;
  if (x_1831) {
    let x_1836 : f32 = u_xlat1.x;
    x_1832 = x_1836;
  } else {
    x_1832 = 1.0f;
  }
  let x_1838 : f32 = x_1832;
  SV_Target0.w = x_1838;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


