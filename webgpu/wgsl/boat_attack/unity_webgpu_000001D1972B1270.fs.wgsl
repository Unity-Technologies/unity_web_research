struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_186 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_251 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_378 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_503 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_605 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_59 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_109 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb33 : bool;
  var u_xlatb1 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlatb5 : vec2<bool>;
  var x_340 : f32;
  var x_351 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var u_xlati36 : i32;
  var u_xlati27 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_901 : f32;
  var x_914 : f32;
  var x_966 : f32;
  var x_977 : vec3<f32>;
  var x_1058 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_63 : f32 = u_xlat1.x;
    x_59 = x_63;
  } else {
    x_59 = 0.0f;
  }
  let x_66 : f32 = x_59;
  u_xlat0.x = x_66;
  let x_71 : f32 = u_xlat0.w;
  let x_73 : f32 = x_41.x_BaseColor.w;
  let x_76 : f32 = x_41.x_Cutoff;
  u_xlat11 = ((x_71 * x_73) + -(x_76));
  let x_81 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_81);
  let x_85 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_85);
  let x_87 : f32 = u_xlat33;
  let x_89 : f32 = u_xlat22;
  u_xlat22 = (abs(x_87) + abs(x_89));
  let x_92 : f32 = u_xlat22;
  u_xlat22 = max(x_92, 0.0001f);
  let x_95 : f32 = u_xlat11;
  let x_96 : f32 = u_xlat22;
  u_xlat11 = (x_95 / x_96);
  let x_98 : f32 = u_xlat11;
  u_xlat11 = (x_98 + 0.5f);
  let x_101 : f32 = u_xlat11;
  u_xlat11 = clamp(x_101, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb22;
  if (x_108) {
    let x_112 : f32 = u_xlat11;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat11 = (x_119 + -0.0001f);
  let x_123 : f32 = u_xlat11;
  u_xlatb11 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb11;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_138);
  let x_142 : f32 = u_xlat11;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_153 : vec2<f32> = vs_TEXCOORD7;
  let x_155 : f32 = x_27.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_153, x_155);
  u_xlat3 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_161 : vec4<f32> = vs_TEXCOORD6;
  let x_162 : vec2<f32> = vec2<f32>(x_161.x, x_161.y);
  let x_166 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_162.x, x_162.y, x_166);
  let x_178 : vec3<f32> = txVec0;
  let x_180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_178.xy, x_178.z);
  u_xlat11 = x_180;
  let x_189 : f32 = x_186.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_189) + 1.0f);
  let x_192 : f32 = u_xlat11;
  let x_194 : f32 = x_186.x_MainLightShadowParams.x;
  let x_196 : f32 = u_xlat33;
  u_xlat11 = ((x_192 * x_194) + x_196);
  let x_200 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_200);
  let x_204 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_204 >= 1.0f);
  let x_206 : bool = u_xlatb33;
  let x_207 : bool = u_xlatb1;
  u_xlatb33 = (x_206 | x_207);
  let x_209 : bool = u_xlatb33;
  let x_210 : f32 = u_xlat11;
  u_xlat11 = select(x_210, 1.0f, x_209);
  let x_214 : vec3<f32> = vs_TEXCOORD1;
  let x_218 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_220 : vec3<f32> = (x_214 + -(x_218));
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : f32 = u_xlat33;
  let x_230 : f32 = x_186.x_MainLightShadowParams.z;
  let x_233 : f32 = x_186.x_MainLightShadowParams.w;
  u_xlat33 = ((x_228 * x_230) + x_233);
  let x_235 : f32 = u_xlat33;
  u_xlat33 = clamp(x_235, 0.0f, 1.0f);
  let x_237 : f32 = u_xlat11;
  u_xlat1.x = (-(x_237) + 1.0f);
  let x_241 : f32 = u_xlat33;
  let x_243 : f32 = u_xlat1.x;
  let x_245 : f32 = u_xlat11;
  u_xlat11 = ((x_241 * x_243) + x_245);
  let x_254 : f32 = x_251.x_MainLightCookieTextureFormat;
  u_xlatb33 = !((x_254 == -1.0f));
  let x_257 : bool = u_xlatb33;
  if (x_257) {
    let x_260 : vec3<f32> = vs_TEXCOORD1;
    let x_263 : vec4<f32> = x_251.x_MainLightWorldToLight[1i];
    let x_265 : vec2<f32> = (vec2<f32>(x_260.y, x_260.y) * vec2<f32>(x_263.x, x_263.y));
    let x_266 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_265.x, x_265.y, x_266.z, x_266.w);
    let x_269 : vec4<f32> = x_251.x_MainLightWorldToLight[0i];
    let x_271 : vec3<f32> = vs_TEXCOORD1;
    let x_274 : vec4<f32> = u_xlat4;
    let x_276 : vec2<f32> = ((vec2<f32>(x_269.x, x_269.y) * vec2<f32>(x_271.x, x_271.x)) + vec2<f32>(x_274.x, x_274.y));
    let x_277 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
    let x_280 : vec4<f32> = x_251.x_MainLightWorldToLight[2i];
    let x_282 : vec3<f32> = vs_TEXCOORD1;
    let x_285 : vec4<f32> = u_xlat4;
    let x_287 : vec2<f32> = ((vec2<f32>(x_280.x, x_280.y) * vec2<f32>(x_282.z, x_282.z)) + vec2<f32>(x_285.x, x_285.y));
    let x_288 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
    let x_290 : vec4<f32> = u_xlat4;
    let x_294 : vec4<f32> = x_251.x_MainLightWorldToLight[3i];
    let x_296 : vec2<f32> = (vec2<f32>(x_290.x, x_290.y) + vec2<f32>(x_294.x, x_294.y));
    let x_297 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_297.w);
    let x_299 : vec4<f32> = u_xlat4;
    let x_303 : vec2<f32> = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_304 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_304.z, x_304.w);
    let x_311 : vec4<f32> = u_xlat4;
    let x_314 : f32 = x_27.x_GlobalMipBias.x;
    let x_315 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_311.x, x_311.y), x_314);
    u_xlat4 = x_315;
    let x_320 : f32 = x_251.x_MainLightCookieTextureFormat;
    let x_322 : f32 = x_251.x_MainLightCookieTextureFormat;
    let x_324 : f32 = x_251.x_MainLightCookieTextureFormat;
    let x_326 : f32 = x_251.x_MainLightCookieTextureFormat;
    let x_327 : vec4<f32> = vec4<f32>(x_320, x_322, x_324, x_326);
    let x_335 : vec4<bool> = (vec4<f32>(x_327.x, x_327.y, x_327.z, x_327.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_335.x, x_335.y);
    let x_339 : bool = u_xlatb5.y;
    if (x_339) {
      let x_344 : f32 = u_xlat4.w;
      x_340 = x_344;
    } else {
      let x_347 : f32 = u_xlat4.x;
      x_340 = x_347;
    }
    let x_348 : f32 = x_340;
    u_xlat33 = x_348;
    let x_350 : bool = u_xlatb5.x;
    if (x_350) {
      let x_354 : vec4<f32> = u_xlat4;
      x_351 = vec3<f32>(x_354.x, x_354.y, x_354.z);
    } else {
      let x_357 : f32 = u_xlat33;
      x_351 = vec3<f32>(x_357, x_357, x_357);
    }
    let x_359 : vec3<f32> = x_351;
    let x_360 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_366 : vec4<f32> = u_xlat4;
  let x_369 : vec4<f32> = x_27.x_MainLightColor;
  let x_371 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : f32 = u_xlat11;
  let x_380 : f32 = x_378.unity_LightData.z;
  u_xlat11 = (x_374 * x_380);
  let x_382 : f32 = u_xlat11;
  let x_384 : vec4<f32> = u_xlat4;
  let x_386 : vec3<f32> = (vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec3<f32> = u_xlat2;
  let x_391 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat11 = dot(x_389, vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat11;
  u_xlat11 = clamp(x_394, 0.0f, 1.0f);
  let x_396 : f32 = u_xlat11;
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : vec3<f32> = (vec3<f32>(x_396, x_396, x_396) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec4<f32> = u_xlat4;
  let x_407 : vec3<f32> = (vec3<f32>(x_403.y, x_403.z, x_403.w) * vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat0;
  let x_412 : vec4<f32> = u_xlat4;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.x, x_410.x) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_420 : f32 = x_378.unity_LightData.y;
  u_xlat11 = min(x_418, x_420);
  let x_424 : f32 = u_xlat11;
  u_xlatu11 = bitcast<u32>(i32(x_424));
  let x_428 : f32 = x_251.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_430 : f32 = x_251.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_432 : f32 = x_251.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_434 : f32 = x_251.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_435 : vec4<f32> = vec4<f32>(x_428, x_430, x_432, x_434);
  let x_441 : vec4<bool> = (vec4<f32>(x_435.x, x_435.y, x_435.z, x_435.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_441.x, x_441.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_453 : u32 = u_xlatu_loop_1;
    let x_454 : u32 = u_xlatu11;
    if ((x_453 < x_454)) {
    } else {
      break;
    }
    let x_457 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_457 >> 2u);
    let x_461 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_461 & 3u));
    let x_465 : u32 = u_xlatu1;
    let x_468 : vec4<f32> = x_378.unity_LightIndices[bitcast<i32>(x_465)];
    let x_478 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_483 : vec4<u32> = indexable[x_478];
    u_xlat1.x = dot(x_468, bitcast<vec4<f32>>(x_483));
    let x_488 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_488));
    let x_492 : vec3<f32> = vs_TEXCOORD1;
    let x_504 : u32 = u_xlatu1;
    let x_507 : vec4<f32> = x_503.x_AdditionalLightsPosition[bitcast<i32>(x_504)];
    let x_510 : u32 = u_xlatu1;
    let x_513 : vec4<f32> = x_503.x_AdditionalLightsPosition[bitcast<i32>(x_510)];
    u_xlat7 = ((-(x_492) * vec3<f32>(x_507.w, x_507.w, x_507.w)) + vec3<f32>(x_513.x, x_513.y, x_513.z));
    let x_517 : vec3<f32> = u_xlat7;
    let x_518 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_517, x_518);
    let x_520 : f32 = u_xlat35;
    u_xlat35 = max(x_520, 6.10351562e-05f);
    let x_524 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_524);
    let x_526 : f32 = u_xlat36;
    let x_528 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_526, x_526, x_526) * x_528);
    let x_530 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_530);
    let x_532 : f32 = u_xlat35;
    let x_533 : u32 = u_xlatu1;
    let x_536 : f32 = x_503.x_AdditionalLightsAttenuation[bitcast<i32>(x_533)].x;
    u_xlat35 = (x_532 * x_536);
    let x_538 : f32 = u_xlat35;
    let x_540 : f32 = u_xlat35;
    u_xlat35 = ((-(x_538) * x_540) + 1.0f);
    let x_543 : f32 = u_xlat35;
    u_xlat35 = max(x_543, 0.0f);
    let x_545 : f32 = u_xlat35;
    let x_546 : f32 = u_xlat35;
    u_xlat35 = (x_545 * x_546);
    let x_548 : f32 = u_xlat35;
    let x_549 : f32 = u_xlat36;
    u_xlat35 = (x_548 * x_549);
    let x_551 : u32 = u_xlatu1;
    let x_554 : vec4<f32> = x_503.x_AdditionalLightsSpotDir[bitcast<i32>(x_551)];
    let x_556 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), x_556);
    let x_558 : f32 = u_xlat36;
    let x_559 : u32 = u_xlatu1;
    let x_562 : f32 = x_503.x_AdditionalLightsAttenuation[bitcast<i32>(x_559)].z;
    let x_564 : u32 = u_xlatu1;
    let x_567 : f32 = x_503.x_AdditionalLightsAttenuation[bitcast<i32>(x_564)].w;
    u_xlat36 = ((x_558 * x_562) + x_567);
    let x_569 : f32 = u_xlat36;
    u_xlat36 = clamp(x_569, 0.0f, 1.0f);
    let x_571 : f32 = u_xlat36;
    let x_572 : f32 = u_xlat36;
    u_xlat36 = (x_571 * x_572);
    let x_574 : f32 = u_xlat35;
    let x_575 : f32 = u_xlat36;
    u_xlat35 = (x_574 * x_575);
    let x_578 : u32 = u_xlatu1;
    u_xlatu36 = (x_578 >> 5u);
    let x_581 : u32 = u_xlatu1;
    u_xlati37 = (1i << bitcast<u32>((bitcast<i32>(x_581) & 31i)));
    let x_587 : i32 = u_xlati37;
    let x_589 : u32 = u_xlatu36;
    let x_592 : f32 = x_251.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_589)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_587) & bitcast<u32>(x_592)));
    let x_596 : i32 = u_xlati36;
    if ((x_596 != 0i)) {
      let x_606 : u32 = u_xlatu1;
      let x_609 : f32 = x_605.x_AdditionalLightsLightTypes[bitcast<i32>(x_606)].el;
      u_xlati36 = i32(x_609);
      let x_611 : i32 = u_xlati36;
      u_xlati37 = select(1i, 0i, (x_611 != 0i));
      let x_615 : u32 = u_xlatu1;
      u_xlati27 = (bitcast<i32>(x_615) << bitcast<u32>(2i));
      let x_618 : i32 = u_xlati37;
      if ((x_618 != 0i)) {
        let x_623 : vec3<f32> = vs_TEXCOORD1;
        let x_625 : i32 = u_xlati27;
        let x_628 : i32 = u_xlati27;
        let x_632 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_625 + 1i) / 4i)][((x_628 + 1i) % 4i)];
        let x_634 : vec3<f32> = (vec3<f32>(x_623.y, x_623.y, x_623.y) * vec3<f32>(x_632.x, x_632.y, x_632.w));
        let x_635 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
        let x_637 : i32 = u_xlati27;
        let x_639 : i32 = u_xlati27;
        let x_642 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[(x_637 / 4i)][(x_639 % 4i)];
        let x_644 : vec3<f32> = vs_TEXCOORD1;
        let x_647 : vec4<f32> = u_xlat8;
        let x_649 : vec3<f32> = ((vec3<f32>(x_642.x, x_642.y, x_642.w) * vec3<f32>(x_644.x, x_644.x, x_644.x)) + vec3<f32>(x_647.x, x_647.y, x_647.z));
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : i32 = u_xlati27;
        let x_655 : i32 = u_xlati27;
        let x_659 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_652 + 2i) / 4i)][((x_655 + 2i) % 4i)];
        let x_661 : vec3<f32> = vs_TEXCOORD1;
        let x_664 : vec4<f32> = u_xlat8;
        let x_666 : vec3<f32> = ((vec3<f32>(x_659.x, x_659.y, x_659.w) * vec3<f32>(x_661.z, x_661.z, x_661.z)) + vec3<f32>(x_664.x, x_664.y, x_664.z));
        let x_667 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
        let x_669 : vec4<f32> = u_xlat8;
        let x_671 : i32 = u_xlati27;
        let x_674 : i32 = u_xlati27;
        let x_678 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_671 + 3i) / 4i)][((x_674 + 3i) % 4i)];
        let x_680 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) + vec3<f32>(x_678.x, x_678.y, x_678.w));
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat8;
        let x_685 : vec4<f32> = u_xlat8;
        let x_687 : vec2<f32> = (vec2<f32>(x_683.x, x_683.y) / vec2<f32>(x_685.z, x_685.z));
        let x_688 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat8;
        let x_693 : vec2<f32> = ((vec2<f32>(x_690.x, x_690.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_694 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = clamp(vec2<f32>(x_696.x, x_696.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_701.z, x_701.w);
        let x_703 : u32 = u_xlatu1;
        let x_706 : vec4<f32> = x_605.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_703)];
        let x_708 : vec4<f32> = u_xlat8;
        let x_711 : u32 = u_xlatu1;
        let x_714 : vec4<f32> = x_605.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_711)];
        let x_716 : vec2<f32> = ((vec2<f32>(x_706.x, x_706.y) * vec2<f32>(x_708.x, x_708.y)) + vec2<f32>(x_714.z, x_714.w));
        let x_717 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
      } else {
        let x_721 : i32 = u_xlati36;
        u_xlatb36 = (x_721 == 1i);
        let x_723 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_723);
        let x_725 : i32 = u_xlati36;
        if ((x_725 != 0i)) {
          let x_731 : vec3<f32> = vs_TEXCOORD1;
          let x_733 : i32 = u_xlati27;
          let x_736 : i32 = u_xlati27;
          let x_740 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_733 + 1i) / 4i)][((x_736 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_731.y, x_731.y) * vec2<f32>(x_740.x, x_740.y));
          let x_743 : i32 = u_xlati27;
          let x_745 : i32 = u_xlati27;
          let x_748 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[(x_743 / 4i)][(x_745 % 4i)];
          let x_750 : vec3<f32> = vs_TEXCOORD1;
          let x_753 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_750.x, x_750.x)) + x_753);
          let x_755 : i32 = u_xlati27;
          let x_758 : i32 = u_xlati27;
          let x_762 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_755 + 2i) / 4i)][((x_758 + 2i) % 4i)];
          let x_764 : vec3<f32> = vs_TEXCOORD1;
          let x_767 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_762.x, x_762.y) * vec2<f32>(x_764.z, x_764.z)) + x_767);
          let x_769 : vec2<f32> = u_xlat30;
          let x_770 : i32 = u_xlati27;
          let x_773 : i32 = u_xlati27;
          let x_777 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_770 + 3i) / 4i)][((x_773 + 3i) % 4i)];
          u_xlat30 = (x_769 + vec2<f32>(x_777.x, x_777.y));
          let x_780 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_780 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_783 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_783);
          let x_785 : u32 = u_xlatu1;
          let x_788 : vec4<f32> = x_605.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_785)];
          let x_790 : vec2<f32> = u_xlat30;
          let x_792 : u32 = u_xlatu1;
          let x_795 : vec4<f32> = x_605.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_792)];
          let x_797 : vec2<f32> = ((vec2<f32>(x_788.x, x_788.y) * x_790) + vec2<f32>(x_795.z, x_795.w));
          let x_798 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
        } else {
          let x_802 : vec3<f32> = vs_TEXCOORD1;
          let x_804 : i32 = u_xlati27;
          let x_807 : i32 = u_xlati27;
          let x_811 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_804 + 1i) / 4i)][((x_807 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_802.y, x_802.y, x_802.y, x_802.y) * x_811);
          let x_813 : i32 = u_xlati27;
          let x_815 : i32 = u_xlati27;
          let x_818 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[(x_813 / 4i)][(x_815 % 4i)];
          let x_819 : vec3<f32> = vs_TEXCOORD1;
          let x_822 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_818 * vec4<f32>(x_819.x, x_819.x, x_819.x, x_819.x)) + x_822);
          let x_824 : i32 = u_xlati27;
          let x_827 : i32 = u_xlati27;
          let x_831 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_824 + 2i) / 4i)][((x_827 + 2i) % 4i)];
          let x_832 : vec3<f32> = vs_TEXCOORD1;
          let x_835 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_831 * vec4<f32>(x_832.z, x_832.z, x_832.z, x_832.z)) + x_835);
          let x_837 : vec4<f32> = u_xlat9;
          let x_838 : i32 = u_xlati27;
          let x_841 : i32 = u_xlati27;
          let x_845 : vec4<f32> = x_605.x_AdditionalLightsWorldToLights[((x_838 + 3i) / 4i)][((x_841 + 3i) % 4i)];
          u_xlat9 = (x_837 + x_845);
          let x_847 : vec4<f32> = u_xlat9;
          let x_849 : vec4<f32> = u_xlat9;
          let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) / vec3<f32>(x_849.w, x_849.w, x_849.w));
          let x_852 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
          let x_854 : vec4<f32> = u_xlat9;
          let x_856 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(vec3<f32>(x_854.x, x_854.y, x_854.z), vec3<f32>(x_856.x, x_856.y, x_856.z));
          let x_859 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_859);
          let x_861 : f32 = u_xlat36;
          let x_863 : vec4<f32> = u_xlat9;
          let x_865 : vec3<f32> = (vec3<f32>(x_861, x_861, x_861) * vec3<f32>(x_863.x, x_863.y, x_863.z));
          let x_866 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
          let x_868 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(abs(vec3<f32>(x_868.x, x_868.y, x_868.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_873 : f32 = u_xlat36;
          u_xlat36 = max(x_873, 0.000001f);
          let x_876 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_876);
          let x_879 : f32 = u_xlat36;
          let x_881 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_879, x_879, x_879) * vec3<f32>(x_881.z, x_881.x, x_881.y));
          let x_885 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_885);
          let x_889 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_889, 0.0f, 1.0f);
          let x_893 : vec3<f32> = u_xlat10;
          let x_896 : vec4<bool> = (vec4<f32>(x_893.y, x_893.z, x_893.y, x_893.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_896.x, x_896.y);
          let x_900 : bool = u_xlatb27.x;
          if (x_900) {
            let x_905 : f32 = u_xlat10.x;
            x_901 = x_905;
          } else {
            let x_908 : f32 = u_xlat10.x;
            x_901 = -(x_908);
          }
          let x_910 : f32 = x_901;
          u_xlat27.x = x_910;
          let x_913 : bool = u_xlatb27.y;
          if (x_913) {
            let x_918 : f32 = u_xlat10.x;
            x_914 = x_918;
          } else {
            let x_921 : f32 = u_xlat10.x;
            x_914 = -(x_921);
          }
          let x_923 : f32 = x_914;
          u_xlat27.y = x_923;
          let x_925 : vec4<f32> = u_xlat9;
          let x_927 : f32 = u_xlat36;
          let x_930 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_925.x, x_925.y) * vec2<f32>(x_927, x_927)) + x_930);
          let x_932 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_932 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_935 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_935, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_939 : u32 = u_xlatu1;
          let x_942 : vec4<f32> = x_605.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_939)];
          let x_944 : vec2<f32> = u_xlat27;
          let x_946 : u32 = u_xlatu1;
          let x_949 : vec4<f32> = x_605.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_946)];
          let x_951 : vec2<f32> = ((vec2<f32>(x_942.x, x_942.y) * x_944) + vec2<f32>(x_949.z, x_949.w));
          let x_952 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        }
      }
      let x_959 : vec4<f32> = u_xlat8;
      let x_962 : f32 = x_27.x_GlobalMipBias.x;
      let x_963 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_959.x, x_959.y), x_962);
      u_xlat8 = x_963;
      let x_965 : bool = u_xlatb5.y;
      if (x_965) {
        let x_970 : f32 = u_xlat8.w;
        x_966 = x_970;
      } else {
        let x_973 : f32 = u_xlat8.x;
        x_966 = x_973;
      }
      let x_974 : f32 = x_966;
      u_xlat36 = x_974;
      let x_976 : bool = u_xlatb5.x;
      if (x_976) {
        let x_980 : vec4<f32> = u_xlat8;
        x_977 = vec3<f32>(x_980.x, x_980.y, x_980.z);
      } else {
        let x_983 : f32 = u_xlat36;
        x_977 = vec3<f32>(x_983, x_983, x_983);
      }
      let x_985 : vec3<f32> = x_977;
      let x_986 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_992 : vec4<f32> = u_xlat8;
    let x_994 : u32 = u_xlatu1;
    let x_997 : vec4<f32> = x_503.x_AdditionalLightsColor[bitcast<i32>(x_994)];
    let x_999 : vec3<f32> = (vec3<f32>(x_992.x, x_992.y, x_992.z) * vec3<f32>(x_997.x, x_997.y, x_997.z));
    let x_1000 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
    let x_1002 : f32 = u_xlat35;
    let x_1004 : vec4<f32> = u_xlat8;
    let x_1006 : vec3<f32> = (vec3<f32>(x_1002, x_1002, x_1002) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
    let x_1007 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
    let x_1009 : vec3<f32> = u_xlat2;
    let x_1010 : vec3<f32> = u_xlat7;
    u_xlat1.x = dot(x_1009, x_1010);
    let x_1014 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1014, 0.0f, 1.0f);
    let x_1017 : vec4<f32> = u_xlat1;
    let x_1019 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1017.x, x_1017.x, x_1017.x) * vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
    let x_1022 : vec4<f32> = u_xlat1;
    let x_1024 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1022.y, x_1022.z, x_1022.w) * x_1024);
    let x_1026 : vec3<f32> = u_xlat7;
    let x_1027 : vec4<f32> = u_xlat0;
    let x_1030 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1026 * vec3<f32>(x_1027.x, x_1027.x, x_1027.x)) + x_1030);

    continuing {
      let x_1032 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1032 + bitcast<u32>(1i));
    }
  }
  let x_1034 : vec3<f32> = u_xlat3;
  let x_1035 : vec4<f32> = u_xlat1;
  let x_1038 : vec4<f32> = u_xlat4;
  let x_1040 : vec3<f32> = ((x_1034 * vec3<f32>(x_1035.y, x_1035.z, x_1035.w)) + vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1045 : vec3<f32> = u_xlat6;
  let x_1046 : vec4<f32> = u_xlat1;
  let x_1048 : vec3<f32> = (x_1045 + vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1052 : f32 = x_41.x_Surface;
  u_xlatb11 = (x_1052 == 1.0f);
  let x_1054 : bool = u_xlatb11;
  let x_1055 : bool = u_xlatb22;
  u_xlatb11 = (x_1054 | x_1055);
  let x_1057 : bool = u_xlatb11;
  if (x_1057) {
    let x_1062 : f32 = u_xlat0.x;
    x_1058 = x_1062;
  } else {
    x_1058 = 1.0f;
  }
  let x_1064 : f32 = x_1058;
  SV_Target0.w = x_1064;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

