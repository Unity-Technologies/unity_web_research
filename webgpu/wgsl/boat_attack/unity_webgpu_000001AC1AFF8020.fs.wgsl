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
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_154 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat14 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_339 : UnityPerDraw;

var<private> u_xlat34 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlat25 : f32;

@group(1) @binding(5) var<uniform> x_508 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlatu37 : u32;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu38 : u32;

var<private> u_xlati39 : i32;

var<private> u_xlat38 : f32;

var<private> u_xlati38 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_799 : AdditionalLights;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb19 : bool;

var<private> u_xlati8 : i32;

var<private> u_xlati19 : i32;

var<private> u_xlati30 : i32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlat31 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat41 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb11 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu27 : u32;

var<private> u_xlatb38 : bool;

fn main_1() {
  var x_84 : f32;
  var x_97 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_592 : f32;
  var x_603 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_932 : f32;
  var x_944 : f32;
  var txVec1 : vec3<f32>;
  var x_1409 : f32;
  var x_1422 : f32;
  var x_1480 : f32;
  var x_1491 : vec3<f32>;
  var x_1610 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat12;
  let x_70 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat12;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat12 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_82 : bool = u_xlatb1;
  if (x_82) {
    let x_88 : f32 = u_xlat12.x;
    x_84 = x_88;
  } else {
    let x_93 : f32 = x_28.unity_MatrixV[0i].z;
    x_84 = x_93;
  }
  let x_94 : f32 = x_84;
  u_xlat2.x = x_94;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_102 : f32 = u_xlat12.y;
    x_97 = x_102;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_97 = x_105;
  }
  let x_106 : f32 = x_97;
  u_xlat2.y = x_106;
  let x_108 : bool = u_xlatb1;
  if (x_108) {
    let x_113 : f32 = u_xlat12.z;
    x_109 = x_113;
  } else {
    let x_117 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_117;
  }
  let x_118 : f32 = x_109;
  u_xlat2.z = x_118;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  let x_123 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_122, x_123);
  let x_127 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_127);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  let x_133 : vec3<f32> = (vec3<f32>(x_130.x, x_130.x, x_130.x) * x_132);
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = u_xlat2;
  let x_138 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat35;
  u_xlat35 = max(x_140, 0.00006103515625f);
  let x_143 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_143);
  let x_146 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_146 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_168 : vec3<f32> = (x_163 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD1;
  let x_175 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  let x_178 : vec3<f32> = (x_172 + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_184 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_182 + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec4<f32> = u_xlat5;
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_206 : vec3<f32> = u_xlat6;
  let x_207 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_206, x_207);
  let x_213 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_213 < x_215);
  let x_218 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_218);
  let x_223 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_235);
  let x_241 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_241);
  let x_245 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_245);
  let x_248 : vec4<f32> = u_xlat3;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + vec3<f32>(x_250.y, x_250.z, x_250.w));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat3;
  let x_258 : vec3<f32> = max(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_259.x, x_258.x, x_258.y, x_258.z);
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_261, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_269 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_269) + 4.0f);
  let x_276 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_276);
  let x_280 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_280) << bitcast<u32>(2i));
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : i32 = u_xlati3;
  let x_289 : i32 = u_xlati3;
  let x_293 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_286 + 1i) / 4i)][((x_289 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : i32 = u_xlati3;
  let x_298 : i32 = u_xlati3;
  let x_301 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_296 / 4i)][(x_298 % 4i)];
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + x_306);
  let x_308 : i32 = u_xlati3;
  let x_311 : i32 = u_xlati3;
  let x_315 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_308 + 2i) / 4i)][((x_311 + 2i) % 4i)];
  let x_317 : vec3<f32> = vs_TEXCOORD1;
  let x_320 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.z, x_317.z, x_317.z)) + x_320);
  let x_322 : vec3<f32> = u_xlat14;
  let x_323 : i32 = u_xlati3;
  let x_326 : i32 = u_xlati3;
  let x_330 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_323 + 3i) / 4i)][((x_326 + 3i) % 4i)];
  let x_332 : vec3<f32> = (x_322 + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  u_xlat1.w = 1.0f;
  let x_342 : vec4<f32> = x_339.unity_SHAr;
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_342, x_343);
  let x_348 : vec4<f32> = x_339.unity_SHAg;
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_348, x_349);
  let x_354 : vec4<f32> = x_339.unity_SHAb;
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_354, x_355);
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_358.y, x_358.z, x_358.z, x_358.x) * vec4<f32>(x_360.x, x_360.y, x_360.z, x_360.z));
  let x_365 : vec4<f32> = x_339.unity_SHBr;
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_365, x_366);
  let x_371 : vec4<f32> = x_339.unity_SHBg;
  let x_372 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_371, x_372);
  let x_377 : vec4<f32> = x_339.unity_SHBb;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_377, x_378);
  let x_383 : f32 = u_xlat1.y;
  let x_385 : f32 = u_xlat1.y;
  u_xlat34 = (x_383 * x_385);
  let x_388 : f32 = u_xlat1.x;
  let x_390 : f32 = u_xlat1.x;
  let x_392 : f32 = u_xlat34;
  u_xlat34 = ((x_388 * x_390) + -(x_392));
  let x_397 : vec4<f32> = x_339.unity_SHC;
  let x_399 : f32 = u_xlat34;
  let x_402 : vec3<f32> = u_xlat6;
  let x_403 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399, x_399, x_399)) + x_402);
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat4;
  let x_408 : vec4<f32> = u_xlat5;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_415 : vec4<f32> = u_xlat3;
  let x_416 : vec2<f32> = vec2<f32>(x_415.x, x_415.y);
  let x_418 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_416.x, x_416.y, x_418);
  let x_430 : vec3<f32> = txVec0;
  let x_432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_430.xy, x_430.z);
  u_xlat34 = x_432;
  let x_435 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_435) + 1.0f);
  let x_439 : f32 = u_xlat34;
  let x_441 : f32 = x_154.x_MainLightShadowParams.x;
  let x_444 : f32 = u_xlat3.x;
  u_xlat34 = ((x_439 * x_441) + x_444);
  let x_447 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_447);
  let x_454 : f32 = u_xlat3.z;
  u_xlatb14.x = (x_454 >= 1.0f);
  let x_458 : bool = u_xlatb14.x;
  let x_460 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_458 | x_460);
  let x_464 : bool = u_xlatb3.x;
  let x_465 : f32 = u_xlat34;
  u_xlat34 = select(x_465, 1.0f, x_464);
  let x_467 : vec3<f32> = vs_TEXCOORD1;
  let x_469 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_471 : vec3<f32> = (x_467 + -(x_469));
  let x_472 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat3;
  let x_476 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_474.x, x_474.y, x_474.z), vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_481 : f32 = u_xlat3.x;
  let x_483 : f32 = x_154.x_MainLightShadowParams.z;
  let x_486 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_481 * x_483) + x_486);
  let x_490 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_490, 0.0f, 1.0f);
  let x_494 : f32 = u_xlat34;
  u_xlat25 = (-(x_494) + 1.0f);
  let x_498 : f32 = u_xlat14.x;
  let x_499 : f32 = u_xlat25;
  let x_501 : f32 = u_xlat34;
  u_xlat34 = ((x_498 * x_499) + x_501);
  let x_510 : f32 = x_508.x_MainLightCookieTextureFormat;
  u_xlatb14.x = !((x_510 == -1.0f));
  let x_514 : bool = u_xlatb14.x;
  if (x_514) {
    let x_517 : vec3<f32> = vs_TEXCOORD1;
    let x_520 : vec4<f32> = x_508.x_MainLightWorldToLight[1i];
    let x_522 : vec2<f32> = (vec2<f32>(x_517.y, x_517.y) * vec2<f32>(x_520.x, x_520.y));
    let x_523 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_522.x, x_522.y, x_523.z);
    let x_526 : vec4<f32> = x_508.x_MainLightWorldToLight[0i];
    let x_528 : vec3<f32> = vs_TEXCOORD1;
    let x_531 : vec3<f32> = u_xlat14;
    let x_533 : vec2<f32> = ((vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_528.x, x_528.x)) + vec2<f32>(x_531.x, x_531.y));
    let x_534 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_533.x, x_533.y, x_534.z);
    let x_537 : vec4<f32> = x_508.x_MainLightWorldToLight[2i];
    let x_539 : vec3<f32> = vs_TEXCOORD1;
    let x_542 : vec3<f32> = u_xlat14;
    let x_544 : vec2<f32> = ((vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_539.z, x_539.z)) + vec2<f32>(x_542.x, x_542.y));
    let x_545 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_544.x, x_544.y, x_545.z);
    let x_547 : vec3<f32> = u_xlat14;
    let x_550 : vec4<f32> = x_508.x_MainLightWorldToLight[3i];
    let x_552 : vec2<f32> = (vec2<f32>(x_547.x, x_547.y) + vec2<f32>(x_550.x, x_550.y));
    let x_553 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_552.x, x_552.y, x_553.z);
    let x_555 : vec3<f32> = u_xlat14;
    let x_560 : vec2<f32> = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_561 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_560.x, x_560.y, x_561.z);
    let x_568 : vec3<f32> = u_xlat14;
    let x_571 : f32 = x_28.x_GlobalMipBias.x;
    let x_572 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_568.x, x_568.y), x_571);
    u_xlat5 = x_572;
    let x_574 : f32 = x_508.x_MainLightCookieTextureFormat;
    let x_576 : f32 = x_508.x_MainLightCookieTextureFormat;
    let x_578 : f32 = x_508.x_MainLightCookieTextureFormat;
    let x_580 : f32 = x_508.x_MainLightCookieTextureFormat;
    let x_581 : vec4<f32> = vec4<f32>(x_574, x_576, x_578, x_580);
    let x_588 : vec4<bool> = (vec4<f32>(x_581.x, x_581.y, x_581.z, x_581.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb14 = vec2<bool>(x_588.x, x_588.y);
    let x_591 : bool = u_xlatb14.y;
    if (x_591) {
      let x_596 : f32 = u_xlat5.w;
      x_592 = x_596;
    } else {
      let x_599 : f32 = u_xlat5.x;
      x_592 = x_599;
    }
    let x_600 : f32 = x_592;
    u_xlat25 = x_600;
    let x_602 : bool = u_xlatb14.x;
    if (x_602) {
      let x_606 : vec4<f32> = u_xlat5;
      x_603 = vec3<f32>(x_606.x, x_606.y, x_606.z);
    } else {
      let x_609 : f32 = u_xlat25;
      x_603 = vec3<f32>(x_609, x_609, x_609);
    }
    let x_611 : vec3<f32> = x_603;
    u_xlat14 = x_611;
  } else {
    u_xlat14.x = 1.0f;
    u_xlat14.y = 1.0f;
    u_xlat14.z = 1.0f;
  }
  let x_616 : vec3<f32> = u_xlat14;
  let x_618 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat14 = (x_616 * vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : f32 = u_xlat34;
  let x_623 : f32 = x_339.unity_LightData.z;
  u_xlat34 = (x_621 * x_623);
  let x_625 : f32 = u_xlat34;
  let x_627 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_625, x_625, x_625) * x_627);
  let x_629 : vec4<f32> = u_xlat1;
  let x_632 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_629.x, x_629.y, x_629.z), vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : f32 = u_xlat34;
  u_xlat34 = clamp(x_635, 0.0f, 1.0f);
  let x_637 : f32 = u_xlat34;
  let x_639 : vec3<f32> = u_xlat14;
  let x_640 : vec3<f32> = (vec3<f32>(x_637, x_637, x_637) * x_639);
  let x_641 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_644 : f32 = u_xlat0.x;
  u_xlat34 = ((x_644 * 10.0f) + 1.0f);
  let x_648 : f32 = u_xlat34;
  u_xlat34 = exp2(x_648);
  let x_650 : vec3<f32> = u_xlat2;
  let x_651 : f32 = u_xlat35;
  let x_655 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat6 = ((x_650 * vec3<f32>(x_651, x_651, x_651)) + vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec3<f32> = u_xlat6;
  let x_659 : vec3<f32> = u_xlat6;
  u_xlat4.w = dot(x_658, x_659);
  let x_662 : vec4<f32> = u_xlat4;
  u_xlat4 = max(x_662, vec4<f32>(0.0f, 0.0f, 0.0f, 1.17549435e-38f));
  let x_668 : f32 = u_xlat4.w;
  u_xlat37 = inverseSqrt(x_668);
  let x_670 : f32 = u_xlat37;
  let x_672 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_670, x_670, x_670) * x_672);
  let x_674 : vec4<f32> = u_xlat1;
  let x_676 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), x_676);
  let x_678 : f32 = u_xlat37;
  u_xlat37 = clamp(x_678, 0.0f, 1.0f);
  let x_680 : f32 = u_xlat37;
  u_xlat37 = log2(x_680);
  let x_682 : f32 = u_xlat34;
  let x_683 : f32 = u_xlat37;
  u_xlat37 = (x_682 * x_683);
  let x_685 : f32 = u_xlat37;
  u_xlat37 = exp2(x_685);
  let x_687 : f32 = u_xlat37;
  let x_690 : vec4<f32> = x_41.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_687, x_687, x_687) * vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec3<f32> = u_xlat14;
  let x_694 : vec3<f32> = u_xlat6;
  u_xlat14 = (x_693 * x_694);
  let x_696 : vec4<f32> = u_xlat5;
  let x_698 : vec4<f32> = u_xlat0;
  let x_701 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_698.y, x_698.z, x_698.w)) + x_701);
  let x_704 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_706 : f32 = x_339.unity_LightData.y;
  u_xlat37 = min(x_704, x_706);
  let x_709 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_709));
  let x_713 : f32 = u_xlat3.x;
  let x_716 : f32 = x_154.x_AdditionalShadowFadeParams.x;
  let x_719 : f32 = x_154.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_713 * x_716) + x_719);
  let x_723 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_723, 0.0f, 1.0f);
  let x_728 : f32 = x_508.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_730 : f32 = x_508.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_732 : f32 = x_508.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_734 : f32 = x_508.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_735 : vec4<f32> = vec4<f32>(x_728, x_730, x_732, x_734);
  let x_741 : vec4<bool> = (vec4<f32>(x_735.x, x_735.y, x_735.z, x_735.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_741.x, x_741.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_753 : u32 = u_xlatu_loop_1;
    let x_754 : u32 = u_xlatu37;
    if ((x_753 < x_754)) {
    } else {
      break;
    }
    let x_757 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_757 >> 2u);
    let x_760 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_760 & 3u));
    let x_764 : u32 = u_xlatu38;
    let x_767 : vec4<f32> = x_339.unity_LightIndices[bitcast<i32>(x_764)];
    let x_777 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_782 : vec4<u32> = indexable[x_777];
    u_xlat38 = dot(x_767, bitcast<vec4<f32>>(x_782));
    let x_786 : f32 = u_xlat38;
    u_xlati38 = i32(x_786);
    let x_789 : vec3<f32> = vs_TEXCOORD1;
    let x_800 : i32 = u_xlati38;
    let x_802 : vec4<f32> = x_799.x_AdditionalLightsPosition[x_800];
    let x_805 : i32 = u_xlati38;
    let x_807 : vec4<f32> = x_799.x_AdditionalLightsPosition[x_805];
    u_xlat7 = ((-(x_789) * vec3<f32>(x_802.w, x_802.w, x_802.w)) + vec3<f32>(x_807.x, x_807.y, x_807.z));
    let x_811 : vec3<f32> = u_xlat7;
    let x_812 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_811, x_812);
    let x_814 : f32 = u_xlat39;
    u_xlat39 = max(x_814, 0.00006103515625f);
    let x_817 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_817);
    let x_819 : f32 = u_xlat40;
    let x_821 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_819, x_819, x_819) * x_821);
    let x_823 : f32 = u_xlat39;
    u_xlat40 = (1.0f / x_823);
    let x_825 : f32 = u_xlat39;
    let x_826 : i32 = u_xlati38;
    let x_828 : f32 = x_799.x_AdditionalLightsAttenuation[x_826].x;
    u_xlat39 = (x_825 * x_828);
    let x_830 : f32 = u_xlat39;
    let x_832 : f32 = u_xlat39;
    u_xlat39 = ((-(x_830) * x_832) + 1.0f);
    let x_835 : f32 = u_xlat39;
    u_xlat39 = max(x_835, 0.0f);
    let x_837 : f32 = u_xlat39;
    let x_838 : f32 = u_xlat39;
    u_xlat39 = (x_837 * x_838);
    let x_840 : f32 = u_xlat39;
    let x_841 : f32 = u_xlat40;
    u_xlat39 = (x_840 * x_841);
    let x_843 : i32 = u_xlati38;
    let x_845 : vec4<f32> = x_799.x_AdditionalLightsSpotDir[x_843];
    let x_847 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(vec3<f32>(x_845.x, x_845.y, x_845.z), x_847);
    let x_849 : f32 = u_xlat40;
    let x_850 : i32 = u_xlati38;
    let x_852 : f32 = x_799.x_AdditionalLightsAttenuation[x_850].z;
    let x_854 : i32 = u_xlati38;
    let x_856 : f32 = x_799.x_AdditionalLightsAttenuation[x_854].w;
    u_xlat40 = ((x_849 * x_852) + x_856);
    let x_858 : f32 = u_xlat40;
    u_xlat40 = clamp(x_858, 0.0f, 1.0f);
    let x_860 : f32 = u_xlat40;
    let x_861 : f32 = u_xlat40;
    u_xlat40 = (x_860 * x_861);
    let x_863 : f32 = u_xlat39;
    let x_864 : f32 = u_xlat40;
    u_xlat39 = (x_863 * x_864);
    let x_868 : i32 = u_xlati38;
    let x_870 : f32 = x_154.x_AdditionalShadowParams[x_868].w;
    u_xlati40 = i32(x_870);
    let x_875 : i32 = u_xlati40;
    u_xlatb8.x = (x_875 >= 0i);
    let x_879 : bool = u_xlatb8.x;
    if (x_879) {
      let x_883 : i32 = u_xlati38;
      let x_885 : f32 = x_154.x_AdditionalShadowParams[x_883].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_885, x_885, x_885, x_885))));
      let x_891 : bool = u_xlatb8.x;
      if (x_891) {
        let x_894 : vec3<f32> = u_xlat7;
        let x_897 : vec3<f32> = u_xlat7;
        let x_900 : vec4<bool> = (abs(vec4<f32>(x_894.z, x_894.z, x_894.y, x_894.z)) >= abs(vec4<f32>(x_897.x, x_897.y, x_897.x, x_897.x)));
        u_xlatb8 = vec3<bool>(x_900.x, x_900.y, x_900.z);
        let x_903 : bool = u_xlatb8.y;
        let x_905 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_903 & x_905);
        let x_909 : vec3<f32> = u_xlat7;
        let x_912 : vec4<bool> = (-(vec4<f32>(x_909.z, x_909.y, x_909.x, x_909.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_912.x, x_912.y, x_912.z);
        let x_916 : bool = u_xlatb9.x;
        u_xlat19.x = select(4.0f, 5.0f, x_916);
        let x_921 : bool = u_xlatb9.y;
        u_xlat19.z = select(2.0f, 3.0f, x_921);
        let x_926 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_926);
        let x_931 : bool = u_xlatb8.z;
        if (x_931) {
          let x_936 : f32 = u_xlat19.z;
          x_932 = x_936;
        } else {
          let x_939 : f32 = u_xlat9.x;
          x_932 = x_939;
        }
        let x_940 : f32 = x_932;
        u_xlat30 = x_940;
        let x_943 : bool = u_xlatb8.x;
        if (x_943) {
          let x_948 : f32 = u_xlat19.x;
          x_944 = x_948;
        } else {
          let x_950 : f32 = u_xlat30;
          x_944 = x_950;
        }
        let x_951 : f32 = x_944;
        u_xlat8.x = x_951;
        let x_953 : i32 = u_xlati38;
        let x_955 : f32 = x_154.x_AdditionalShadowParams[x_953].w;
        u_xlat19.x = trunc(x_955);
        let x_959 : f32 = u_xlat8.x;
        let x_961 : f32 = u_xlat19.x;
        u_xlat8.x = (x_959 + x_961);
        let x_965 : f32 = u_xlat8.x;
        u_xlati40 = i32(x_965);
      }
      let x_967 : i32 = u_xlati40;
      u_xlati40 = (x_967 << bitcast<u32>(2i));
      let x_969 : vec3<f32> = vs_TEXCOORD1;
      let x_972 : i32 = u_xlati40;
      let x_975 : i32 = u_xlati40;
      let x_979 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_972 + 1i) / 4i)][((x_975 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_969.y, x_969.y, x_969.y, x_969.y) * x_979);
      let x_981 : i32 = u_xlati40;
      let x_983 : i32 = u_xlati40;
      let x_986 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[(x_981 / 4i)][(x_983 % 4i)];
      let x_987 : vec3<f32> = vs_TEXCOORD1;
      let x_990 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_986 * vec4<f32>(x_987.x, x_987.x, x_987.x, x_987.x)) + x_990);
      let x_992 : i32 = u_xlati40;
      let x_995 : i32 = u_xlati40;
      let x_999 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_992 + 2i) / 4i)][((x_995 + 2i) % 4i)];
      let x_1000 : vec3<f32> = vs_TEXCOORD1;
      let x_1003 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_999 * vec4<f32>(x_1000.z, x_1000.z, x_1000.z, x_1000.z)) + x_1003);
      let x_1005 : vec4<f32> = u_xlat8;
      let x_1006 : i32 = u_xlati40;
      let x_1009 : i32 = u_xlati40;
      let x_1013 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_1006 + 3i) / 4i)][((x_1009 + 3i) % 4i)];
      u_xlat8 = (x_1005 + x_1013);
      let x_1015 : vec4<f32> = u_xlat8;
      let x_1017 : vec4<f32> = u_xlat8;
      let x_1019 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) / vec3<f32>(x_1017.w, x_1017.w, x_1017.w));
      let x_1020 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
      let x_1023 : vec4<f32> = u_xlat8;
      let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
      let x_1026 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
      let x_1034 : vec3<f32> = txVec1;
      let x_1036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1034.xy, x_1034.z);
      u_xlat40 = x_1036;
      let x_1037 : i32 = u_xlati38;
      let x_1039 : f32 = x_154.x_AdditionalShadowParams[x_1037].x;
      u_xlat8.x = (1.0f + -(x_1039));
      let x_1043 : f32 = u_xlat40;
      let x_1044 : i32 = u_xlati38;
      let x_1046 : f32 = x_154.x_AdditionalShadowParams[x_1044].x;
      let x_1049 : f32 = u_xlat8.x;
      u_xlat40 = ((x_1043 * x_1046) + x_1049);
      let x_1052 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_1052);
      let x_1057 : f32 = u_xlat8.z;
      u_xlatb19 = (x_1057 >= 1.0f);
      let x_1059 : bool = u_xlatb19;
      let x_1061 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_1059 | x_1061);
      let x_1065 : bool = u_xlatb8.x;
      let x_1066 : f32 = u_xlat40;
      u_xlat40 = select(x_1066, 1.0f, x_1065);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_1069 : f32 = u_xlat40;
    u_xlat8.x = (-(x_1069) + 1.0f);
    let x_1074 : f32 = u_xlat3.x;
    let x_1076 : f32 = u_xlat8.x;
    let x_1078 : f32 = u_xlat40;
    u_xlat40 = ((x_1074 * x_1076) + x_1078);
    let x_1081 : i32 = u_xlati38;
    u_xlati8 = (1i << bitcast<u32>((x_1081 & 31i)));
    let x_1085 : i32 = u_xlati8;
    let x_1088 : f32 = x_508.x_AdditionalLightsCookieEnableBits;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_1085) & bitcast<u32>(x_1088)));
    let x_1092 : i32 = u_xlati8;
    if ((x_1092 != 0i)) {
      let x_1096 : i32 = u_xlati38;
      let x_1098 : f32 = x_508.x_AdditionalLightsLightTypes[x_1096].el;
      u_xlati8 = i32(x_1098);
      let x_1101 : i32 = u_xlati8;
      u_xlati19 = select(1i, 0i, (x_1101 != 0i));
      let x_1105 : i32 = u_xlati38;
      u_xlati30 = (x_1105 << bitcast<u32>(2i));
      let x_1107 : i32 = u_xlati19;
      if ((x_1107 != 0i)) {
        let x_1111 : vec3<f32> = vs_TEXCOORD1;
        let x_1113 : i32 = u_xlati30;
        let x_1116 : i32 = u_xlati30;
        let x_1120 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1113 + 1i) / 4i)][((x_1116 + 1i) % 4i)];
        let x_1122 : vec3<f32> = (vec3<f32>(x_1111.y, x_1111.y, x_1111.y) * vec3<f32>(x_1120.x, x_1120.y, x_1120.w));
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
        let x_1125 : i32 = u_xlati30;
        let x_1127 : i32 = u_xlati30;
        let x_1130 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[(x_1125 / 4i)][(x_1127 % 4i)];
        let x_1132 : vec3<f32> = vs_TEXCOORD1;
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.w) * vec3<f32>(x_1132.x, x_1132.x, x_1132.x)) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
        let x_1140 : i32 = u_xlati30;
        let x_1143 : i32 = u_xlati30;
        let x_1147 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1140 + 2i) / 4i)][((x_1143 + 2i) % 4i)];
        let x_1149 : vec3<f32> = vs_TEXCOORD1;
        let x_1152 : vec4<f32> = u_xlat9;
        let x_1154 : vec3<f32> = ((vec3<f32>(x_1147.x, x_1147.y, x_1147.w) * vec3<f32>(x_1149.z, x_1149.z, x_1149.z)) + vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
        let x_1155 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1159 : i32 = u_xlati30;
        let x_1162 : i32 = u_xlati30;
        let x_1166 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1159 + 3i) / 4i)][((x_1162 + 3i) % 4i)];
        let x_1168 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) + vec3<f32>(x_1166.x, x_1166.y, x_1166.w));
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1173 : vec4<f32> = u_xlat9;
        let x_1175 : vec2<f32> = (vec2<f32>(x_1171.x, x_1171.y) / vec2<f32>(x_1173.z, x_1173.z));
        let x_1176 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1175.x, x_1176.y, x_1175.y);
        let x_1178 : vec3<f32> = u_xlat19;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1182 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1181.x, x_1182.y, x_1181.y);
        let x_1184 : vec3<f32> = u_xlat19;
        let x_1188 : vec2<f32> = clamp(vec2<f32>(x_1184.x, x_1184.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1189 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1188.x, x_1189.y, x_1188.y);
        let x_1191 : i32 = u_xlati38;
        let x_1193 : vec4<f32> = x_508.x_AdditionalLightsCookieAtlasUVRects[x_1191];
        let x_1195 : vec3<f32> = u_xlat19;
        let x_1198 : i32 = u_xlati38;
        let x_1200 : vec4<f32> = x_508.x_AdditionalLightsCookieAtlasUVRects[x_1198];
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(x_1195.x, x_1195.z)) + vec2<f32>(x_1200.z, x_1200.w));
        let x_1203 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1202.x, x_1203.y, x_1202.y);
      } else {
        let x_1206 : i32 = u_xlati8;
        u_xlatb8.x = (x_1206 == 1i);
        let x_1210 : bool = u_xlatb8.x;
        u_xlati8 = select(0i, 1i, x_1210);
        let x_1212 : i32 = u_xlati8;
        if ((x_1212 != 0i)) {
          let x_1216 : vec3<f32> = vs_TEXCOORD1;
          let x_1218 : i32 = u_xlati30;
          let x_1221 : i32 = u_xlati30;
          let x_1225 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1218 + 1i) / 4i)][((x_1221 + 1i) % 4i)];
          let x_1227 : vec2<f32> = (vec2<f32>(x_1216.y, x_1216.y) * vec2<f32>(x_1225.x, x_1225.y));
          let x_1228 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
          let x_1230 : i32 = u_xlati30;
          let x_1232 : i32 = u_xlati30;
          let x_1235 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[(x_1230 / 4i)][(x_1232 % 4i)];
          let x_1237 : vec3<f32> = vs_TEXCOORD1;
          let x_1240 : vec4<f32> = u_xlat9;
          let x_1242 : vec2<f32> = ((vec2<f32>(x_1235.x, x_1235.y) * vec2<f32>(x_1237.x, x_1237.x)) + vec2<f32>(x_1240.x, x_1240.y));
          let x_1243 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1242.x, x_1242.y, x_1243.z, x_1243.w);
          let x_1245 : i32 = u_xlati30;
          let x_1248 : i32 = u_xlati30;
          let x_1252 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1245 + 2i) / 4i)][((x_1248 + 2i) % 4i)];
          let x_1254 : vec3<f32> = vs_TEXCOORD1;
          let x_1257 : vec4<f32> = u_xlat9;
          let x_1259 : vec2<f32> = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1254.z, x_1254.z)) + vec2<f32>(x_1257.x, x_1257.y));
          let x_1260 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
          let x_1262 : vec4<f32> = u_xlat9;
          let x_1264 : i32 = u_xlati30;
          let x_1267 : i32 = u_xlati30;
          let x_1271 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1264 + 3i) / 4i)][((x_1267 + 3i) % 4i)];
          let x_1273 : vec2<f32> = (vec2<f32>(x_1262.x, x_1262.y) + vec2<f32>(x_1271.x, x_1271.y));
          let x_1274 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
          let x_1276 : vec4<f32> = u_xlat9;
          let x_1279 : vec2<f32> = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1280 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
          let x_1282 : vec4<f32> = u_xlat9;
          let x_1284 : vec2<f32> = fract(vec2<f32>(x_1282.x, x_1282.y));
          let x_1285 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
          let x_1287 : i32 = u_xlati38;
          let x_1289 : vec4<f32> = x_508.x_AdditionalLightsCookieAtlasUVRects[x_1287];
          let x_1291 : vec4<f32> = u_xlat9;
          let x_1294 : i32 = u_xlati38;
          let x_1296 : vec4<f32> = x_508.x_AdditionalLightsCookieAtlasUVRects[x_1294];
          let x_1298 : vec2<f32> = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1291.x, x_1291.y)) + vec2<f32>(x_1296.z, x_1296.w));
          let x_1299 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1298.x, x_1299.y, x_1298.y);
        } else {
          let x_1302 : vec3<f32> = vs_TEXCOORD1;
          let x_1304 : i32 = u_xlati30;
          let x_1307 : i32 = u_xlati30;
          let x_1311 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1304 + 1i) / 4i)][((x_1307 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1302.y, x_1302.y, x_1302.y, x_1302.y) * x_1311);
          let x_1313 : i32 = u_xlati30;
          let x_1315 : i32 = u_xlati30;
          let x_1318 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[(x_1313 / 4i)][(x_1315 % 4i)];
          let x_1319 : vec3<f32> = vs_TEXCOORD1;
          let x_1322 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1318 * vec4<f32>(x_1319.x, x_1319.x, x_1319.x, x_1319.x)) + x_1322);
          let x_1324 : i32 = u_xlati30;
          let x_1327 : i32 = u_xlati30;
          let x_1331 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1324 + 2i) / 4i)][((x_1327 + 2i) % 4i)];
          let x_1332 : vec3<f32> = vs_TEXCOORD1;
          let x_1335 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1331 * vec4<f32>(x_1332.z, x_1332.z, x_1332.z, x_1332.z)) + x_1335);
          let x_1337 : vec4<f32> = u_xlat9;
          let x_1338 : i32 = u_xlati30;
          let x_1341 : i32 = u_xlati30;
          let x_1345 : vec4<f32> = x_508.x_AdditionalLightsWorldToLights[((x_1338 + 3i) / 4i)][((x_1341 + 3i) % 4i)];
          u_xlat9 = (x_1337 + x_1345);
          let x_1347 : vec4<f32> = u_xlat9;
          let x_1349 : vec4<f32> = u_xlat9;
          let x_1351 : vec3<f32> = (vec3<f32>(x_1347.x, x_1347.y, x_1347.z) / vec3<f32>(x_1349.w, x_1349.w, x_1349.w));
          let x_1352 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
          let x_1354 : vec4<f32> = u_xlat9;
          let x_1356 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_1354.x, x_1354.y, x_1354.z), vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
          let x_1361 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_1361);
          let x_1364 : vec4<f32> = u_xlat8;
          let x_1366 : vec4<f32> = u_xlat9;
          let x_1368 : vec3<f32> = (vec3<f32>(x_1364.x, x_1364.x, x_1364.x) * vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
          let x_1369 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
          let x_1371 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_1371.x, x_1371.y, x_1371.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1378 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_1378, 0.00000099999999747524f);
          let x_1383 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_1383);
          let x_1387 : vec4<f32> = u_xlat8;
          let x_1389 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1387.x, x_1387.x, x_1387.x) * vec3<f32>(x_1389.z, x_1389.x, x_1389.y));
          let x_1393 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1393);
          let x_1397 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1397, 0.0f, 1.0f);
          let x_1401 : vec3<f32> = u_xlat10;
          let x_1403 : vec4<bool> = (vec4<f32>(x_1401.y, x_1401.z, x_1401.y, x_1401.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb31 = vec2<bool>(x_1403.x, x_1403.y);
          let x_1408 : bool = u_xlatb31.x;
          if (x_1408) {
            let x_1413 : f32 = u_xlat10.x;
            x_1409 = x_1413;
          } else {
            let x_1416 : f32 = u_xlat10.x;
            x_1409 = -(x_1416);
          }
          let x_1418 : f32 = x_1409;
          u_xlat31.x = x_1418;
          let x_1421 : bool = u_xlatb31.y;
          if (x_1421) {
            let x_1426 : f32 = u_xlat10.x;
            x_1422 = x_1426;
          } else {
            let x_1429 : f32 = u_xlat10.x;
            x_1422 = -(x_1429);
          }
          let x_1431 : f32 = x_1422;
          u_xlat31.y = x_1431;
          let x_1433 : vec4<f32> = u_xlat9;
          let x_1435 : vec4<f32> = u_xlat8;
          let x_1438 : vec2<f32> = u_xlat31;
          let x_1439 : vec2<f32> = ((vec2<f32>(x_1433.x, x_1433.y) * vec2<f32>(x_1435.x, x_1435.x)) + x_1438);
          let x_1440 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1439.x, x_1440.y, x_1439.y, x_1440.w);
          let x_1442 : vec4<f32> = u_xlat8;
          let x_1445 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1446 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1445.x, x_1446.y, x_1445.y, x_1446.w);
          let x_1448 : vec4<f32> = u_xlat8;
          let x_1452 : vec2<f32> = clamp(vec2<f32>(x_1448.x, x_1448.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1453 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1452.x, x_1453.y, x_1452.y, x_1453.w);
          let x_1455 : i32 = u_xlati38;
          let x_1457 : vec4<f32> = x_508.x_AdditionalLightsCookieAtlasUVRects[x_1455];
          let x_1459 : vec4<f32> = u_xlat8;
          let x_1462 : i32 = u_xlati38;
          let x_1464 : vec4<f32> = x_508.x_AdditionalLightsCookieAtlasUVRects[x_1462];
          let x_1466 : vec2<f32> = ((vec2<f32>(x_1457.x, x_1457.y) * vec2<f32>(x_1459.x, x_1459.z)) + vec2<f32>(x_1464.z, x_1464.w));
          let x_1467 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1466.x, x_1467.y, x_1466.y);
        }
      }
      let x_1474 : vec3<f32> = u_xlat19;
      let x_1476 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1474.x, x_1474.z), 0.0f);
      u_xlat8 = x_1476;
      let x_1479 : bool = u_xlatb5.y;
      if (x_1479) {
        let x_1484 : f32 = u_xlat8.w;
        x_1480 = x_1484;
      } else {
        let x_1487 : f32 = u_xlat8.x;
        x_1480 = x_1487;
      }
      let x_1488 : f32 = x_1480;
      u_xlat41 = x_1488;
      let x_1490 : bool = u_xlatb5.x;
      if (x_1490) {
        let x_1494 : vec4<f32> = u_xlat8;
        x_1491 = vec3<f32>(x_1494.x, x_1494.y, x_1494.z);
      } else {
        let x_1497 : f32 = u_xlat41;
        x_1491 = vec3<f32>(x_1497, x_1497, x_1497);
      }
      let x_1499 : vec3<f32> = x_1491;
      let x_1500 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1506 : vec4<f32> = u_xlat8;
    let x_1508 : i32 = u_xlati38;
    let x_1510 : vec4<f32> = x_799.x_AdditionalLightsColor[x_1508];
    let x_1512 : vec3<f32> = (vec3<f32>(x_1506.x, x_1506.y, x_1506.z) * vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
    let x_1513 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
    let x_1515 : f32 = u_xlat39;
    let x_1516 : f32 = u_xlat40;
    u_xlat38 = (x_1515 * x_1516);
    let x_1518 : f32 = u_xlat38;
    let x_1520 : vec4<f32> = u_xlat8;
    let x_1522 : vec3<f32> = (vec3<f32>(x_1518, x_1518, x_1518) * vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
    let x_1523 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1523.w);
    let x_1525 : vec4<f32> = u_xlat1;
    let x_1527 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(vec3<f32>(x_1525.x, x_1525.y, x_1525.z), x_1527);
    let x_1529 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1529, 0.0f, 1.0f);
    let x_1531 : f32 = u_xlat38;
    let x_1533 : vec4<f32> = u_xlat8;
    let x_1535 : vec3<f32> = (vec3<f32>(x_1531, x_1531, x_1531) * vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
    let x_1536 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
    let x_1538 : vec3<f32> = u_xlat2;
    let x_1539 : f32 = u_xlat35;
    let x_1542 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1538 * vec3<f32>(x_1539, x_1539, x_1539)) + x_1542);
    let x_1544 : vec3<f32> = u_xlat7;
    let x_1545 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1544, x_1545);
    let x_1547 : f32 = u_xlat38;
    u_xlat38 = max(x_1547, 1.17549435e-38f);
    let x_1549 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1549);
    let x_1551 : f32 = u_xlat38;
    let x_1553 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1551, x_1551, x_1551) * x_1553);
    let x_1555 : vec4<f32> = u_xlat1;
    let x_1557 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(vec3<f32>(x_1555.x, x_1555.y, x_1555.z), x_1557);
    let x_1559 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1559, 0.0f, 1.0f);
    let x_1561 : f32 = u_xlat38;
    u_xlat38 = log2(x_1561);
    let x_1563 : f32 = u_xlat34;
    let x_1564 : f32 = u_xlat38;
    u_xlat38 = (x_1563 * x_1564);
    let x_1566 : f32 = u_xlat38;
    u_xlat38 = exp2(x_1566);
    let x_1568 : f32 = u_xlat38;
    let x_1571 : vec4<f32> = x_41.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1568, x_1568, x_1568) * vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
    let x_1574 : vec3<f32> = u_xlat7;
    let x_1575 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1574 * vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
    let x_1578 : vec4<f32> = u_xlat9;
    let x_1580 : vec4<f32> = u_xlat0;
    let x_1583 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1578.x, x_1578.y, x_1578.z) * vec3<f32>(x_1580.y, x_1580.z, x_1580.w)) + x_1583);
    let x_1585 : vec3<f32> = u_xlat6;
    let x_1586 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1585 + x_1586);

    continuing {
      let x_1588 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1588 + bitcast<u32>(1i));
    }
  }
  let x_1591 : vec4<f32> = u_xlat4;
  let x_1593 : vec4<f32> = u_xlat0;
  let x_1596 : vec3<f32> = u_xlat14;
  u_xlat11 = ((vec3<f32>(x_1591.x, x_1591.y, x_1591.z) * vec3<f32>(x_1593.y, x_1593.z, x_1593.w)) + x_1596);
  let x_1600 : vec3<f32> = u_xlat6;
  let x_1601 : vec3<f32> = u_xlat11;
  let x_1602 : vec3<f32> = (x_1600 + x_1601);
  let x_1603 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1607 : f32 = x_41.x_Surface;
  u_xlatb11 = (x_1607 == 1.0f);
  let x_1609 : bool = u_xlatb11;
  if (x_1609) {
    let x_1614 : f32 = u_xlat0.x;
    x_1610 = x_1614;
  } else {
    x_1610 = 1.0f;
  }
  let x_1616 : f32 = x_1610;
  SV_Target0.w = x_1616;
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


