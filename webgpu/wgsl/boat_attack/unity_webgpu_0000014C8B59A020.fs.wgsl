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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
  x_DitheringTextureInvSize : f32,
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

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb11 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat32 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_275 : LightShadows;

var<private> u_xlatb3 : bool;

var<private> u_xlatb13 : vec2<bool>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat23 : f32;

@group(1) @binding(5) var<uniform> x_346 : LightCookies;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu32 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_583 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb17 : bool;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlat28 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlatu24 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var txVec0 : vec3<f32>;
  var x_432 : f32;
  var x_443 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_720 : f32;
  var x_732 : f32;
  var txVec1 : vec3<f32>;
  var x_1197 : f32;
  var x_1210 : f32;
  var x_1268 : f32;
  var x_1279 : vec3<f32>;
  var x_1375 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb11 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb11;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_137, x_138);
  let x_142 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_142);
  let x_145 : vec3<f32> = u_xlat1;
  let x_147 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_153 : f32 = vs_TEXCOORD1.y;
  let x_156 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat31 = (x_153 * x_156);
  let x_159 : f32 = x_45.unity_MatrixV[0i].z;
  let x_161 : f32 = vs_TEXCOORD1.x;
  let x_163 : f32 = u_xlat31;
  u_xlat31 = ((x_159 * x_161) + x_163);
  let x_166 : f32 = x_45.unity_MatrixV[2i].z;
  let x_168 : f32 = vs_TEXCOORD1.z;
  let x_170 : f32 = u_xlat31;
  u_xlat31 = ((x_166 * x_168) + x_170);
  let x_172 : f32 = u_xlat31;
  let x_175 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat31 = (x_172 + x_175);
  let x_177 : f32 = u_xlat31;
  let x_181 : f32 = x_45.x_ProjectionParams.y;
  u_xlat31 = (-(x_177) + -(x_181));
  let x_184 : f32 = u_xlat31;
  u_xlat31 = max(x_184, 0.0f);
  let x_186 : f32 = u_xlat31;
  let x_189 : f32 = x_45.unity_FogParams.x;
  u_xlat31 = (x_186 * x_189);
  let x_198 : vec2<f32> = vs_TEXCOORD7;
  let x_200 : f32 = x_45.x_GlobalMipBias.x;
  let x_201 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_198, x_200);
  u_xlat2 = x_201;
  let x_207 : vec2<f32> = vs_TEXCOORD7;
  let x_209 : f32 = x_45.x_GlobalMipBias.x;
  let x_210 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_207, x_209);
  u_xlat3 = vec3<f32>(x_210.x, x_210.y, x_210.z);
  let x_212 : vec4<f32> = u_xlat2;
  let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec3<f32> = u_xlat1;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_219, vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_225 : f32 = u_xlat2.x;
  u_xlat2.x = (x_225 + 0.5f);
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec3<f32> = u_xlat3;
  let x_232 : vec3<f32> = (vec3<f32>(x_229.x, x_229.x, x_229.x) * x_231);
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_237 : f32 = u_xlat2.w;
  u_xlat32 = max(x_237, 0.00009999999747378752f);
  let x_240 : vec4<f32> = u_xlat2;
  let x_242 : f32 = u_xlat32;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) / vec3<f32>(x_242, x_242, x_242));
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_250 : vec4<f32> = vs_TEXCOORD6;
  let x_251 : vec2<f32> = vec2<f32>(x_250.x, x_250.y);
  let x_253 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_251.x, x_251.y, x_253);
  let x_265 : vec3<f32> = txVec0;
  let x_267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_265.xy, x_265.z);
  u_xlat32 = x_267;
  let x_277 : f32 = x_275.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_277) + 1.0f);
  let x_281 : f32 = u_xlat32;
  let x_283 : f32 = x_275.x_MainLightShadowParams.x;
  let x_286 : f32 = u_xlat3.x;
  u_xlat32 = ((x_281 * x_283) + x_286);
  let x_290 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_290);
  let x_296 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (x_296 >= 1.0f);
  let x_300 : bool = u_xlatb13.x;
  let x_301 : bool = u_xlatb3;
  u_xlatb3 = (x_300 | x_301);
  let x_303 : bool = u_xlatb3;
  let x_304 : f32 = u_xlat32;
  u_xlat32 = select(x_304, 1.0f, x_303);
  let x_306 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat3 = (x_306 + -(x_310));
  let x_313 : vec3<f32> = u_xlat3;
  let x_314 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_313, x_314);
  let x_319 : f32 = u_xlat3.x;
  let x_321 : f32 = x_275.x_MainLightShadowParams.z;
  let x_324 : f32 = x_275.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_319 * x_321) + x_324);
  let x_328 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_328, 0.0f, 1.0f);
  let x_332 : f32 = u_xlat32;
  u_xlat23 = (-(x_332) + 1.0f);
  let x_336 : f32 = u_xlat13.x;
  let x_337 : f32 = u_xlat23;
  let x_339 : f32 = u_xlat32;
  u_xlat32 = ((x_336 * x_337) + x_339);
  let x_348 : f32 = x_346.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_348 == -1.0f));
  let x_353 : bool = u_xlatb13.x;
  if (x_353) {
    let x_356 : vec3<f32> = vs_TEXCOORD1;
    let x_359 : vec4<f32> = x_346.x_MainLightWorldToLight[1i];
    let x_361 : vec2<f32> = (vec2<f32>(x_356.y, x_356.y) * vec2<f32>(x_359.x, x_359.y));
    let x_362 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_361.x, x_361.y, x_362.z);
    let x_365 : vec4<f32> = x_346.x_MainLightWorldToLight[0i];
    let x_367 : vec3<f32> = vs_TEXCOORD1;
    let x_370 : vec3<f32> = u_xlat13;
    let x_372 : vec2<f32> = ((vec2<f32>(x_365.x, x_365.y) * vec2<f32>(x_367.x, x_367.x)) + vec2<f32>(x_370.x, x_370.y));
    let x_373 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_372.x, x_372.y, x_373.z);
    let x_376 : vec4<f32> = x_346.x_MainLightWorldToLight[2i];
    let x_378 : vec3<f32> = vs_TEXCOORD1;
    let x_381 : vec3<f32> = u_xlat13;
    let x_383 : vec2<f32> = ((vec2<f32>(x_376.x, x_376.y) * vec2<f32>(x_378.z, x_378.z)) + vec2<f32>(x_381.x, x_381.y));
    let x_384 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_383.x, x_383.y, x_384.z);
    let x_386 : vec3<f32> = u_xlat13;
    let x_389 : vec4<f32> = x_346.x_MainLightWorldToLight[3i];
    let x_391 : vec2<f32> = (vec2<f32>(x_386.x, x_386.y) + vec2<f32>(x_389.x, x_389.y));
    let x_392 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_391.x, x_391.y, x_392.z);
    let x_394 : vec3<f32> = u_xlat13;
    let x_398 : vec2<f32> = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_399 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_398.x, x_398.y, x_399.z);
    let x_407 : vec3<f32> = u_xlat13;
    let x_410 : f32 = x_45.x_GlobalMipBias.x;
    let x_411 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_407.x, x_407.y), x_410);
    u_xlat4 = x_411;
    let x_413 : f32 = x_346.x_MainLightCookieTextureFormat;
    let x_415 : f32 = x_346.x_MainLightCookieTextureFormat;
    let x_417 : f32 = x_346.x_MainLightCookieTextureFormat;
    let x_419 : f32 = x_346.x_MainLightCookieTextureFormat;
    let x_420 : vec4<f32> = vec4<f32>(x_413, x_415, x_417, x_419);
    let x_428 : vec4<bool> = (vec4<f32>(x_420.x, x_420.y, x_420.z, x_420.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_428.x, x_428.y);
    let x_431 : bool = u_xlatb13.y;
    if (x_431) {
      let x_436 : f32 = u_xlat4.w;
      x_432 = x_436;
    } else {
      let x_439 : f32 = u_xlat4.x;
      x_432 = x_439;
    }
    let x_440 : f32 = x_432;
    u_xlat23 = x_440;
    let x_442 : bool = u_xlatb13.x;
    if (x_442) {
      let x_446 : vec4<f32> = u_xlat4;
      x_443 = vec3<f32>(x_446.x, x_446.y, x_446.z);
    } else {
      let x_449 : f32 = u_xlat23;
      x_443 = vec3<f32>(x_449, x_449, x_449);
    }
    let x_451 : vec3<f32> = x_443;
    u_xlat13 = x_451;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_456 : vec3<f32> = u_xlat13;
  let x_458 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat13 = (x_456 * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : f32 = u_xlat32;
  let x_463 : f32 = x_95.unity_LightData.z;
  u_xlat32 = (x_461 * x_463);
  let x_465 : f32 = u_xlat32;
  let x_467 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_465, x_465, x_465) * x_467);
  let x_469 : vec3<f32> = u_xlat1;
  let x_471 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat32 = dot(x_469, vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : f32 = u_xlat32;
  u_xlat32 = clamp(x_474, 0.0f, 1.0f);
  let x_476 : f32 = u_xlat32;
  let x_478 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_476, x_476, x_476) * x_478);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_480.y, x_480.z, x_480.w) * x_482);
  let x_485 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_487 : f32 = x_95.unity_LightData.y;
  u_xlat32 = min(x_485, x_487);
  let x_491 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_491));
  let x_495 : f32 = u_xlat3.x;
  let x_498 : f32 = x_275.x_AdditionalShadowFadeParams.x;
  let x_501 : f32 = x_275.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_495 * x_498) + x_501);
  let x_505 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_505, 0.0f, 1.0f);
  let x_510 : f32 = x_346.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_512 : f32 = x_346.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_514 : f32 = x_346.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_516 : f32 = x_346.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_517 : vec4<f32> = vec4<f32>(x_510, x_512, x_514, x_516);
  let x_523 : vec4<bool> = (vec4<f32>(x_517.x, x_517.y, x_517.z, x_517.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_523.x, x_523.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_536 : u32 = u_xlatu_loop_1;
    let x_537 : u32 = u_xlatu32;
    if ((x_536 < x_537)) {
    } else {
      break;
    }
    let x_540 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_540 >> 2u);
    let x_544 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_544 & 3u));
    let x_548 : u32 = u_xlatu34;
    let x_551 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_548)];
    let x_561 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_566 : vec4<u32> = indexable[x_561];
    u_xlat34 = dot(x_551, bitcast<vec4<f32>>(x_566));
    let x_570 : f32 = u_xlat34;
    u_xlati34 = i32(x_570);
    let x_573 : vec3<f32> = vs_TEXCOORD1;
    let x_584 : i32 = u_xlati34;
    let x_586 : vec4<f32> = x_583.x_AdditionalLightsPosition[x_584];
    let x_589 : i32 = u_xlati34;
    let x_591 : vec4<f32> = x_583.x_AdditionalLightsPosition[x_589];
    u_xlat6 = ((-(x_573) * vec3<f32>(x_586.w, x_586.w, x_586.w)) + vec3<f32>(x_591.x, x_591.y, x_591.z));
    let x_595 : vec3<f32> = u_xlat6;
    let x_596 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_595, x_596);
    let x_598 : f32 = u_xlat35;
    u_xlat35 = max(x_598, 0.00006103515625f);
    let x_602 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_602);
    let x_604 : f32 = u_xlat36;
    let x_606 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_604, x_604, x_604) * x_606);
    let x_608 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_608);
    let x_610 : f32 = u_xlat35;
    let x_611 : i32 = u_xlati34;
    let x_613 : f32 = x_583.x_AdditionalLightsAttenuation[x_611].x;
    u_xlat35 = (x_610 * x_613);
    let x_615 : f32 = u_xlat35;
    let x_617 : f32 = u_xlat35;
    u_xlat35 = ((-(x_615) * x_617) + 1.0f);
    let x_620 : f32 = u_xlat35;
    u_xlat35 = max(x_620, 0.0f);
    let x_622 : f32 = u_xlat35;
    let x_623 : f32 = u_xlat35;
    u_xlat35 = (x_622 * x_623);
    let x_625 : f32 = u_xlat35;
    let x_626 : f32 = u_xlat36;
    u_xlat35 = (x_625 * x_626);
    let x_628 : i32 = u_xlati34;
    let x_630 : vec4<f32> = x_583.x_AdditionalLightsSpotDir[x_628];
    let x_632 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_630.x, x_630.y, x_630.z), x_632);
    let x_634 : f32 = u_xlat36;
    let x_635 : i32 = u_xlati34;
    let x_637 : f32 = x_583.x_AdditionalLightsAttenuation[x_635].z;
    let x_639 : i32 = u_xlati34;
    let x_641 : f32 = x_583.x_AdditionalLightsAttenuation[x_639].w;
    u_xlat36 = ((x_634 * x_637) + x_641);
    let x_643 : f32 = u_xlat36;
    u_xlat36 = clamp(x_643, 0.0f, 1.0f);
    let x_645 : f32 = u_xlat36;
    let x_646 : f32 = u_xlat36;
    u_xlat36 = (x_645 * x_646);
    let x_648 : f32 = u_xlat35;
    let x_649 : f32 = u_xlat36;
    u_xlat35 = (x_648 * x_649);
    let x_653 : i32 = u_xlati34;
    let x_655 : f32 = x_275.x_AdditionalShadowParams[x_653].w;
    u_xlati36 = i32(x_655);
    let x_660 : i32 = u_xlati36;
    u_xlatb7.x = (x_660 >= 0i);
    let x_664 : bool = u_xlatb7.x;
    if (x_664) {
      let x_668 : i32 = u_xlati34;
      let x_670 : f32 = x_275.x_AdditionalShadowParams[x_668].z;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_670, x_670, x_670, x_670))));
      let x_676 : bool = u_xlatb7.x;
      if (x_676) {
        let x_679 : vec3<f32> = u_xlat6;
        let x_682 : vec3<f32> = u_xlat6;
        let x_685 : vec4<bool> = (abs(vec4<f32>(x_679.z, x_679.z, x_679.y, x_679.z)) >= abs(vec4<f32>(x_682.x, x_682.y, x_682.x, x_682.x)));
        u_xlatb7 = vec3<bool>(x_685.x, x_685.y, x_685.z);
        let x_688 : bool = u_xlatb7.y;
        let x_690 : bool = u_xlatb7.x;
        u_xlatb7.x = (x_688 & x_690);
        let x_694 : vec3<f32> = u_xlat6;
        let x_697 : vec4<bool> = (-(vec4<f32>(x_694.z, x_694.y, x_694.x, x_694.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb8 = vec3<bool>(x_697.x, x_697.y, x_697.z);
        let x_701 : bool = u_xlatb8.x;
        u_xlat17.x = select(4.0f, 5.0f, x_701);
        let x_707 : bool = u_xlatb8.y;
        u_xlat17.z = select(2.0f, 3.0f, x_707);
        let x_714 : bool = u_xlatb8.z;
        u_xlat8.x = select(0.0f, 1.0f, x_714);
        let x_719 : bool = u_xlatb7.z;
        if (x_719) {
          let x_724 : f32 = u_xlat17.z;
          x_720 = x_724;
        } else {
          let x_727 : f32 = u_xlat8.x;
          x_720 = x_727;
        }
        let x_728 : f32 = x_720;
        u_xlat27 = x_728;
        let x_731 : bool = u_xlatb7.x;
        if (x_731) {
          let x_736 : f32 = u_xlat17.x;
          x_732 = x_736;
        } else {
          let x_738 : f32 = u_xlat27;
          x_732 = x_738;
        }
        let x_739 : f32 = x_732;
        u_xlat7.x = x_739;
        let x_741 : i32 = u_xlati34;
        let x_743 : f32 = x_275.x_AdditionalShadowParams[x_741].w;
        u_xlat17.x = trunc(x_743);
        let x_747 : f32 = u_xlat7.x;
        let x_749 : f32 = u_xlat17.x;
        u_xlat7.x = (x_747 + x_749);
        let x_753 : f32 = u_xlat7.x;
        u_xlati36 = i32(x_753);
      }
      let x_755 : i32 = u_xlati36;
      u_xlati36 = (x_755 << bitcast<u32>(2i));
      let x_757 : vec3<f32> = vs_TEXCOORD1;
      let x_760 : i32 = u_xlati36;
      let x_763 : i32 = u_xlati36;
      let x_767 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_760 + 1i) / 4i)][((x_763 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_757.y, x_757.y, x_757.y, x_757.y) * x_767);
      let x_769 : i32 = u_xlati36;
      let x_771 : i32 = u_xlati36;
      let x_774 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[(x_769 / 4i)][(x_771 % 4i)];
      let x_775 : vec3<f32> = vs_TEXCOORD1;
      let x_778 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_774 * vec4<f32>(x_775.x, x_775.x, x_775.x, x_775.x)) + x_778);
      let x_780 : i32 = u_xlati36;
      let x_783 : i32 = u_xlati36;
      let x_787 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_780 + 2i) / 4i)][((x_783 + 2i) % 4i)];
      let x_788 : vec3<f32> = vs_TEXCOORD1;
      let x_791 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_787 * vec4<f32>(x_788.z, x_788.z, x_788.z, x_788.z)) + x_791);
      let x_793 : vec4<f32> = u_xlat7;
      let x_794 : i32 = u_xlati36;
      let x_797 : i32 = u_xlati36;
      let x_801 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_794 + 3i) / 4i)][((x_797 + 3i) % 4i)];
      u_xlat7 = (x_793 + x_801);
      let x_803 : vec4<f32> = u_xlat7;
      let x_805 : vec4<f32> = u_xlat7;
      let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) / vec3<f32>(x_805.w, x_805.w, x_805.w));
      let x_808 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
      let x_811 : vec4<f32> = u_xlat7;
      let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
      let x_814 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_812.x, x_812.y, x_814);
      let x_822 : vec3<f32> = txVec1;
      let x_824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_822.xy, x_822.z);
      u_xlat36 = x_824;
      let x_825 : i32 = u_xlati34;
      let x_827 : f32 = x_275.x_AdditionalShadowParams[x_825].x;
      u_xlat7.x = (1.0f + -(x_827));
      let x_831 : f32 = u_xlat36;
      let x_832 : i32 = u_xlati34;
      let x_834 : f32 = x_275.x_AdditionalShadowParams[x_832].x;
      let x_837 : f32 = u_xlat7.x;
      u_xlat36 = ((x_831 * x_834) + x_837);
      let x_840 : f32 = u_xlat7.z;
      u_xlatb7.x = (0.0f >= x_840);
      let x_845 : f32 = u_xlat7.z;
      u_xlatb17 = (x_845 >= 1.0f);
      let x_847 : bool = u_xlatb17;
      let x_849 : bool = u_xlatb7.x;
      u_xlatb7.x = (x_847 | x_849);
      let x_853 : bool = u_xlatb7.x;
      let x_854 : f32 = u_xlat36;
      u_xlat36 = select(x_854, 1.0f, x_853);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_857 : f32 = u_xlat36;
    u_xlat7.x = (-(x_857) + 1.0f);
    let x_862 : f32 = u_xlat3.x;
    let x_864 : f32 = u_xlat7.x;
    let x_866 : f32 = u_xlat36;
    u_xlat36 = ((x_862 * x_864) + x_866);
    let x_869 : i32 = u_xlati34;
    u_xlati7 = (1i << bitcast<u32>((x_869 & 31i)));
    let x_873 : i32 = u_xlati7;
    let x_876 : f32 = x_346.x_AdditionalLightsCookieEnableBits;
    u_xlati7 = bitcast<i32>((bitcast<u32>(x_873) & bitcast<u32>(x_876)));
    let x_880 : i32 = u_xlati7;
    if ((x_880 != 0i)) {
      let x_884 : i32 = u_xlati34;
      let x_886 : f32 = x_346.x_AdditionalLightsLightTypes[x_884].el;
      u_xlati7 = i32(x_886);
      let x_889 : i32 = u_xlati7;
      u_xlati17 = select(1i, 0i, (x_889 != 0i));
      let x_893 : i32 = u_xlati34;
      u_xlati27 = (x_893 << bitcast<u32>(2i));
      let x_895 : i32 = u_xlati17;
      if ((x_895 != 0i)) {
        let x_899 : vec3<f32> = vs_TEXCOORD1;
        let x_901 : i32 = u_xlati27;
        let x_904 : i32 = u_xlati27;
        let x_908 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_901 + 1i) / 4i)][((x_904 + 1i) % 4i)];
        let x_910 : vec3<f32> = (vec3<f32>(x_899.y, x_899.y, x_899.y) * vec3<f32>(x_908.x, x_908.y, x_908.w));
        let x_911 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
        let x_913 : i32 = u_xlati27;
        let x_915 : i32 = u_xlati27;
        let x_918 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[(x_913 / 4i)][(x_915 % 4i)];
        let x_920 : vec3<f32> = vs_TEXCOORD1;
        let x_923 : vec4<f32> = u_xlat8;
        let x_925 : vec3<f32> = ((vec3<f32>(x_918.x, x_918.y, x_918.w) * vec3<f32>(x_920.x, x_920.x, x_920.x)) + vec3<f32>(x_923.x, x_923.y, x_923.z));
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
        let x_928 : i32 = u_xlati27;
        let x_931 : i32 = u_xlati27;
        let x_935 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_928 + 2i) / 4i)][((x_931 + 2i) % 4i)];
        let x_937 : vec3<f32> = vs_TEXCOORD1;
        let x_940 : vec4<f32> = u_xlat8;
        let x_942 : vec3<f32> = ((vec3<f32>(x_935.x, x_935.y, x_935.w) * vec3<f32>(x_937.z, x_937.z, x_937.z)) + vec3<f32>(x_940.x, x_940.y, x_940.z));
        let x_943 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat8;
        let x_947 : i32 = u_xlati27;
        let x_950 : i32 = u_xlati27;
        let x_954 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_947 + 3i) / 4i)][((x_950 + 3i) % 4i)];
        let x_956 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + vec3<f32>(x_954.x, x_954.y, x_954.w));
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
        let x_959 : vec4<f32> = u_xlat8;
        let x_961 : vec4<f32> = u_xlat8;
        let x_963 : vec2<f32> = (vec2<f32>(x_959.x, x_959.y) / vec2<f32>(x_961.z, x_961.z));
        let x_964 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_963.x, x_964.y, x_963.y);
        let x_966 : vec3<f32> = u_xlat17;
        let x_969 : vec2<f32> = ((vec2<f32>(x_966.x, x_966.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_970 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_969.x, x_970.y, x_969.y);
        let x_972 : vec3<f32> = u_xlat17;
        let x_976 : vec2<f32> = clamp(vec2<f32>(x_972.x, x_972.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_977 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_976.x, x_977.y, x_976.y);
        let x_979 : i32 = u_xlati34;
        let x_981 : vec4<f32> = x_346.x_AdditionalLightsCookieAtlasUVRects[x_979];
        let x_983 : vec3<f32> = u_xlat17;
        let x_986 : i32 = u_xlati34;
        let x_988 : vec4<f32> = x_346.x_AdditionalLightsCookieAtlasUVRects[x_986];
        let x_990 : vec2<f32> = ((vec2<f32>(x_981.x, x_981.y) * vec2<f32>(x_983.x, x_983.z)) + vec2<f32>(x_988.z, x_988.w));
        let x_991 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_990.x, x_991.y, x_990.y);
      } else {
        let x_994 : i32 = u_xlati7;
        u_xlatb7.x = (x_994 == 1i);
        let x_998 : bool = u_xlatb7.x;
        u_xlati7 = select(0i, 1i, x_998);
        let x_1000 : i32 = u_xlati7;
        if ((x_1000 != 0i)) {
          let x_1004 : vec3<f32> = vs_TEXCOORD1;
          let x_1006 : i32 = u_xlati27;
          let x_1009 : i32 = u_xlati27;
          let x_1013 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_1006 + 1i) / 4i)][((x_1009 + 1i) % 4i)];
          let x_1015 : vec2<f32> = (vec2<f32>(x_1004.y, x_1004.y) * vec2<f32>(x_1013.x, x_1013.y));
          let x_1016 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
          let x_1018 : i32 = u_xlati27;
          let x_1020 : i32 = u_xlati27;
          let x_1023 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[(x_1018 / 4i)][(x_1020 % 4i)];
          let x_1025 : vec3<f32> = vs_TEXCOORD1;
          let x_1028 : vec4<f32> = u_xlat8;
          let x_1030 : vec2<f32> = ((vec2<f32>(x_1023.x, x_1023.y) * vec2<f32>(x_1025.x, x_1025.x)) + vec2<f32>(x_1028.x, x_1028.y));
          let x_1031 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
          let x_1033 : i32 = u_xlati27;
          let x_1036 : i32 = u_xlati27;
          let x_1040 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_1033 + 2i) / 4i)][((x_1036 + 2i) % 4i)];
          let x_1042 : vec3<f32> = vs_TEXCOORD1;
          let x_1045 : vec4<f32> = u_xlat8;
          let x_1047 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(x_1042.z, x_1042.z)) + vec2<f32>(x_1045.x, x_1045.y));
          let x_1048 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
          let x_1050 : vec4<f32> = u_xlat8;
          let x_1052 : i32 = u_xlati27;
          let x_1055 : i32 = u_xlati27;
          let x_1059 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_1052 + 3i) / 4i)][((x_1055 + 3i) % 4i)];
          let x_1061 : vec2<f32> = (vec2<f32>(x_1050.x, x_1050.y) + vec2<f32>(x_1059.x, x_1059.y));
          let x_1062 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
          let x_1064 : vec4<f32> = u_xlat8;
          let x_1067 : vec2<f32> = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1068 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
          let x_1070 : vec4<f32> = u_xlat8;
          let x_1072 : vec2<f32> = fract(vec2<f32>(x_1070.x, x_1070.y));
          let x_1073 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
          let x_1075 : i32 = u_xlati34;
          let x_1077 : vec4<f32> = x_346.x_AdditionalLightsCookieAtlasUVRects[x_1075];
          let x_1079 : vec4<f32> = u_xlat8;
          let x_1082 : i32 = u_xlati34;
          let x_1084 : vec4<f32> = x_346.x_AdditionalLightsCookieAtlasUVRects[x_1082];
          let x_1086 : vec2<f32> = ((vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(x_1079.x, x_1079.y)) + vec2<f32>(x_1084.z, x_1084.w));
          let x_1087 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1086.x, x_1087.y, x_1086.y);
        } else {
          let x_1090 : vec3<f32> = vs_TEXCOORD1;
          let x_1092 : i32 = u_xlati27;
          let x_1095 : i32 = u_xlati27;
          let x_1099 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_1092 + 1i) / 4i)][((x_1095 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1090.y, x_1090.y, x_1090.y, x_1090.y) * x_1099);
          let x_1101 : i32 = u_xlati27;
          let x_1103 : i32 = u_xlati27;
          let x_1106 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[(x_1101 / 4i)][(x_1103 % 4i)];
          let x_1107 : vec3<f32> = vs_TEXCOORD1;
          let x_1110 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1106 * vec4<f32>(x_1107.x, x_1107.x, x_1107.x, x_1107.x)) + x_1110);
          let x_1112 : i32 = u_xlati27;
          let x_1115 : i32 = u_xlati27;
          let x_1119 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_1112 + 2i) / 4i)][((x_1115 + 2i) % 4i)];
          let x_1120 : vec3<f32> = vs_TEXCOORD1;
          let x_1123 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1119 * vec4<f32>(x_1120.z, x_1120.z, x_1120.z, x_1120.z)) + x_1123);
          let x_1125 : vec4<f32> = u_xlat8;
          let x_1126 : i32 = u_xlati27;
          let x_1129 : i32 = u_xlati27;
          let x_1133 : vec4<f32> = x_346.x_AdditionalLightsWorldToLights[((x_1126 + 3i) / 4i)][((x_1129 + 3i) % 4i)];
          u_xlat8 = (x_1125 + x_1133);
          let x_1135 : vec4<f32> = u_xlat8;
          let x_1137 : vec4<f32> = u_xlat8;
          let x_1139 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) / vec3<f32>(x_1137.w, x_1137.w, x_1137.w));
          let x_1140 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
          let x_1142 : vec4<f32> = u_xlat8;
          let x_1144 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.z), vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
          let x_1149 : f32 = u_xlat7.x;
          u_xlat7.x = inverseSqrt(x_1149);
          let x_1152 : vec4<f32> = u_xlat7;
          let x_1154 : vec4<f32> = u_xlat8;
          let x_1156 : vec3<f32> = (vec3<f32>(x_1152.x, x_1152.x, x_1152.x) * vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
          let x_1157 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
          let x_1159 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(abs(vec3<f32>(x_1159.x, x_1159.y, x_1159.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1166 : f32 = u_xlat7.x;
          u_xlat7.x = max(x_1166, 0.00000099999999747524f);
          let x_1171 : f32 = u_xlat7.x;
          u_xlat7.x = (1.0f / x_1171);
          let x_1175 : vec4<f32> = u_xlat7;
          let x_1177 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1175.x, x_1175.x, x_1175.x) * vec3<f32>(x_1177.z, x_1177.x, x_1177.y));
          let x_1181 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1181);
          let x_1185 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1185, 0.0f, 1.0f);
          let x_1189 : vec3<f32> = u_xlat9;
          let x_1191 : vec4<bool> = (vec4<f32>(x_1189.y, x_1189.z, x_1189.y, x_1189.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb28 = vec2<bool>(x_1191.x, x_1191.y);
          let x_1196 : bool = u_xlatb28.x;
          if (x_1196) {
            let x_1201 : f32 = u_xlat9.x;
            x_1197 = x_1201;
          } else {
            let x_1204 : f32 = u_xlat9.x;
            x_1197 = -(x_1204);
          }
          let x_1206 : f32 = x_1197;
          u_xlat28.x = x_1206;
          let x_1209 : bool = u_xlatb28.y;
          if (x_1209) {
            let x_1214 : f32 = u_xlat9.x;
            x_1210 = x_1214;
          } else {
            let x_1217 : f32 = u_xlat9.x;
            x_1210 = -(x_1217);
          }
          let x_1219 : f32 = x_1210;
          u_xlat28.y = x_1219;
          let x_1221 : vec4<f32> = u_xlat8;
          let x_1223 : vec4<f32> = u_xlat7;
          let x_1226 : vec2<f32> = u_xlat28;
          let x_1227 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(x_1223.x, x_1223.x)) + x_1226);
          let x_1228 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1227.x, x_1228.y, x_1227.y, x_1228.w);
          let x_1230 : vec4<f32> = u_xlat7;
          let x_1233 : vec2<f32> = ((vec2<f32>(x_1230.x, x_1230.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1234 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1233.x, x_1234.y, x_1233.y, x_1234.w);
          let x_1236 : vec4<f32> = u_xlat7;
          let x_1240 : vec2<f32> = clamp(vec2<f32>(x_1236.x, x_1236.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1241 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1240.x, x_1241.y, x_1240.y, x_1241.w);
          let x_1243 : i32 = u_xlati34;
          let x_1245 : vec4<f32> = x_346.x_AdditionalLightsCookieAtlasUVRects[x_1243];
          let x_1247 : vec4<f32> = u_xlat7;
          let x_1250 : i32 = u_xlati34;
          let x_1252 : vec4<f32> = x_346.x_AdditionalLightsCookieAtlasUVRects[x_1250];
          let x_1254 : vec2<f32> = ((vec2<f32>(x_1245.x, x_1245.y) * vec2<f32>(x_1247.x, x_1247.z)) + vec2<f32>(x_1252.z, x_1252.w));
          let x_1255 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1254.x, x_1255.y, x_1254.y);
        }
      }
      let x_1262 : vec3<f32> = u_xlat17;
      let x_1264 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1262.x, x_1262.z), 0.0f);
      u_xlat7 = x_1264;
      let x_1267 : bool = u_xlatb4.y;
      if (x_1267) {
        let x_1272 : f32 = u_xlat7.w;
        x_1268 = x_1272;
      } else {
        let x_1275 : f32 = u_xlat7.x;
        x_1268 = x_1275;
      }
      let x_1276 : f32 = x_1268;
      u_xlat37 = x_1276;
      let x_1278 : bool = u_xlatb4.x;
      if (x_1278) {
        let x_1282 : vec4<f32> = u_xlat7;
        x_1279 = vec3<f32>(x_1282.x, x_1282.y, x_1282.z);
      } else {
        let x_1285 : f32 = u_xlat37;
        x_1279 = vec3<f32>(x_1285, x_1285, x_1285);
      }
      let x_1287 : vec3<f32> = x_1279;
      let x_1288 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1294 : vec4<f32> = u_xlat7;
    let x_1296 : i32 = u_xlati34;
    let x_1298 : vec4<f32> = x_583.x_AdditionalLightsColor[x_1296];
    let x_1300 : vec3<f32> = (vec3<f32>(x_1294.x, x_1294.y, x_1294.z) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
    let x_1301 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
    let x_1303 : f32 = u_xlat35;
    let x_1304 : f32 = u_xlat36;
    u_xlat34 = (x_1303 * x_1304);
    let x_1306 : f32 = u_xlat34;
    let x_1308 : vec4<f32> = u_xlat7;
    let x_1310 : vec3<f32> = (vec3<f32>(x_1306, x_1306, x_1306) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
    let x_1311 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
    let x_1313 : vec3<f32> = u_xlat1;
    let x_1314 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_1313, x_1314);
    let x_1316 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1316, 0.0f, 1.0f);
    let x_1318 : f32 = u_xlat34;
    let x_1320 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1318, x_1318, x_1318) * vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
    let x_1323 : vec3<f32> = u_xlat6;
    let x_1324 : vec4<f32> = u_xlat0;
    let x_1327 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1323 * vec3<f32>(x_1324.y, x_1324.z, x_1324.w)) + x_1327);

    continuing {
      let x_1329 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1329 + bitcast<u32>(1i));
    }
  }
  let x_1332 : vec4<f32> = u_xlat2;
  let x_1334 : vec4<f32> = u_xlat0;
  let x_1337 : vec3<f32> = u_xlat13;
  u_xlat10 = ((vec3<f32>(x_1332.x, x_1332.y, x_1332.z) * vec3<f32>(x_1334.y, x_1334.z, x_1334.w)) + x_1337);
  let x_1339 : vec3<f32> = u_xlat5;
  let x_1340 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1339 + x_1340);
  let x_1342 : f32 = u_xlat31;
  let x_1343 : f32 = u_xlat31;
  u_xlat1.x = (x_1342 * -(x_1343));
  let x_1348 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1348);
  let x_1351 : vec3<f32> = u_xlat10;
  let x_1354 : vec4<f32> = x_45.unity_FogColor;
  u_xlat10 = (x_1351 + -(vec3<f32>(x_1354.x, x_1354.y, x_1354.z)));
  let x_1360 : vec3<f32> = u_xlat1;
  let x_1362 : vec3<f32> = u_xlat10;
  let x_1365 : vec4<f32> = x_45.unity_FogColor;
  let x_1367 : vec3<f32> = ((vec3<f32>(x_1360.x, x_1360.x, x_1360.x) * x_1362) + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1372 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_1372 == 1.0f);
  let x_1374 : bool = u_xlatb10;
  if (x_1374) {
    let x_1379 : f32 = u_xlat0.x;
    x_1375 = x_1379;
  } else {
    x_1375 = 1.0f;
  }
  let x_1381 : f32 = x_1375;
  SV_Target0.w = x_1381;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


