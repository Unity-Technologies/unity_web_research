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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_136 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat39 : f32;

@group(1) @binding(2) var<uniform> x_360 : UnityPerDraw;

var<private> u_xlat38 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb15 : vec2<bool>;

var<private> u_xlat27 : f32;

@group(1) @binding(5) var<uniform> x_533 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu15 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu40 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_850 : AdditionalLights;

var<private> u_xlat41 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb43 : bool;

var<private> u_xlati42 : i32;

var<private> u_xlati43 : i32;

var<private> u_xlati44 : i32;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb33 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat12 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb12 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu27 : u32;

var<private> u_xlatb40 : bool;

fn main_1() {
  var x_98 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_618 : f32;
  var x_629 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_979 : f32;
  var x_989 : f32;
  var txVec1 : vec3<f32>;
  var x_1413 : f32;
  var x_1426 : f32;
  var x_1474 : f32;
  var x_1485 : vec3<f32>;
  var x_1628 : f32;
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
  u_xlat13 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat13;
  let x_70 : vec3<f32> = u_xlat13;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat13;
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat13 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_85 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat2.x = x_85;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2.y = x_88;
  let x_93 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat2.z = x_93;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_101 : vec3<f32> = u_xlat13;
    x_98 = x_101;
  } else {
    let x_103 : vec4<f32> = u_xlat2;
    x_98 = vec3<f32>(x_103.x, x_103.y, x_103.z);
  }
  let x_105 : vec3<f32> = x_98;
  u_xlat1 = x_105;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  let x_109 : vec3<f32> = vs_TEXCOORD2;
  u_xlat37 = dot(x_108, x_109);
  let x_111 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_111);
  let x_113 : f32 = u_xlat37;
  let x_115 : vec3<f32> = vs_TEXCOORD2;
  let x_116 : vec3<f32> = (vec3<f32>(x_113, x_113, x_113) * x_115);
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_119 : vec3<f32> = u_xlat1;
  let x_120 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_119, x_120);
  let x_122 : f32 = u_xlat37;
  u_xlat37 = max(x_122, 0.00006103515625f);
  let x_125 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_125);
  let x_128 : vec3<f32> = vs_TEXCOORD1;
  let x_138 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres0;
  let x_141 : vec3<f32> = (x_128 + -(vec3<f32>(x_138.x, x_138.y, x_138.z)));
  let x_142 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres1;
  let x_150 : vec3<f32> = (x_145 + -(vec3<f32>(x_147.x, x_147.y, x_147.z)));
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres2;
  let x_160 : vec3<f32> = (x_154 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_164 + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_176 : vec4<f32> = u_xlat4;
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_182 : vec4<f32> = u_xlat5;
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec3<f32> = u_xlat6;
  let x_189 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_188, x_189);
  let x_195 : vec4<f32> = u_xlat3;
  let x_198 : vec4<f32> = x_136.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_195 < x_198);
  let x_201 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_201);
  let x_206 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_206);
  let x_210 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_218);
  let x_224 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_224);
  let x_228 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_228);
  let x_231 : vec4<f32> = u_xlat3;
  let x_233 : vec4<f32> = u_xlat4;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) + vec3<f32>(x_233.y, x_233.z, x_233.w));
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat3;
  let x_241 : vec3<f32> = max(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_242.x, x_241.x, x_241.y, x_241.z);
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_244, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_252 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_252) + 4.0f);
  let x_259 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_259);
  let x_263 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_263) << bitcast<u32>(2i));
  let x_267 : vec3<f32> = vs_TEXCOORD1;
  let x_269 : i32 = u_xlati3;
  let x_272 : i32 = u_xlati3;
  let x_276 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_269 + 1i) / 4i)][((x_272 + 1i) % 4i)];
  u_xlat15 = (vec3<f32>(x_267.y, x_267.y, x_267.y) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : i32 = u_xlati3;
  let x_281 : i32 = u_xlati3;
  let x_284 : vec4<f32> = x_136.x_MainLightWorldToShadow[(x_279 / 4i)][(x_281 % 4i)];
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_289 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286.x, x_286.x, x_286.x)) + x_289);
  let x_291 : i32 = u_xlati3;
  let x_294 : i32 = u_xlati3;
  let x_298 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_291 + 2i) / 4i)][((x_294 + 2i) % 4i)];
  let x_300 : vec3<f32> = vs_TEXCOORD1;
  let x_303 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.z, x_300.z, x_300.z)) + x_303);
  let x_305 : vec3<f32> = u_xlat15;
  let x_306 : i32 = u_xlati3;
  let x_309 : i32 = u_xlati3;
  let x_313 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_306 + 3i) / 4i)][((x_309 + 3i) % 4i)];
  let x_315 : vec3<f32> = (x_305 + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_321 : f32 = vs_TEXCOORD1.y;
  let x_323 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat39 = (x_321 * x_323);
  let x_326 : f32 = x_28.unity_MatrixV[0i].z;
  let x_328 : f32 = vs_TEXCOORD1.x;
  let x_330 : f32 = u_xlat39;
  u_xlat39 = ((x_326 * x_328) + x_330);
  let x_333 : f32 = x_28.unity_MatrixV[2i].z;
  let x_335 : f32 = vs_TEXCOORD1.z;
  let x_337 : f32 = u_xlat39;
  u_xlat39 = ((x_333 * x_335) + x_337);
  let x_339 : f32 = u_xlat39;
  let x_341 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat39 = (x_339 + x_341);
  let x_343 : f32 = u_xlat39;
  let x_346 : f32 = x_28.x_ProjectionParams.y;
  u_xlat39 = (-(x_343) + -(x_346));
  let x_349 : f32 = u_xlat39;
  u_xlat39 = max(x_349, 0.0f);
  let x_351 : f32 = u_xlat39;
  let x_354 : f32 = x_28.unity_FogParams.x;
  u_xlat39 = (x_351 * x_354);
  u_xlat2.w = 1.0f;
  let x_363 : vec4<f32> = x_360.unity_SHAr;
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_363, x_364);
  let x_369 : vec4<f32> = x_360.unity_SHAg;
  let x_370 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_369, x_370);
  let x_375 : vec4<f32> = x_360.unity_SHAb;
  let x_376 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_375, x_376);
  let x_379 : vec4<f32> = u_xlat2;
  let x_381 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_379.y, x_379.z, x_379.z, x_379.x) * vec4<f32>(x_381.x, x_381.y, x_381.z, x_381.z));
  let x_386 : vec4<f32> = x_360.unity_SHBr;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_386, x_387);
  let x_392 : vec4<f32> = x_360.unity_SHBg;
  let x_393 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_392, x_393);
  let x_398 : vec4<f32> = x_360.unity_SHBb;
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_398, x_399);
  let x_404 : f32 = u_xlat2.y;
  let x_406 : f32 = u_xlat2.y;
  u_xlat38 = (x_404 * x_406);
  let x_409 : f32 = u_xlat2.x;
  let x_411 : f32 = u_xlat2.x;
  let x_413 : f32 = u_xlat38;
  u_xlat38 = ((x_409 * x_411) + -(x_413));
  let x_418 : vec4<f32> = x_360.unity_SHC;
  let x_420 : f32 = u_xlat38;
  let x_423 : vec3<f32> = u_xlat6;
  let x_424 : vec3<f32> = ((vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(x_420, x_420, x_420)) + x_423);
  let x_425 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat4;
  let x_429 : vec4<f32> = u_xlat5;
  let x_431 : vec3<f32> = (vec3<f32>(x_427.x, x_427.y, x_427.z) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat4;
  let x_436 : vec3<f32> = max(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : vec4<f32> = u_xlat3;
  let x_441 : vec2<f32> = vec2<f32>(x_440.x, x_440.y);
  let x_443 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_441.x, x_441.y, x_443);
  let x_455 : vec3<f32> = txVec0;
  let x_457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_455.xy, x_455.z);
  u_xlat38 = x_457;
  let x_460 : f32 = x_136.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_460) + 1.0f);
  let x_464 : f32 = u_xlat38;
  let x_466 : f32 = x_136.x_MainLightShadowParams.x;
  let x_469 : f32 = u_xlat3.x;
  u_xlat38 = ((x_464 * x_466) + x_469);
  let x_472 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_472);
  let x_479 : f32 = u_xlat3.z;
  u_xlatb15.x = (x_479 >= 1.0f);
  let x_483 : bool = u_xlatb15.x;
  let x_485 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_483 | x_485);
  let x_489 : bool = u_xlatb3.x;
  let x_490 : f32 = u_xlat38;
  u_xlat38 = select(x_490, 1.0f, x_489);
  let x_492 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_496 : vec3<f32> = (x_492 + -(x_494));
  let x_497 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat3;
  let x_501 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_499.x, x_499.y, x_499.z), vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_506 : f32 = u_xlat3.x;
  let x_508 : f32 = x_136.x_MainLightShadowParams.z;
  let x_511 : f32 = x_136.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_506 * x_508) + x_511);
  let x_515 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_515, 0.0f, 1.0f);
  let x_519 : f32 = u_xlat38;
  u_xlat27 = (-(x_519) + 1.0f);
  let x_523 : f32 = u_xlat15.x;
  let x_524 : f32 = u_xlat27;
  let x_526 : f32 = u_xlat38;
  u_xlat38 = ((x_523 * x_524) + x_526);
  let x_535 : f32 = x_533.x_MainLightCookieTextureFormat;
  u_xlatb15.x = !((x_535 == -1.0f));
  let x_539 : bool = u_xlatb15.x;
  if (x_539) {
    let x_542 : vec3<f32> = vs_TEXCOORD1;
    let x_545 : vec4<f32> = x_533.x_MainLightWorldToLight[1i];
    let x_547 : vec2<f32> = (vec2<f32>(x_542.y, x_542.y) * vec2<f32>(x_545.x, x_545.y));
    let x_548 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_547.x, x_547.y, x_548.z);
    let x_551 : vec4<f32> = x_533.x_MainLightWorldToLight[0i];
    let x_553 : vec3<f32> = vs_TEXCOORD1;
    let x_556 : vec3<f32> = u_xlat15;
    let x_558 : vec2<f32> = ((vec2<f32>(x_551.x, x_551.y) * vec2<f32>(x_553.x, x_553.x)) + vec2<f32>(x_556.x, x_556.y));
    let x_559 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_558.x, x_558.y, x_559.z);
    let x_562 : vec4<f32> = x_533.x_MainLightWorldToLight[2i];
    let x_564 : vec3<f32> = vs_TEXCOORD1;
    let x_567 : vec3<f32> = u_xlat15;
    let x_569 : vec2<f32> = ((vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_564.z, x_564.z)) + vec2<f32>(x_567.x, x_567.y));
    let x_570 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_569.x, x_569.y, x_570.z);
    let x_572 : vec3<f32> = u_xlat15;
    let x_575 : vec4<f32> = x_533.x_MainLightWorldToLight[3i];
    let x_577 : vec2<f32> = (vec2<f32>(x_572.x, x_572.y) + vec2<f32>(x_575.x, x_575.y));
    let x_578 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_577.x, x_577.y, x_578.z);
    let x_580 : vec3<f32> = u_xlat15;
    let x_585 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_586 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_585.x, x_585.y, x_586.z);
    let x_593 : vec3<f32> = u_xlat15;
    let x_596 : f32 = x_28.x_GlobalMipBias.x;
    let x_597 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_593.x, x_593.y), x_596);
    u_xlat5 = x_597;
    let x_599 : f32 = x_533.x_MainLightCookieTextureFormat;
    let x_601 : f32 = x_533.x_MainLightCookieTextureFormat;
    let x_603 : f32 = x_533.x_MainLightCookieTextureFormat;
    let x_605 : f32 = x_533.x_MainLightCookieTextureFormat;
    let x_606 : vec4<f32> = vec4<f32>(x_599, x_601, x_603, x_605);
    let x_613 : vec4<bool> = (vec4<f32>(x_606.x, x_606.y, x_606.z, x_606.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb15 = vec2<bool>(x_613.x, x_613.y);
    let x_616 : bool = u_xlatb15.y;
    if (x_616) {
      let x_622 : f32 = u_xlat5.w;
      x_618 = x_622;
    } else {
      let x_625 : f32 = u_xlat5.x;
      x_618 = x_625;
    }
    let x_626 : f32 = x_618;
    u_xlat27 = x_626;
    let x_628 : bool = u_xlatb15.x;
    if (x_628) {
      let x_632 : vec4<f32> = u_xlat5;
      x_629 = vec3<f32>(x_632.x, x_632.y, x_632.z);
    } else {
      let x_635 : f32 = u_xlat27;
      x_629 = vec3<f32>(x_635, x_635, x_635);
    }
    let x_637 : vec3<f32> = x_629;
    let x_638 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_644 : vec4<f32> = u_xlat5;
  let x_647 : vec4<f32> = x_28.x_MainLightColor;
  let x_649 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : f32 = u_xlat38;
  let x_654 : f32 = x_360.unity_LightData.z;
  u_xlat38 = (x_652 * x_654);
  let x_656 : f32 = u_xlat38;
  let x_658 : vec4<f32> = u_xlat5;
  let x_660 : vec3<f32> = (vec3<f32>(x_656, x_656, x_656) * vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat2;
  let x_666 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_663.x, x_663.y, x_663.z), vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : f32 = u_xlat38;
  u_xlat38 = clamp(x_669, 0.0f, 1.0f);
  let x_671 : f32 = u_xlat38;
  let x_673 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_671, x_671, x_671) * vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_677 : f32 = u_xlat0.x;
  u_xlat38 = ((x_677 * 10.0f) + 1.0f);
  let x_681 : f32 = u_xlat38;
  u_xlat38 = exp2(x_681);
  let x_684 : vec3<f32> = u_xlat1;
  let x_685 : f32 = u_xlat37;
  let x_689 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat7 = ((x_684 * vec3<f32>(x_685, x_685, x_685)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec3<f32> = u_xlat7;
  let x_693 : vec3<f32> = u_xlat7;
  u_xlat15.x = dot(x_692, x_693);
  let x_697 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_697, 1.17549435e-38f);
  let x_702 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_702);
  let x_705 : vec3<f32> = u_xlat15;
  let x_707 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_705.x, x_705.x, x_705.x) * x_707);
  let x_709 : vec4<f32> = u_xlat2;
  let x_711 : vec3<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), x_711);
  let x_715 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_715, 0.0f, 1.0f);
  let x_719 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_719);
  let x_722 : f32 = u_xlat38;
  let x_724 : f32 = u_xlat15.x;
  u_xlat15.x = (x_722 * x_724);
  let x_728 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_728);
  let x_731 : vec3<f32> = u_xlat15;
  let x_734 : vec4<f32> = x_41.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_731.x, x_731.x, x_731.x) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat5;
  let x_739 : vec3<f32> = u_xlat7;
  let x_740 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * x_739);
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec3<f32> = u_xlat6;
  let x_744 : vec4<f32> = u_xlat0;
  let x_747 : vec4<f32> = u_xlat5;
  let x_749 : vec3<f32> = ((x_743 * vec3<f32>(x_744.y, x_744.z, x_744.w)) + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_753 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_755 : f32 = x_360.unity_LightData.y;
  u_xlat15.x = min(x_753, x_755);
  let x_760 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_760));
  let x_764 : f32 = u_xlat3.x;
  let x_767 : f32 = x_136.x_AdditionalShadowFadeParams.x;
  let x_770 : f32 = x_136.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_764 * x_767) + x_770);
  let x_774 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_774, 0.0f, 1.0f);
  let x_779 : f32 = x_533.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_781 : f32 = x_533.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_783 : f32 = x_533.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_785 : f32 = x_533.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_786 : vec4<f32> = vec4<f32>(x_779, x_781, x_783, x_785);
  let x_792 : vec4<bool> = (vec4<f32>(x_786.x, x_786.y, x_786.z, x_786.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_792.x, x_792.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_804 : u32 = u_xlatu_loop_1;
    let x_805 : u32 = u_xlatu15;
    if ((x_804 < x_805)) {
    } else {
      break;
    }
    let x_808 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_808 >> 2u);
    let x_811 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_811 & 3u));
    let x_815 : u32 = u_xlatu40;
    let x_818 : vec4<f32> = x_360.unity_LightIndices[bitcast<i32>(x_815)];
    let x_828 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_833 : vec4<u32> = indexable[x_828];
    u_xlat40 = dot(x_818, bitcast<vec4<f32>>(x_833));
    let x_837 : f32 = u_xlat40;
    u_xlati40 = i32(x_837);
    let x_840 : vec3<f32> = vs_TEXCOORD1;
    let x_851 : i32 = u_xlati40;
    let x_853 : vec4<f32> = x_850.x_AdditionalLightsPosition[x_851];
    let x_856 : i32 = u_xlati40;
    let x_858 : vec4<f32> = x_850.x_AdditionalLightsPosition[x_856];
    u_xlat8 = ((-(x_840) * vec3<f32>(x_853.w, x_853.w, x_853.w)) + vec3<f32>(x_858.x, x_858.y, x_858.z));
    let x_862 : vec3<f32> = u_xlat8;
    let x_863 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_862, x_863);
    let x_865 : f32 = u_xlat41;
    u_xlat41 = max(x_865, 0.00006103515625f);
    let x_868 : f32 = u_xlat41;
    u_xlat30 = inverseSqrt(x_868);
    let x_870 : f32 = u_xlat30;
    let x_872 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_870, x_870, x_870) * x_872);
    let x_874 : f32 = u_xlat41;
    u_xlat30 = (1.0f / x_874);
    let x_876 : f32 = u_xlat41;
    let x_877 : i32 = u_xlati40;
    let x_879 : f32 = x_850.x_AdditionalLightsAttenuation[x_877].x;
    u_xlat41 = (x_876 * x_879);
    let x_881 : f32 = u_xlat41;
    let x_883 : f32 = u_xlat41;
    u_xlat41 = ((-(x_881) * x_883) + 1.0f);
    let x_886 : f32 = u_xlat41;
    u_xlat41 = max(x_886, 0.0f);
    let x_888 : f32 = u_xlat41;
    let x_889 : f32 = u_xlat41;
    u_xlat41 = (x_888 * x_889);
    let x_891 : f32 = u_xlat41;
    let x_892 : f32 = u_xlat30;
    u_xlat41 = (x_891 * x_892);
    let x_894 : i32 = u_xlati40;
    let x_896 : vec4<f32> = x_850.x_AdditionalLightsSpotDir[x_894];
    let x_898 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(vec3<f32>(x_896.x, x_896.y, x_896.z), x_898);
    let x_900 : f32 = u_xlat30;
    let x_901 : i32 = u_xlati40;
    let x_903 : f32 = x_850.x_AdditionalLightsAttenuation[x_901].z;
    let x_905 : i32 = u_xlati40;
    let x_907 : f32 = x_850.x_AdditionalLightsAttenuation[x_905].w;
    u_xlat30 = ((x_900 * x_903) + x_907);
    let x_909 : f32 = u_xlat30;
    u_xlat30 = clamp(x_909, 0.0f, 1.0f);
    let x_911 : f32 = u_xlat30;
    let x_912 : f32 = u_xlat30;
    u_xlat30 = (x_911 * x_912);
    let x_914 : f32 = u_xlat41;
    let x_915 : f32 = u_xlat30;
    u_xlat41 = (x_914 * x_915);
    let x_919 : i32 = u_xlati40;
    let x_921 : f32 = x_136.x_AdditionalShadowParams[x_919].w;
    u_xlati30 = i32(x_921);
    let x_924 : i32 = u_xlati30;
    u_xlatb42 = (x_924 >= 0i);
    let x_926 : bool = u_xlatb42;
    if (x_926) {
      let x_930 : i32 = u_xlati40;
      let x_932 : f32 = x_136.x_AdditionalShadowParams[x_930].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_932, x_932, x_932, x_932))));
      let x_936 : bool = u_xlatb42;
      if (x_936) {
        let x_940 : vec3<f32> = u_xlat8;
        let x_943 : vec3<f32> = u_xlat8;
        let x_946 : vec4<bool> = (abs(vec4<f32>(x_940.z, x_940.z, x_940.y, x_940.z)) >= abs(vec4<f32>(x_943.x, x_943.y, x_943.x, x_943.x)));
        let x_948 : vec3<bool> = vec3<bool>(x_946.x, x_946.y, x_946.z);
        let x_949 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_948.x, x_948.y, x_948.z, x_949.w);
        let x_952 : bool = u_xlatb9.y;
        let x_954 : bool = u_xlatb9.x;
        u_xlatb42 = (x_952 & x_954);
        let x_956 : vec3<f32> = u_xlat8;
        let x_959 : vec4<bool> = (-(vec4<f32>(x_956.z, x_956.y, x_956.z, x_956.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_960 : vec3<bool> = vec3<bool>(x_959.x, x_959.y, x_959.w);
        let x_961 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_960.x, x_960.y, x_961.z, x_960.z);
        let x_965 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_965);
        let x_970 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_970);
        let x_975 : bool = u_xlatb9.w;
        u_xlat43 = select(0.0f, 1.0f, x_975);
        let x_978 : bool = u_xlatb9.z;
        if (x_978) {
          let x_983 : f32 = u_xlat9.y;
          x_979 = x_983;
        } else {
          let x_985 : f32 = u_xlat43;
          x_979 = x_985;
        }
        let x_986 : f32 = x_979;
        u_xlat43 = x_986;
        let x_988 : bool = u_xlatb42;
        if (x_988) {
          let x_993 : f32 = u_xlat9.x;
          x_989 = x_993;
        } else {
          let x_995 : f32 = u_xlat43;
          x_989 = x_995;
        }
        let x_996 : f32 = x_989;
        u_xlat42 = x_996;
        let x_997 : i32 = u_xlati40;
        let x_999 : f32 = x_136.x_AdditionalShadowParams[x_997].w;
        u_xlat43 = trunc(x_999);
        let x_1001 : f32 = u_xlat42;
        let x_1002 : f32 = u_xlat43;
        u_xlat42 = (x_1001 + x_1002);
        let x_1004 : f32 = u_xlat42;
        u_xlati30 = i32(x_1004);
      }
      let x_1006 : i32 = u_xlati30;
      u_xlati30 = (x_1006 << bitcast<u32>(2i));
      let x_1008 : vec3<f32> = vs_TEXCOORD1;
      let x_1011 : i32 = u_xlati30;
      let x_1014 : i32 = u_xlati30;
      let x_1018 : vec4<f32> = x_136.x_AdditionalLightsWorldToShadow[((x_1011 + 1i) / 4i)][((x_1014 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_1008.y, x_1008.y, x_1008.y, x_1008.y) * x_1018);
      let x_1020 : i32 = u_xlati30;
      let x_1022 : i32 = u_xlati30;
      let x_1025 : vec4<f32> = x_136.x_AdditionalLightsWorldToShadow[(x_1020 / 4i)][(x_1022 % 4i)];
      let x_1026 : vec3<f32> = vs_TEXCOORD1;
      let x_1029 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_1025 * vec4<f32>(x_1026.x, x_1026.x, x_1026.x, x_1026.x)) + x_1029);
      let x_1031 : i32 = u_xlati30;
      let x_1034 : i32 = u_xlati30;
      let x_1038 : vec4<f32> = x_136.x_AdditionalLightsWorldToShadow[((x_1031 + 2i) / 4i)][((x_1034 + 2i) % 4i)];
      let x_1039 : vec3<f32> = vs_TEXCOORD1;
      let x_1042 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_1038 * vec4<f32>(x_1039.z, x_1039.z, x_1039.z, x_1039.z)) + x_1042);
      let x_1044 : vec4<f32> = u_xlat9;
      let x_1045 : i32 = u_xlati30;
      let x_1048 : i32 = u_xlati30;
      let x_1052 : vec4<f32> = x_136.x_AdditionalLightsWorldToShadow[((x_1045 + 3i) / 4i)][((x_1048 + 3i) % 4i)];
      u_xlat9 = (x_1044 + x_1052);
      let x_1054 : vec4<f32> = u_xlat9;
      let x_1056 : vec4<f32> = u_xlat9;
      let x_1058 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) / vec3<f32>(x_1056.w, x_1056.w, x_1056.w));
      let x_1059 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
      let x_1062 : vec4<f32> = u_xlat9;
      let x_1063 : vec2<f32> = vec2<f32>(x_1062.x, x_1062.y);
      let x_1065 : f32 = u_xlat9.z;
      txVec1 = vec3<f32>(x_1063.x, x_1063.y, x_1065);
      let x_1073 : vec3<f32> = txVec1;
      let x_1075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1073.xy, x_1073.z);
      u_xlat30 = x_1075;
      let x_1076 : i32 = u_xlati40;
      let x_1078 : f32 = x_136.x_AdditionalShadowParams[x_1076].x;
      u_xlat42 = (1.0f + -(x_1078));
      let x_1081 : f32 = u_xlat30;
      let x_1082 : i32 = u_xlati40;
      let x_1084 : f32 = x_136.x_AdditionalShadowParams[x_1082].x;
      let x_1086 : f32 = u_xlat42;
      u_xlat30 = ((x_1081 * x_1084) + x_1086);
      let x_1089 : f32 = u_xlat9.z;
      u_xlatb42 = (0.0f >= x_1089);
      let x_1093 : f32 = u_xlat9.z;
      u_xlatb43 = (x_1093 >= 1.0f);
      let x_1095 : bool = u_xlatb42;
      let x_1096 : bool = u_xlatb43;
      u_xlatb42 = (x_1095 | x_1096);
      let x_1098 : bool = u_xlatb42;
      let x_1099 : f32 = u_xlat30;
      u_xlat30 = select(x_1099, 1.0f, x_1098);
    } else {
      u_xlat30 = 1.0f;
    }
    let x_1102 : f32 = u_xlat30;
    u_xlat42 = (-(x_1102) + 1.0f);
    let x_1106 : f32 = u_xlat3.x;
    let x_1107 : f32 = u_xlat42;
    let x_1109 : f32 = u_xlat30;
    u_xlat30 = ((x_1106 * x_1107) + x_1109);
    let x_1112 : i32 = u_xlati40;
    u_xlati42 = (1i << bitcast<u32>((x_1112 & 31i)));
    let x_1116 : i32 = u_xlati42;
    let x_1119 : f32 = x_533.x_AdditionalLightsCookieEnableBits;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_1116) & bitcast<u32>(x_1119)));
    let x_1123 : i32 = u_xlati42;
    if ((x_1123 != 0i)) {
      let x_1127 : i32 = u_xlati40;
      let x_1129 : f32 = x_533.x_AdditionalLightsLightTypes[x_1127].el;
      u_xlati42 = i32(x_1129);
      let x_1132 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_1132 != 0i));
      let x_1136 : i32 = u_xlati40;
      u_xlati44 = (x_1136 << bitcast<u32>(2i));
      let x_1138 : i32 = u_xlati43;
      if ((x_1138 != 0i)) {
        let x_1142 : vec3<f32> = vs_TEXCOORD1;
        let x_1144 : i32 = u_xlati44;
        let x_1147 : i32 = u_xlati44;
        let x_1151 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1144 + 1i) / 4i)][((x_1147 + 1i) % 4i)];
        let x_1153 : vec3<f32> = (vec3<f32>(x_1142.y, x_1142.y, x_1142.y) * vec3<f32>(x_1151.x, x_1151.y, x_1151.w));
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
        let x_1156 : i32 = u_xlati44;
        let x_1158 : i32 = u_xlati44;
        let x_1161 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[(x_1156 / 4i)][(x_1158 % 4i)];
        let x_1163 : vec3<f32> = vs_TEXCOORD1;
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1168 : vec3<f32> = ((vec3<f32>(x_1161.x, x_1161.y, x_1161.w) * vec3<f32>(x_1163.x, x_1163.x, x_1163.x)) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
        let x_1171 : i32 = u_xlati44;
        let x_1174 : i32 = u_xlati44;
        let x_1178 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1171 + 2i) / 4i)][((x_1174 + 2i) % 4i)];
        let x_1180 : vec3<f32> = vs_TEXCOORD1;
        let x_1183 : vec4<f32> = u_xlat9;
        let x_1185 : vec3<f32> = ((vec3<f32>(x_1178.x, x_1178.y, x_1178.w) * vec3<f32>(x_1180.z, x_1180.z, x_1180.z)) + vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1190 : i32 = u_xlati44;
        let x_1193 : i32 = u_xlati44;
        let x_1197 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1190 + 3i) / 4i)][((x_1193 + 3i) % 4i)];
        let x_1199 : vec3<f32> = (vec3<f32>(x_1188.x, x_1188.y, x_1188.z) + vec3<f32>(x_1197.x, x_1197.y, x_1197.w));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1202.x, x_1202.y) / vec2<f32>(x_1204.z, x_1204.z));
        let x_1207 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat9;
        let x_1212 : vec2<f32> = ((vec2<f32>(x_1209.x, x_1209.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat9;
        let x_1219 : vec2<f32> = clamp(vec2<f32>(x_1215.x, x_1215.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1220 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
        let x_1222 : i32 = u_xlati40;
        let x_1224 : vec4<f32> = x_533.x_AdditionalLightsCookieAtlasUVRects[x_1222];
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1229 : i32 = u_xlati40;
        let x_1231 : vec4<f32> = x_533.x_AdditionalLightsCookieAtlasUVRects[x_1229];
        let x_1233 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1226.x, x_1226.y)) + vec2<f32>(x_1231.z, x_1231.w));
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
      } else {
        let x_1237 : i32 = u_xlati42;
        u_xlatb42 = (x_1237 == 1i);
        let x_1239 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1239);
        let x_1241 : i32 = u_xlati42;
        if ((x_1241 != 0i)) {
          let x_1247 : vec3<f32> = vs_TEXCOORD1;
          let x_1249 : i32 = u_xlati44;
          let x_1252 : i32 = u_xlati44;
          let x_1256 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1249 + 1i) / 4i)][((x_1252 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1247.y, x_1247.y) * vec2<f32>(x_1256.x, x_1256.y));
          let x_1259 : i32 = u_xlati44;
          let x_1261 : i32 = u_xlati44;
          let x_1264 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[(x_1259 / 4i)][(x_1261 % 4i)];
          let x_1266 : vec3<f32> = vs_TEXCOORD1;
          let x_1269 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1266.x, x_1266.x)) + x_1269);
          let x_1271 : i32 = u_xlati44;
          let x_1274 : i32 = u_xlati44;
          let x_1278 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1271 + 2i) / 4i)][((x_1274 + 2i) % 4i)];
          let x_1280 : vec3<f32> = vs_TEXCOORD1;
          let x_1283 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1280.z, x_1280.z)) + x_1283);
          let x_1285 : vec2<f32> = u_xlat33;
          let x_1286 : i32 = u_xlati44;
          let x_1289 : i32 = u_xlati44;
          let x_1293 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1286 + 3i) / 4i)][((x_1289 + 3i) % 4i)];
          u_xlat33 = (x_1285 + vec2<f32>(x_1293.x, x_1293.y));
          let x_1296 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1296 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1299 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1299);
          let x_1301 : i32 = u_xlati40;
          let x_1303 : vec4<f32> = x_533.x_AdditionalLightsCookieAtlasUVRects[x_1301];
          let x_1305 : vec2<f32> = u_xlat33;
          let x_1307 : i32 = u_xlati40;
          let x_1309 : vec4<f32> = x_533.x_AdditionalLightsCookieAtlasUVRects[x_1307];
          let x_1311 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * x_1305) + vec2<f32>(x_1309.z, x_1309.w));
          let x_1312 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        } else {
          let x_1316 : vec3<f32> = vs_TEXCOORD1;
          let x_1318 : i32 = u_xlati44;
          let x_1321 : i32 = u_xlati44;
          let x_1325 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1318 + 1i) / 4i)][((x_1321 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1316.y, x_1316.y, x_1316.y, x_1316.y) * x_1325);
          let x_1327 : i32 = u_xlati44;
          let x_1329 : i32 = u_xlati44;
          let x_1332 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[(x_1327 / 4i)][(x_1329 % 4i)];
          let x_1333 : vec3<f32> = vs_TEXCOORD1;
          let x_1336 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1332 * vec4<f32>(x_1333.x, x_1333.x, x_1333.x, x_1333.x)) + x_1336);
          let x_1338 : i32 = u_xlati44;
          let x_1341 : i32 = u_xlati44;
          let x_1345 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1338 + 2i) / 4i)][((x_1341 + 2i) % 4i)];
          let x_1346 : vec3<f32> = vs_TEXCOORD1;
          let x_1349 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1345 * vec4<f32>(x_1346.z, x_1346.z, x_1346.z, x_1346.z)) + x_1349);
          let x_1351 : vec4<f32> = u_xlat10;
          let x_1352 : i32 = u_xlati44;
          let x_1355 : i32 = u_xlati44;
          let x_1359 : vec4<f32> = x_533.x_AdditionalLightsWorldToLights[((x_1352 + 3i) / 4i)][((x_1355 + 3i) % 4i)];
          u_xlat10 = (x_1351 + x_1359);
          let x_1361 : vec4<f32> = u_xlat10;
          let x_1363 : vec4<f32> = u_xlat10;
          let x_1365 : vec3<f32> = (vec3<f32>(x_1361.x, x_1361.y, x_1361.z) / vec3<f32>(x_1363.w, x_1363.w, x_1363.w));
          let x_1366 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
          let x_1368 : vec4<f32> = u_xlat10;
          let x_1370 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1368.x, x_1368.y, x_1368.z), vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
          let x_1373 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1373);
          let x_1375 : f32 = u_xlat42;
          let x_1377 : vec4<f32> = u_xlat10;
          let x_1379 : vec3<f32> = (vec3<f32>(x_1375, x_1375, x_1375) * vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
          let x_1380 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
          let x_1382 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1382.x, x_1382.y, x_1382.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1387 : f32 = u_xlat42;
          u_xlat42 = max(x_1387, 0.00000099999999747524f);
          let x_1390 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1390);
          let x_1393 : f32 = u_xlat42;
          let x_1395 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1393, x_1393, x_1393) * vec3<f32>(x_1395.z, x_1395.x, x_1395.y));
          let x_1399 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1399);
          let x_1403 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1403, 0.0f, 1.0f);
          let x_1407 : vec3<f32> = u_xlat11;
          let x_1409 : vec4<bool> = (vec4<f32>(x_1407.y, x_1407.z, x_1407.y, x_1407.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1409.x, x_1409.y);
          let x_1412 : bool = u_xlatb33.x;
          if (x_1412) {
            let x_1417 : f32 = u_xlat11.x;
            x_1413 = x_1417;
          } else {
            let x_1420 : f32 = u_xlat11.x;
            x_1413 = -(x_1420);
          }
          let x_1422 : f32 = x_1413;
          u_xlat33.x = x_1422;
          let x_1425 : bool = u_xlatb33.y;
          if (x_1425) {
            let x_1430 : f32 = u_xlat11.x;
            x_1426 = x_1430;
          } else {
            let x_1433 : f32 = u_xlat11.x;
            x_1426 = -(x_1433);
          }
          let x_1435 : f32 = x_1426;
          u_xlat33.y = x_1435;
          let x_1437 : vec4<f32> = u_xlat10;
          let x_1439 : f32 = u_xlat42;
          let x_1442 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1437.x, x_1437.y) * vec2<f32>(x_1439, x_1439)) + x_1442);
          let x_1444 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1444 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1447 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1447, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1451 : i32 = u_xlati40;
          let x_1453 : vec4<f32> = x_533.x_AdditionalLightsCookieAtlasUVRects[x_1451];
          let x_1455 : vec2<f32> = u_xlat33;
          let x_1457 : i32 = u_xlati40;
          let x_1459 : vec4<f32> = x_533.x_AdditionalLightsCookieAtlasUVRects[x_1457];
          let x_1461 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * x_1455) + vec2<f32>(x_1459.z, x_1459.w));
          let x_1462 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
        }
      }
      let x_1469 : vec4<f32> = u_xlat9;
      let x_1471 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1469.x, x_1469.y), 0.0f);
      u_xlat9 = x_1471;
      let x_1473 : bool = u_xlatb6.y;
      if (x_1473) {
        let x_1478 : f32 = u_xlat9.w;
        x_1474 = x_1478;
      } else {
        let x_1481 : f32 = u_xlat9.x;
        x_1474 = x_1481;
      }
      let x_1482 : f32 = x_1474;
      u_xlat42 = x_1482;
      let x_1484 : bool = u_xlatb6.x;
      if (x_1484) {
        let x_1488 : vec4<f32> = u_xlat9;
        x_1485 = vec3<f32>(x_1488.x, x_1488.y, x_1488.z);
      } else {
        let x_1491 : f32 = u_xlat42;
        x_1485 = vec3<f32>(x_1491, x_1491, x_1491);
      }
      let x_1493 : vec3<f32> = x_1485;
      let x_1494 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1493.x, x_1493.y, x_1493.z, x_1494.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1500 : vec4<f32> = u_xlat9;
    let x_1502 : i32 = u_xlati40;
    let x_1504 : vec4<f32> = x_850.x_AdditionalLightsColor[x_1502];
    let x_1506 : vec3<f32> = (vec3<f32>(x_1500.x, x_1500.y, x_1500.z) * vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
    let x_1507 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
    let x_1509 : f32 = u_xlat41;
    let x_1510 : f32 = u_xlat30;
    u_xlat40 = (x_1509 * x_1510);
    let x_1512 : f32 = u_xlat40;
    let x_1514 : vec4<f32> = u_xlat9;
    let x_1516 : vec3<f32> = (vec3<f32>(x_1512, x_1512, x_1512) * vec3<f32>(x_1514.x, x_1514.y, x_1514.z));
    let x_1517 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
    let x_1519 : vec4<f32> = u_xlat2;
    let x_1521 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1519.x, x_1519.y, x_1519.z), x_1521);
    let x_1523 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1523, 0.0f, 1.0f);
    let x_1525 : f32 = u_xlat40;
    let x_1527 : vec4<f32> = u_xlat9;
    let x_1529 : vec3<f32> = (vec3<f32>(x_1525, x_1525, x_1525) * vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
    let x_1530 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1530.w);
    let x_1532 : vec3<f32> = u_xlat1;
    let x_1533 : f32 = u_xlat37;
    let x_1536 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1532 * vec3<f32>(x_1533, x_1533, x_1533)) + x_1536);
    let x_1538 : vec3<f32> = u_xlat8;
    let x_1539 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1538, x_1539);
    let x_1541 : f32 = u_xlat40;
    u_xlat40 = max(x_1541, 1.17549435e-38f);
    let x_1543 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1543);
    let x_1545 : f32 = u_xlat40;
    let x_1547 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1545, x_1545, x_1545) * x_1547);
    let x_1549 : vec4<f32> = u_xlat2;
    let x_1551 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1549.x, x_1549.y, x_1549.z), x_1551);
    let x_1553 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1553, 0.0f, 1.0f);
    let x_1555 : f32 = u_xlat40;
    u_xlat40 = log2(x_1555);
    let x_1557 : f32 = u_xlat38;
    let x_1558 : f32 = u_xlat40;
    u_xlat40 = (x_1557 * x_1558);
    let x_1560 : f32 = u_xlat40;
    u_xlat40 = exp2(x_1560);
    let x_1562 : f32 = u_xlat40;
    let x_1565 : vec4<f32> = x_41.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1562, x_1562, x_1562) * vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
    let x_1568 : vec3<f32> = u_xlat8;
    let x_1569 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1568 * vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
    let x_1572 : vec4<f32> = u_xlat10;
    let x_1574 : vec4<f32> = u_xlat0;
    let x_1577 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1572.x, x_1572.y, x_1572.z) * vec3<f32>(x_1574.y, x_1574.z, x_1574.w)) + x_1577);
    let x_1579 : vec3<f32> = u_xlat7;
    let x_1580 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1579 + x_1580);

    continuing {
      let x_1582 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1582 + bitcast<u32>(1i));
    }
  }
  let x_1585 : vec4<f32> = u_xlat4;
  let x_1587 : vec4<f32> = u_xlat0;
  let x_1590 : vec4<f32> = u_xlat5;
  u_xlat12 = ((vec3<f32>(x_1585.x, x_1585.y, x_1585.z) * vec3<f32>(x_1587.y, x_1587.z, x_1587.w)) + vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
  let x_1593 : vec3<f32> = u_xlat7;
  let x_1594 : vec3<f32> = u_xlat12;
  u_xlat12 = (x_1593 + x_1594);
  let x_1596 : f32 = u_xlat39;
  let x_1597 : f32 = u_xlat39;
  u_xlat1.x = (x_1596 * -(x_1597));
  let x_1602 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1602);
  let x_1605 : vec3<f32> = u_xlat12;
  let x_1607 : vec4<f32> = x_28.unity_FogColor;
  u_xlat12 = (x_1605 + -(vec3<f32>(x_1607.x, x_1607.y, x_1607.z)));
  let x_1613 : vec3<f32> = u_xlat1;
  let x_1615 : vec3<f32> = u_xlat12;
  let x_1618 : vec4<f32> = x_28.unity_FogColor;
  let x_1620 : vec3<f32> = ((vec3<f32>(x_1613.x, x_1613.x, x_1613.x) * x_1615) + vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
  let x_1621 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
  let x_1625 : f32 = x_41.x_Surface;
  u_xlatb12 = (x_1625 == 1.0f);
  let x_1627 : bool = u_xlatb12;
  if (x_1627) {
    let x_1632 : f32 = u_xlat0.x;
    x_1628 = x_1632;
  } else {
    x_1628 = 1.0f;
  }
  let x_1634 : f32 = x_1628;
  SV_Target0.w = x_1634;
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


