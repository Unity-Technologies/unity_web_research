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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_152 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat35 : f32;

var<private> u_xlatu35 : u32;

var<private> u_xlati35 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat25 : f32;

@group(1) @binding(5) var<uniform> x_487 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_603 : UnityPerDraw;

var<private> u_xlat37 : f32;

var<private> u_xlatu37 : u32;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu38 : u32;

var<private> u_xlati39 : i32;

var<private> u_xlat38 : f32;

var<private> u_xlati38 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_776 : AdditionalLights;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb19 : bool;

var<private> u_xlati8 : i32;

var<private> u_xlati19 : i32;

var<private> u_xlati30 : i32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlat31 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

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
  var x_570 : f32;
  var x_581 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_909 : f32;
  var x_921 : f32;
  var txVec1 : vec3<f32>;
  var x_1386 : f32;
  var x_1399 : f32;
  var x_1457 : f32;
  var x_1468 : vec3<f32>;
  var x_1585 : f32;
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
  let x_130 : vec3<f32> = u_xlat1;
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_130.x, x_130.x, x_130.x) * x_132);
  let x_135 : vec3<f32> = u_xlat2;
  let x_136 : vec3<f32> = u_xlat2;
  u_xlat34 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat34;
  u_xlat34 = max(x_138, 0.00006103515625f);
  let x_141 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_141);
  let x_144 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres0;
  let x_157 : vec3<f32> = (x_144 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec3<f32> = vs_TEXCOORD1;
  let x_163 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres1;
  let x_166 : vec3<f32> = (x_161 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_167 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres2;
  let x_176 : vec3<f32> = (x_170 + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec3<f32> = vs_TEXCOORD1;
  let x_182 : vec4<f32> = x_152.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_180 + -(vec3<f32>(x_182.x, x_182.y, x_182.z)));
  let x_186 : vec4<f32> = u_xlat3;
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_186.x, x_186.y, x_186.z), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_192 : vec4<f32> = u_xlat4;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : vec4<f32> = u_xlat5;
  let x_200 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_198.x, x_198.y, x_198.z), vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_204 : vec3<f32> = u_xlat6;
  let x_205 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_204, x_205);
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec4<f32> = x_152.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_211 < x_213);
  let x_216 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_216);
  let x_221 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_233);
  let x_239 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_239);
  let x_243 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_243);
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + vec3<f32>(x_248.y, x_248.z, x_248.w));
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat3;
  let x_256 : vec3<f32> = max(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_257.x, x_256.x, x_256.y, x_256.z);
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(x_260, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_266 : f32 = u_xlat35;
  u_xlat35 = (-(x_266) + 4.0f);
  let x_271 : f32 = u_xlat35;
  u_xlatu35 = u32(x_271);
  let x_275 : u32 = u_xlatu35;
  u_xlati35 = (bitcast<i32>(x_275) << bitcast<u32>(2i));
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_280 : i32 = u_xlati35;
  let x_283 : i32 = u_xlati35;
  let x_287 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_280 + 1i) / 4i)][((x_283 + 1i) % 4i)];
  let x_289 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : i32 = u_xlati35;
  let x_294 : i32 = u_xlati35;
  let x_297 : vec4<f32> = x_152.x_MainLightWorldToShadow[(x_292 / 4i)][(x_294 % 4i)];
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.x, x_299.x, x_299.x)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : i32 = u_xlati35;
  let x_310 : i32 = u_xlati35;
  let x_314 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_307 + 2i) / 4i)][((x_310 + 2i) % 4i)];
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : i32 = u_xlati35;
  let x_329 : i32 = u_xlati35;
  let x_333 : vec4<f32> = x_152.x_MainLightWorldToShadow[((x_326 + 3i) / 4i)][((x_329 + 3i) % 4i)];
  let x_335 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_344 : vec2<f32> = vs_TEXCOORD7;
  let x_346 : f32 = x_28.x_GlobalMipBias.x;
  let x_347 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_344, x_346);
  u_xlat4 = x_347;
  let x_352 : vec2<f32> = vs_TEXCOORD7;
  let x_354 : f32 = x_28.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_352, x_354);
  let x_356 : vec3<f32> = vec3<f32>(x_355.x, x_355.y, x_355.z);
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat4;
  let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec3<f32> = u_xlat1;
  let x_367 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(x_366, vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : f32 = u_xlat35;
  u_xlat35 = (x_370 + 0.5f);
  let x_373 : f32 = u_xlat35;
  let x_375 : vec4<f32> = u_xlat5;
  let x_377 : vec3<f32> = (vec3<f32>(x_373, x_373, x_373) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat4.w;
  u_xlat35 = max(x_381, 0.00009999999747378752f);
  let x_384 : vec4<f32> = u_xlat4;
  let x_386 : f32 = u_xlat35;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) / vec3<f32>(x_386, x_386, x_386));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_393 : vec4<f32> = u_xlat3;
  let x_394 : vec2<f32> = vec2<f32>(x_393.x, x_393.y);
  let x_396 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_394.x, x_394.y, x_396);
  let x_408 : vec3<f32> = txVec0;
  let x_410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_408.xy, x_408.z);
  u_xlat35 = x_410;
  let x_413 : f32 = x_152.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_413) + 1.0f);
  let x_417 : f32 = u_xlat35;
  let x_419 : f32 = x_152.x_MainLightShadowParams.x;
  let x_422 : f32 = u_xlat3.x;
  u_xlat35 = ((x_417 * x_419) + x_422);
  let x_425 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_425);
  let x_432 : f32 = u_xlat3.z;
  u_xlatb14.x = (x_432 >= 1.0f);
  let x_436 : bool = u_xlatb14.x;
  let x_438 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_436 | x_438);
  let x_442 : bool = u_xlatb3.x;
  let x_443 : f32 = u_xlat35;
  u_xlat35 = select(x_443, 1.0f, x_442);
  let x_445 : vec3<f32> = vs_TEXCOORD1;
  let x_447 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_449 : vec3<f32> = (x_445 + -(x_447));
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_460 : f32 = u_xlat3.x;
  let x_462 : f32 = x_152.x_MainLightShadowParams.z;
  let x_465 : f32 = x_152.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_460 * x_462) + x_465);
  let x_469 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_469, 0.0f, 1.0f);
  let x_473 : f32 = u_xlat35;
  u_xlat25 = (-(x_473) + 1.0f);
  let x_477 : f32 = u_xlat14.x;
  let x_478 : f32 = u_xlat25;
  let x_480 : f32 = u_xlat35;
  u_xlat35 = ((x_477 * x_478) + x_480);
  let x_489 : f32 = x_487.x_MainLightCookieTextureFormat;
  u_xlatb14.x = !((x_489 == -1.0f));
  let x_493 : bool = u_xlatb14.x;
  if (x_493) {
    let x_496 : vec3<f32> = vs_TEXCOORD1;
    let x_499 : vec4<f32> = x_487.x_MainLightWorldToLight[1i];
    let x_501 : vec2<f32> = (vec2<f32>(x_496.y, x_496.y) * vec2<f32>(x_499.x, x_499.y));
    let x_502 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_501.x, x_501.y, x_502.z);
    let x_505 : vec4<f32> = x_487.x_MainLightWorldToLight[0i];
    let x_507 : vec3<f32> = vs_TEXCOORD1;
    let x_510 : vec3<f32> = u_xlat14;
    let x_512 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(x_507.x, x_507.x)) + vec2<f32>(x_510.x, x_510.y));
    let x_513 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_512.x, x_512.y, x_513.z);
    let x_516 : vec4<f32> = x_487.x_MainLightWorldToLight[2i];
    let x_518 : vec3<f32> = vs_TEXCOORD1;
    let x_521 : vec3<f32> = u_xlat14;
    let x_523 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_518.z, x_518.z)) + vec2<f32>(x_521.x, x_521.y));
    let x_524 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_523.x, x_523.y, x_524.z);
    let x_526 : vec3<f32> = u_xlat14;
    let x_529 : vec4<f32> = x_487.x_MainLightWorldToLight[3i];
    let x_531 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) + vec2<f32>(x_529.x, x_529.y));
    let x_532 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_531.x, x_531.y, x_532.z);
    let x_534 : vec3<f32> = u_xlat14;
    let x_538 : vec2<f32> = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_539 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_538.x, x_538.y, x_539.z);
    let x_546 : vec3<f32> = u_xlat14;
    let x_549 : f32 = x_28.x_GlobalMipBias.x;
    let x_550 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_546.x, x_546.y), x_549);
    u_xlat5 = x_550;
    let x_552 : f32 = x_487.x_MainLightCookieTextureFormat;
    let x_554 : f32 = x_487.x_MainLightCookieTextureFormat;
    let x_556 : f32 = x_487.x_MainLightCookieTextureFormat;
    let x_558 : f32 = x_487.x_MainLightCookieTextureFormat;
    let x_559 : vec4<f32> = vec4<f32>(x_552, x_554, x_556, x_558);
    let x_566 : vec4<bool> = (vec4<f32>(x_559.x, x_559.y, x_559.z, x_559.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb14 = vec2<bool>(x_566.x, x_566.y);
    let x_569 : bool = u_xlatb14.y;
    if (x_569) {
      let x_574 : f32 = u_xlat5.w;
      x_570 = x_574;
    } else {
      let x_577 : f32 = u_xlat5.x;
      x_570 = x_577;
    }
    let x_578 : f32 = x_570;
    u_xlat25 = x_578;
    let x_580 : bool = u_xlatb14.x;
    if (x_580) {
      let x_584 : vec4<f32> = u_xlat5;
      x_581 = vec3<f32>(x_584.x, x_584.y, x_584.z);
    } else {
      let x_587 : f32 = u_xlat25;
      x_581 = vec3<f32>(x_587, x_587, x_587);
    }
    let x_589 : vec3<f32> = x_581;
    u_xlat14 = x_589;
  } else {
    u_xlat14.x = 1.0f;
    u_xlat14.y = 1.0f;
    u_xlat14.z = 1.0f;
  }
  let x_594 : vec3<f32> = u_xlat14;
  let x_596 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat14 = (x_594 * vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : f32 = u_xlat35;
  let x_605 : f32 = x_603.unity_LightData.z;
  u_xlat35 = (x_599 * x_605);
  let x_607 : f32 = u_xlat35;
  let x_609 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_607, x_607, x_607) * x_609);
  let x_611 : vec3<f32> = u_xlat1;
  let x_613 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat35 = dot(x_611, vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : f32 = u_xlat35;
  u_xlat35 = clamp(x_616, 0.0f, 1.0f);
  let x_618 : f32 = u_xlat35;
  let x_620 : vec3<f32> = u_xlat14;
  let x_621 : vec3<f32> = (vec3<f32>(x_618, x_618, x_618) * x_620);
  let x_622 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat0.x;
  u_xlat35 = ((x_625 * 10.0f) + 1.0f);
  let x_629 : f32 = u_xlat35;
  u_xlat35 = exp2(x_629);
  let x_631 : vec3<f32> = u_xlat2;
  let x_632 : f32 = u_xlat34;
  let x_636 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat6 = ((x_631 * vec3<f32>(x_632, x_632, x_632)) + vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_640 : vec3<f32> = u_xlat6;
  let x_641 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(x_640, x_641);
  let x_643 : f32 = u_xlat37;
  u_xlat37 = max(x_643, 1.17549435e-38f);
  let x_646 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat37;
  let x_650 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_648, x_648, x_648) * x_650);
  let x_652 : vec3<f32> = u_xlat1;
  let x_653 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(x_652, x_653);
  let x_655 : f32 = u_xlat37;
  u_xlat37 = clamp(x_655, 0.0f, 1.0f);
  let x_657 : f32 = u_xlat37;
  u_xlat37 = log2(x_657);
  let x_659 : f32 = u_xlat35;
  let x_660 : f32 = u_xlat37;
  u_xlat37 = (x_659 * x_660);
  let x_662 : f32 = u_xlat37;
  u_xlat37 = exp2(x_662);
  let x_664 : f32 = u_xlat37;
  let x_667 : vec4<f32> = x_41.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_664, x_664, x_664) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec3<f32> = u_xlat14;
  let x_671 : vec3<f32> = u_xlat6;
  u_xlat14 = (x_670 * x_671);
  let x_673 : vec4<f32> = u_xlat5;
  let x_675 : vec4<f32> = u_xlat0;
  let x_678 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_673.x, x_673.y, x_673.z) * vec3<f32>(x_675.y, x_675.z, x_675.w)) + x_678);
  let x_681 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_683 : f32 = x_603.unity_LightData.y;
  u_xlat37 = min(x_681, x_683);
  let x_686 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_686));
  let x_690 : f32 = u_xlat3.x;
  let x_693 : f32 = x_152.x_AdditionalShadowFadeParams.x;
  let x_696 : f32 = x_152.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_690 * x_693) + x_696);
  let x_700 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_700, 0.0f, 1.0f);
  let x_705 : f32 = x_487.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_707 : f32 = x_487.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_709 : f32 = x_487.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_711 : f32 = x_487.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_712 : vec4<f32> = vec4<f32>(x_705, x_707, x_709, x_711);
  let x_718 : vec4<bool> = (vec4<f32>(x_712.x, x_712.y, x_712.z, x_712.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_718.x, x_718.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_730 : u32 = u_xlatu_loop_1;
    let x_731 : u32 = u_xlatu37;
    if ((x_730 < x_731)) {
    } else {
      break;
    }
    let x_734 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_734 >> 2u);
    let x_737 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_737 & 3u));
    let x_741 : u32 = u_xlatu38;
    let x_744 : vec4<f32> = x_603.unity_LightIndices[bitcast<i32>(x_741)];
    let x_754 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_759 : vec4<u32> = indexable[x_754];
    u_xlat38 = dot(x_744, bitcast<vec4<f32>>(x_759));
    let x_763 : f32 = u_xlat38;
    u_xlati38 = i32(x_763);
    let x_766 : vec3<f32> = vs_TEXCOORD1;
    let x_777 : i32 = u_xlati38;
    let x_779 : vec4<f32> = x_776.x_AdditionalLightsPosition[x_777];
    let x_782 : i32 = u_xlati38;
    let x_784 : vec4<f32> = x_776.x_AdditionalLightsPosition[x_782];
    u_xlat7 = ((-(x_766) * vec3<f32>(x_779.w, x_779.w, x_779.w)) + vec3<f32>(x_784.x, x_784.y, x_784.z));
    let x_788 : vec3<f32> = u_xlat7;
    let x_789 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_788, x_789);
    let x_791 : f32 = u_xlat39;
    u_xlat39 = max(x_791, 0.00006103515625f);
    let x_794 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_794);
    let x_796 : f32 = u_xlat40;
    let x_798 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_796, x_796, x_796) * x_798);
    let x_800 : f32 = u_xlat39;
    u_xlat40 = (1.0f / x_800);
    let x_802 : f32 = u_xlat39;
    let x_803 : i32 = u_xlati38;
    let x_805 : f32 = x_776.x_AdditionalLightsAttenuation[x_803].x;
    u_xlat39 = (x_802 * x_805);
    let x_807 : f32 = u_xlat39;
    let x_809 : f32 = u_xlat39;
    u_xlat39 = ((-(x_807) * x_809) + 1.0f);
    let x_812 : f32 = u_xlat39;
    u_xlat39 = max(x_812, 0.0f);
    let x_814 : f32 = u_xlat39;
    let x_815 : f32 = u_xlat39;
    u_xlat39 = (x_814 * x_815);
    let x_817 : f32 = u_xlat39;
    let x_818 : f32 = u_xlat40;
    u_xlat39 = (x_817 * x_818);
    let x_820 : i32 = u_xlati38;
    let x_822 : vec4<f32> = x_776.x_AdditionalLightsSpotDir[x_820];
    let x_824 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(vec3<f32>(x_822.x, x_822.y, x_822.z), x_824);
    let x_826 : f32 = u_xlat40;
    let x_827 : i32 = u_xlati38;
    let x_829 : f32 = x_776.x_AdditionalLightsAttenuation[x_827].z;
    let x_831 : i32 = u_xlati38;
    let x_833 : f32 = x_776.x_AdditionalLightsAttenuation[x_831].w;
    u_xlat40 = ((x_826 * x_829) + x_833);
    let x_835 : f32 = u_xlat40;
    u_xlat40 = clamp(x_835, 0.0f, 1.0f);
    let x_837 : f32 = u_xlat40;
    let x_838 : f32 = u_xlat40;
    u_xlat40 = (x_837 * x_838);
    let x_840 : f32 = u_xlat39;
    let x_841 : f32 = u_xlat40;
    u_xlat39 = (x_840 * x_841);
    let x_845 : i32 = u_xlati38;
    let x_847 : f32 = x_152.x_AdditionalShadowParams[x_845].w;
    u_xlati40 = i32(x_847);
    let x_852 : i32 = u_xlati40;
    u_xlatb8.x = (x_852 >= 0i);
    let x_856 : bool = u_xlatb8.x;
    if (x_856) {
      let x_860 : i32 = u_xlati38;
      let x_862 : f32 = x_152.x_AdditionalShadowParams[x_860].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_862, x_862, x_862, x_862))));
      let x_868 : bool = u_xlatb8.x;
      if (x_868) {
        let x_871 : vec3<f32> = u_xlat7;
        let x_874 : vec3<f32> = u_xlat7;
        let x_877 : vec4<bool> = (abs(vec4<f32>(x_871.z, x_871.z, x_871.y, x_871.z)) >= abs(vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.x)));
        u_xlatb8 = vec3<bool>(x_877.x, x_877.y, x_877.z);
        let x_880 : bool = u_xlatb8.y;
        let x_882 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_880 & x_882);
        let x_886 : vec3<f32> = u_xlat7;
        let x_889 : vec4<bool> = (-(vec4<f32>(x_886.z, x_886.y, x_886.x, x_886.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_889.x, x_889.y, x_889.z);
        let x_893 : bool = u_xlatb9.x;
        u_xlat19.x = select(4.0f, 5.0f, x_893);
        let x_898 : bool = u_xlatb9.y;
        u_xlat19.z = select(2.0f, 3.0f, x_898);
        let x_903 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_903);
        let x_908 : bool = u_xlatb8.z;
        if (x_908) {
          let x_913 : f32 = u_xlat19.z;
          x_909 = x_913;
        } else {
          let x_916 : f32 = u_xlat9.x;
          x_909 = x_916;
        }
        let x_917 : f32 = x_909;
        u_xlat30 = x_917;
        let x_920 : bool = u_xlatb8.x;
        if (x_920) {
          let x_925 : f32 = u_xlat19.x;
          x_921 = x_925;
        } else {
          let x_927 : f32 = u_xlat30;
          x_921 = x_927;
        }
        let x_928 : f32 = x_921;
        u_xlat8.x = x_928;
        let x_930 : i32 = u_xlati38;
        let x_932 : f32 = x_152.x_AdditionalShadowParams[x_930].w;
        u_xlat19.x = trunc(x_932);
        let x_936 : f32 = u_xlat8.x;
        let x_938 : f32 = u_xlat19.x;
        u_xlat8.x = (x_936 + x_938);
        let x_942 : f32 = u_xlat8.x;
        u_xlati40 = i32(x_942);
      }
      let x_944 : i32 = u_xlati40;
      u_xlati40 = (x_944 << bitcast<u32>(2i));
      let x_946 : vec3<f32> = vs_TEXCOORD1;
      let x_949 : i32 = u_xlati40;
      let x_952 : i32 = u_xlati40;
      let x_956 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_949 + 1i) / 4i)][((x_952 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_946.y, x_946.y, x_946.y, x_946.y) * x_956);
      let x_958 : i32 = u_xlati40;
      let x_960 : i32 = u_xlati40;
      let x_963 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[(x_958 / 4i)][(x_960 % 4i)];
      let x_964 : vec3<f32> = vs_TEXCOORD1;
      let x_967 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_963 * vec4<f32>(x_964.x, x_964.x, x_964.x, x_964.x)) + x_967);
      let x_969 : i32 = u_xlati40;
      let x_972 : i32 = u_xlati40;
      let x_976 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_969 + 2i) / 4i)][((x_972 + 2i) % 4i)];
      let x_977 : vec3<f32> = vs_TEXCOORD1;
      let x_980 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_976 * vec4<f32>(x_977.z, x_977.z, x_977.z, x_977.z)) + x_980);
      let x_982 : vec4<f32> = u_xlat8;
      let x_983 : i32 = u_xlati40;
      let x_986 : i32 = u_xlati40;
      let x_990 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_983 + 3i) / 4i)][((x_986 + 3i) % 4i)];
      u_xlat8 = (x_982 + x_990);
      let x_992 : vec4<f32> = u_xlat8;
      let x_994 : vec4<f32> = u_xlat8;
      let x_996 : vec3<f32> = (vec3<f32>(x_992.x, x_992.y, x_992.z) / vec3<f32>(x_994.w, x_994.w, x_994.w));
      let x_997 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
      let x_1000 : vec4<f32> = u_xlat8;
      let x_1001 : vec2<f32> = vec2<f32>(x_1000.x, x_1000.y);
      let x_1003 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
      let x_1011 : vec3<f32> = txVec1;
      let x_1013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1011.xy, x_1011.z);
      u_xlat40 = x_1013;
      let x_1014 : i32 = u_xlati38;
      let x_1016 : f32 = x_152.x_AdditionalShadowParams[x_1014].x;
      u_xlat8.x = (1.0f + -(x_1016));
      let x_1020 : f32 = u_xlat40;
      let x_1021 : i32 = u_xlati38;
      let x_1023 : f32 = x_152.x_AdditionalShadowParams[x_1021].x;
      let x_1026 : f32 = u_xlat8.x;
      u_xlat40 = ((x_1020 * x_1023) + x_1026);
      let x_1029 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_1029);
      let x_1034 : f32 = u_xlat8.z;
      u_xlatb19 = (x_1034 >= 1.0f);
      let x_1036 : bool = u_xlatb19;
      let x_1038 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_1036 | x_1038);
      let x_1042 : bool = u_xlatb8.x;
      let x_1043 : f32 = u_xlat40;
      u_xlat40 = select(x_1043, 1.0f, x_1042);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_1046 : f32 = u_xlat40;
    u_xlat8.x = (-(x_1046) + 1.0f);
    let x_1051 : f32 = u_xlat3.x;
    let x_1053 : f32 = u_xlat8.x;
    let x_1055 : f32 = u_xlat40;
    u_xlat40 = ((x_1051 * x_1053) + x_1055);
    let x_1058 : i32 = u_xlati38;
    u_xlati8 = (1i << bitcast<u32>((x_1058 & 31i)));
    let x_1062 : i32 = u_xlati8;
    let x_1065 : f32 = x_487.x_AdditionalLightsCookieEnableBits;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_1062) & bitcast<u32>(x_1065)));
    let x_1069 : i32 = u_xlati8;
    if ((x_1069 != 0i)) {
      let x_1073 : i32 = u_xlati38;
      let x_1075 : f32 = x_487.x_AdditionalLightsLightTypes[x_1073].el;
      u_xlati8 = i32(x_1075);
      let x_1078 : i32 = u_xlati8;
      u_xlati19 = select(1i, 0i, (x_1078 != 0i));
      let x_1082 : i32 = u_xlati38;
      u_xlati30 = (x_1082 << bitcast<u32>(2i));
      let x_1084 : i32 = u_xlati19;
      if ((x_1084 != 0i)) {
        let x_1088 : vec3<f32> = vs_TEXCOORD1;
        let x_1090 : i32 = u_xlati30;
        let x_1093 : i32 = u_xlati30;
        let x_1097 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1090 + 1i) / 4i)][((x_1093 + 1i) % 4i)];
        let x_1099 : vec3<f32> = (vec3<f32>(x_1088.y, x_1088.y, x_1088.y) * vec3<f32>(x_1097.x, x_1097.y, x_1097.w));
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
        let x_1102 : i32 = u_xlati30;
        let x_1104 : i32 = u_xlati30;
        let x_1107 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[(x_1102 / 4i)][(x_1104 % 4i)];
        let x_1109 : vec3<f32> = vs_TEXCOORD1;
        let x_1112 : vec4<f32> = u_xlat9;
        let x_1114 : vec3<f32> = ((vec3<f32>(x_1107.x, x_1107.y, x_1107.w) * vec3<f32>(x_1109.x, x_1109.x, x_1109.x)) + vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
        let x_1117 : i32 = u_xlati30;
        let x_1120 : i32 = u_xlati30;
        let x_1124 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1117 + 2i) / 4i)][((x_1120 + 2i) % 4i)];
        let x_1126 : vec3<f32> = vs_TEXCOORD1;
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1131 : vec3<f32> = ((vec3<f32>(x_1124.x, x_1124.y, x_1124.w) * vec3<f32>(x_1126.z, x_1126.z, x_1126.z)) + vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat9;
        let x_1136 : i32 = u_xlati30;
        let x_1139 : i32 = u_xlati30;
        let x_1143 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1136 + 3i) / 4i)][((x_1139 + 3i) % 4i)];
        let x_1145 : vec3<f32> = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) + vec3<f32>(x_1143.x, x_1143.y, x_1143.w));
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1152 : vec2<f32> = (vec2<f32>(x_1148.x, x_1148.y) / vec2<f32>(x_1150.z, x_1150.z));
        let x_1153 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1152.x, x_1153.y, x_1152.y);
        let x_1155 : vec3<f32> = u_xlat19;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1155.x, x_1155.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1159 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1158.x, x_1159.y, x_1158.y);
        let x_1161 : vec3<f32> = u_xlat19;
        let x_1165 : vec2<f32> = clamp(vec2<f32>(x_1161.x, x_1161.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1166 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1165.x, x_1166.y, x_1165.y);
        let x_1168 : i32 = u_xlati38;
        let x_1170 : vec4<f32> = x_487.x_AdditionalLightsCookieAtlasUVRects[x_1168];
        let x_1172 : vec3<f32> = u_xlat19;
        let x_1175 : i32 = u_xlati38;
        let x_1177 : vec4<f32> = x_487.x_AdditionalLightsCookieAtlasUVRects[x_1175];
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(x_1172.x, x_1172.z)) + vec2<f32>(x_1177.z, x_1177.w));
        let x_1180 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1179.x, x_1180.y, x_1179.y);
      } else {
        let x_1183 : i32 = u_xlati8;
        u_xlatb8.x = (x_1183 == 1i);
        let x_1187 : bool = u_xlatb8.x;
        u_xlati8 = select(0i, 1i, x_1187);
        let x_1189 : i32 = u_xlati8;
        if ((x_1189 != 0i)) {
          let x_1193 : vec3<f32> = vs_TEXCOORD1;
          let x_1195 : i32 = u_xlati30;
          let x_1198 : i32 = u_xlati30;
          let x_1202 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1195 + 1i) / 4i)][((x_1198 + 1i) % 4i)];
          let x_1204 : vec2<f32> = (vec2<f32>(x_1193.y, x_1193.y) * vec2<f32>(x_1202.x, x_1202.y));
          let x_1205 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
          let x_1207 : i32 = u_xlati30;
          let x_1209 : i32 = u_xlati30;
          let x_1212 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[(x_1207 / 4i)][(x_1209 % 4i)];
          let x_1214 : vec3<f32> = vs_TEXCOORD1;
          let x_1217 : vec4<f32> = u_xlat9;
          let x_1219 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.y) * vec2<f32>(x_1214.x, x_1214.x)) + vec2<f32>(x_1217.x, x_1217.y));
          let x_1220 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
          let x_1222 : i32 = u_xlati30;
          let x_1225 : i32 = u_xlati30;
          let x_1229 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1222 + 2i) / 4i)][((x_1225 + 2i) % 4i)];
          let x_1231 : vec3<f32> = vs_TEXCOORD1;
          let x_1234 : vec4<f32> = u_xlat9;
          let x_1236 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(x_1231.z, x_1231.z)) + vec2<f32>(x_1234.x, x_1234.y));
          let x_1237 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
          let x_1239 : vec4<f32> = u_xlat9;
          let x_1241 : i32 = u_xlati30;
          let x_1244 : i32 = u_xlati30;
          let x_1248 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1241 + 3i) / 4i)][((x_1244 + 3i) % 4i)];
          let x_1250 : vec2<f32> = (vec2<f32>(x_1239.x, x_1239.y) + vec2<f32>(x_1248.x, x_1248.y));
          let x_1251 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1250.x, x_1250.y, x_1251.z, x_1251.w);
          let x_1253 : vec4<f32> = u_xlat9;
          let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1257 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
          let x_1259 : vec4<f32> = u_xlat9;
          let x_1261 : vec2<f32> = fract(vec2<f32>(x_1259.x, x_1259.y));
          let x_1262 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
          let x_1264 : i32 = u_xlati38;
          let x_1266 : vec4<f32> = x_487.x_AdditionalLightsCookieAtlasUVRects[x_1264];
          let x_1268 : vec4<f32> = u_xlat9;
          let x_1271 : i32 = u_xlati38;
          let x_1273 : vec4<f32> = x_487.x_AdditionalLightsCookieAtlasUVRects[x_1271];
          let x_1275 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1268.x, x_1268.y)) + vec2<f32>(x_1273.z, x_1273.w));
          let x_1276 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1275.x, x_1276.y, x_1275.y);
        } else {
          let x_1279 : vec3<f32> = vs_TEXCOORD1;
          let x_1281 : i32 = u_xlati30;
          let x_1284 : i32 = u_xlati30;
          let x_1288 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1281 + 1i) / 4i)][((x_1284 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1279.y, x_1279.y, x_1279.y, x_1279.y) * x_1288);
          let x_1290 : i32 = u_xlati30;
          let x_1292 : i32 = u_xlati30;
          let x_1295 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[(x_1290 / 4i)][(x_1292 % 4i)];
          let x_1296 : vec3<f32> = vs_TEXCOORD1;
          let x_1299 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1295 * vec4<f32>(x_1296.x, x_1296.x, x_1296.x, x_1296.x)) + x_1299);
          let x_1301 : i32 = u_xlati30;
          let x_1304 : i32 = u_xlati30;
          let x_1308 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1301 + 2i) / 4i)][((x_1304 + 2i) % 4i)];
          let x_1309 : vec3<f32> = vs_TEXCOORD1;
          let x_1312 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1308 * vec4<f32>(x_1309.z, x_1309.z, x_1309.z, x_1309.z)) + x_1312);
          let x_1314 : vec4<f32> = u_xlat9;
          let x_1315 : i32 = u_xlati30;
          let x_1318 : i32 = u_xlati30;
          let x_1322 : vec4<f32> = x_487.x_AdditionalLightsWorldToLights[((x_1315 + 3i) / 4i)][((x_1318 + 3i) % 4i)];
          u_xlat9 = (x_1314 + x_1322);
          let x_1324 : vec4<f32> = u_xlat9;
          let x_1326 : vec4<f32> = u_xlat9;
          let x_1328 : vec3<f32> = (vec3<f32>(x_1324.x, x_1324.y, x_1324.z) / vec3<f32>(x_1326.w, x_1326.w, x_1326.w));
          let x_1329 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
          let x_1331 : vec4<f32> = u_xlat9;
          let x_1333 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_1331.x, x_1331.y, x_1331.z), vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
          let x_1338 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_1338);
          let x_1341 : vec4<f32> = u_xlat8;
          let x_1343 : vec4<f32> = u_xlat9;
          let x_1345 : vec3<f32> = (vec3<f32>(x_1341.x, x_1341.x, x_1341.x) * vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
          let x_1346 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
          let x_1348 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_1348.x, x_1348.y, x_1348.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1355 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_1355, 0.00000099999999747524f);
          let x_1360 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_1360);
          let x_1364 : vec4<f32> = u_xlat8;
          let x_1366 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1364.x, x_1364.x, x_1364.x) * vec3<f32>(x_1366.z, x_1366.x, x_1366.y));
          let x_1370 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1370);
          let x_1374 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1374, 0.0f, 1.0f);
          let x_1378 : vec3<f32> = u_xlat10;
          let x_1380 : vec4<bool> = (vec4<f32>(x_1378.y, x_1378.z, x_1378.y, x_1378.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb31 = vec2<bool>(x_1380.x, x_1380.y);
          let x_1385 : bool = u_xlatb31.x;
          if (x_1385) {
            let x_1390 : f32 = u_xlat10.x;
            x_1386 = x_1390;
          } else {
            let x_1393 : f32 = u_xlat10.x;
            x_1386 = -(x_1393);
          }
          let x_1395 : f32 = x_1386;
          u_xlat31.x = x_1395;
          let x_1398 : bool = u_xlatb31.y;
          if (x_1398) {
            let x_1403 : f32 = u_xlat10.x;
            x_1399 = x_1403;
          } else {
            let x_1406 : f32 = u_xlat10.x;
            x_1399 = -(x_1406);
          }
          let x_1408 : f32 = x_1399;
          u_xlat31.y = x_1408;
          let x_1410 : vec4<f32> = u_xlat9;
          let x_1412 : vec4<f32> = u_xlat8;
          let x_1415 : vec2<f32> = u_xlat31;
          let x_1416 : vec2<f32> = ((vec2<f32>(x_1410.x, x_1410.y) * vec2<f32>(x_1412.x, x_1412.x)) + x_1415);
          let x_1417 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1416.x, x_1417.y, x_1416.y, x_1417.w);
          let x_1419 : vec4<f32> = u_xlat8;
          let x_1422 : vec2<f32> = ((vec2<f32>(x_1419.x, x_1419.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1423 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1422.x, x_1423.y, x_1422.y, x_1423.w);
          let x_1425 : vec4<f32> = u_xlat8;
          let x_1429 : vec2<f32> = clamp(vec2<f32>(x_1425.x, x_1425.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1430 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1429.x, x_1430.y, x_1429.y, x_1430.w);
          let x_1432 : i32 = u_xlati38;
          let x_1434 : vec4<f32> = x_487.x_AdditionalLightsCookieAtlasUVRects[x_1432];
          let x_1436 : vec4<f32> = u_xlat8;
          let x_1439 : i32 = u_xlati38;
          let x_1441 : vec4<f32> = x_487.x_AdditionalLightsCookieAtlasUVRects[x_1439];
          let x_1443 : vec2<f32> = ((vec2<f32>(x_1434.x, x_1434.y) * vec2<f32>(x_1436.x, x_1436.z)) + vec2<f32>(x_1441.z, x_1441.w));
          let x_1444 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1443.x, x_1444.y, x_1443.y);
        }
      }
      let x_1451 : vec3<f32> = u_xlat19;
      let x_1453 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1451.x, x_1451.z), 0.0f);
      u_xlat8 = x_1453;
      let x_1456 : bool = u_xlatb5.y;
      if (x_1456) {
        let x_1461 : f32 = u_xlat8.w;
        x_1457 = x_1461;
      } else {
        let x_1464 : f32 = u_xlat8.x;
        x_1457 = x_1464;
      }
      let x_1465 : f32 = x_1457;
      u_xlat41 = x_1465;
      let x_1467 : bool = u_xlatb5.x;
      if (x_1467) {
        let x_1471 : vec4<f32> = u_xlat8;
        x_1468 = vec3<f32>(x_1471.x, x_1471.y, x_1471.z);
      } else {
        let x_1474 : f32 = u_xlat41;
        x_1468 = vec3<f32>(x_1474, x_1474, x_1474);
      }
      let x_1476 : vec3<f32> = x_1468;
      let x_1477 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1483 : vec4<f32> = u_xlat8;
    let x_1485 : i32 = u_xlati38;
    let x_1487 : vec4<f32> = x_776.x_AdditionalLightsColor[x_1485];
    let x_1489 : vec3<f32> = (vec3<f32>(x_1483.x, x_1483.y, x_1483.z) * vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
    let x_1490 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
    let x_1492 : f32 = u_xlat39;
    let x_1493 : f32 = u_xlat40;
    u_xlat38 = (x_1492 * x_1493);
    let x_1495 : f32 = u_xlat38;
    let x_1497 : vec4<f32> = u_xlat8;
    let x_1499 : vec3<f32> = (vec3<f32>(x_1495, x_1495, x_1495) * vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
    let x_1500 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
    let x_1502 : vec3<f32> = u_xlat1;
    let x_1503 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1502, x_1503);
    let x_1505 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1505, 0.0f, 1.0f);
    let x_1507 : f32 = u_xlat38;
    let x_1509 : vec4<f32> = u_xlat8;
    let x_1511 : vec3<f32> = (vec3<f32>(x_1507, x_1507, x_1507) * vec3<f32>(x_1509.x, x_1509.y, x_1509.z));
    let x_1512 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
    let x_1514 : vec3<f32> = u_xlat2;
    let x_1515 : f32 = u_xlat34;
    let x_1518 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1514 * vec3<f32>(x_1515, x_1515, x_1515)) + x_1518);
    let x_1520 : vec3<f32> = u_xlat7;
    let x_1521 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1520, x_1521);
    let x_1523 : f32 = u_xlat38;
    u_xlat38 = max(x_1523, 1.17549435e-38f);
    let x_1525 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1525);
    let x_1527 : f32 = u_xlat38;
    let x_1529 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1527, x_1527, x_1527) * x_1529);
    let x_1531 : vec3<f32> = u_xlat1;
    let x_1532 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1531, x_1532);
    let x_1534 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1534, 0.0f, 1.0f);
    let x_1536 : f32 = u_xlat38;
    u_xlat38 = log2(x_1536);
    let x_1538 : f32 = u_xlat35;
    let x_1539 : f32 = u_xlat38;
    u_xlat38 = (x_1538 * x_1539);
    let x_1541 : f32 = u_xlat38;
    u_xlat38 = exp2(x_1541);
    let x_1543 : f32 = u_xlat38;
    let x_1546 : vec4<f32> = x_41.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1543, x_1543, x_1543) * vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
    let x_1549 : vec3<f32> = u_xlat7;
    let x_1550 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1549 * vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
    let x_1553 : vec4<f32> = u_xlat9;
    let x_1555 : vec4<f32> = u_xlat0;
    let x_1558 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1553.x, x_1553.y, x_1553.z) * vec3<f32>(x_1555.y, x_1555.z, x_1555.w)) + x_1558);
    let x_1560 : vec3<f32> = u_xlat6;
    let x_1561 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1560 + x_1561);

    continuing {
      let x_1563 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1563 + bitcast<u32>(1i));
    }
  }
  let x_1566 : vec4<f32> = u_xlat4;
  let x_1568 : vec4<f32> = u_xlat0;
  let x_1571 : vec3<f32> = u_xlat14;
  u_xlat11 = ((vec3<f32>(x_1566.x, x_1566.y, x_1566.z) * vec3<f32>(x_1568.y, x_1568.z, x_1568.w)) + x_1571);
  let x_1575 : vec3<f32> = u_xlat6;
  let x_1576 : vec3<f32> = u_xlat11;
  let x_1577 : vec3<f32> = (x_1575 + x_1576);
  let x_1578 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
  let x_1582 : f32 = x_41.x_Surface;
  u_xlatb11 = (x_1582 == 1.0f);
  let x_1584 : bool = u_xlatb11;
  if (x_1584) {
    let x_1589 : f32 = u_xlat0.x;
    x_1585 = x_1589;
  } else {
    x_1585 = 1.0f;
  }
  let x_1591 : f32 = x_1585;
  SV_Target0.w = x_1591;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


