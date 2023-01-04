struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_317 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_390 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_529 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_651 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_752 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_130 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb36 : bool;
  var x_342 : f32;
  var u_xlat36 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_476 : f32;
  var x_487 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1048 : f32;
  var x_1061 : f32;
  var x_1113 : f32;
  var x_1124 : vec3<f32>;
  var x_1206 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat11.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat33;
  let x_104 : f32 = u_xlat22;
  u_xlat22 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat22;
  u_xlat22 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat11.x;
  let x_112 : f32 = u_xlat22;
  u_xlat11.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat11.x;
  u_xlat11.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb22;
  if (x_129) {
    let x_134 : f32 = u_xlat11.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat11.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat11.x;
  u_xlatb11 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb11;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat11;
  let x_171 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_180 : vec2<f32> = vs_TEXCOORD7;
  let x_182 : f32 = x_43.x_GlobalMipBias.x;
  let x_183 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_180, x_182);
  u_xlat3 = x_183;
  let x_189 : vec2<f32> = vs_TEXCOORD7;
  let x_191 : f32 = x_43.x_GlobalMipBias.x;
  let x_192 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_189, x_191);
  let x_193 : vec3<f32> = vec3<f32>(x_192.x, x_192.y, x_192.z);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat3;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec3<f32> = u_xlat2;
  let x_204 : vec4<f32> = u_xlat3;
  u_xlat11.x = dot(x_203, vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_209 : f32 = u_xlat11.x;
  u_xlat11.x = (x_209 + 0.5f);
  let x_212 : vec3<f32> = u_xlat11;
  let x_214 : vec4<f32> = u_xlat4;
  let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.x, x_212.x) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_220 : f32 = u_xlat3.w;
  u_xlat11.x = max(x_220, 0.0001f);
  let x_223 : vec4<f32> = u_xlat3;
  let x_225 : vec3<f32> = u_xlat11;
  let x_227 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) / vec3<f32>(x_225.x, x_225.x, x_225.x));
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_232 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_233 : vec2<f32> = vec2<f32>(x_232.x, x_232.y);
  let x_237 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_233.x, x_233.y));
  let x_238 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_237.x, x_238.y, x_237.y);
  let x_240 : vec3<f32> = u_xlat11;
  let x_242 : vec4<f32> = hlslcc_FragCoord;
  let x_244 : vec2<f32> = (vec2<f32>(x_240.x, x_240.z) * vec2<f32>(x_242.x, x_242.y));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_245.z, x_245.w);
  let x_249 : f32 = u_xlat4.y;
  let x_252 : f32 = x_43.x_ScaleBiasRt.x;
  let x_255 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_249 * x_252) + x_255);
  let x_259 : f32 = u_xlat11.x;
  u_xlat4.z = (-(x_259) + 1.0f);
  let x_269 : vec4<f32> = u_xlat4;
  let x_272 : f32 = x_43.x_GlobalMipBias.x;
  let x_273 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_269.x, x_269.z), x_272);
  u_xlat11.x = x_273.x;
  let x_277 : f32 = u_xlat11.x;
  u_xlat33 = (x_277 + -1.0f);
  let x_282 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_283 : f32 = u_xlat33;
  u_xlat33 = ((x_282 * x_283) + 1.0f);
  let x_287 : f32 = u_xlat11.x;
  u_xlat11.x = min(x_287, 1.0f);
  let x_292 : vec4<f32> = vs_TEXCOORD6;
  let x_293 : vec2<f32> = vec2<f32>(x_292.x, x_292.y);
  let x_295 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_293.x, x_293.y, x_295);
  let x_307 : vec3<f32> = txVec0;
  let x_309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_307.xy, x_307.z);
  u_xlat1.x = x_309;
  let x_319 : f32 = x_317.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_319) + 1.0f);
  let x_323 : f32 = u_xlat1.x;
  let x_325 : f32 = x_317.x_MainLightShadowParams.x;
  let x_327 : f32 = u_xlat35;
  u_xlat1.x = ((x_323 * x_325) + x_327);
  let x_332 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (0.0f >= x_332);
  let x_336 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (x_336 >= 1.0f);
  let x_338 : bool = u_xlatb35;
  let x_339 : bool = u_xlatb36;
  u_xlatb35 = (x_338 | x_339);
  let x_341 : bool = u_xlatb35;
  if (x_341) {
    x_342 = 1.0f;
  } else {
    let x_347 : f32 = u_xlat1.x;
    x_342 = x_347;
  }
  let x_348 : f32 = x_342;
  u_xlat1.x = x_348;
  let x_351 : vec3<f32> = vs_TEXCOORD1;
  let x_355 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_357 : vec3<f32> = (x_351 + -(x_355));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : f32 = u_xlat35;
  let x_367 : f32 = x_317.x_MainLightShadowParams.z;
  let x_370 : f32 = x_317.x_MainLightShadowParams.w;
  u_xlat35 = ((x_365 * x_367) + x_370);
  let x_372 : f32 = u_xlat35;
  u_xlat35 = clamp(x_372, 0.0f, 1.0f);
  let x_376 : f32 = u_xlat1.x;
  u_xlat36 = (-(x_376) + 1.0f);
  let x_379 : f32 = u_xlat35;
  let x_380 : f32 = u_xlat36;
  let x_383 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_379 * x_380) + x_383);
  let x_392 : f32 = x_390.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_392 == -1.0f));
  let x_394 : bool = u_xlatb35;
  if (x_394) {
    let x_397 : vec3<f32> = vs_TEXCOORD1;
    let x_400 : vec4<f32> = x_390.x_MainLightWorldToLight[1i];
    let x_402 : vec2<f32> = (vec2<f32>(x_397.y, x_397.y) * vec2<f32>(x_400.x, x_400.y));
    let x_403 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
    let x_406 : vec4<f32> = x_390.x_MainLightWorldToLight[0i];
    let x_408 : vec3<f32> = vs_TEXCOORD1;
    let x_411 : vec4<f32> = u_xlat4;
    let x_413 : vec2<f32> = ((vec2<f32>(x_406.x, x_406.y) * vec2<f32>(x_408.x, x_408.x)) + vec2<f32>(x_411.x, x_411.y));
    let x_414 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
    let x_417 : vec4<f32> = x_390.x_MainLightWorldToLight[2i];
    let x_419 : vec3<f32> = vs_TEXCOORD1;
    let x_422 : vec4<f32> = u_xlat4;
    let x_424 : vec2<f32> = ((vec2<f32>(x_417.x, x_417.y) * vec2<f32>(x_419.z, x_419.z)) + vec2<f32>(x_422.x, x_422.y));
    let x_425 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
    let x_427 : vec4<f32> = u_xlat4;
    let x_431 : vec4<f32> = x_390.x_MainLightWorldToLight[3i];
    let x_433 : vec2<f32> = (vec2<f32>(x_427.x, x_427.y) + vec2<f32>(x_431.x, x_431.y));
    let x_434 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
    let x_436 : vec4<f32> = u_xlat4;
    let x_440 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_441 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
    let x_448 : vec4<f32> = u_xlat4;
    let x_451 : f32 = x_43.x_GlobalMipBias.x;
    let x_452 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_448.x, x_448.y), x_451);
    u_xlat4 = x_452;
    let x_457 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_459 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_461 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_463 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_464 : vec4<f32> = vec4<f32>(x_457, x_459, x_461, x_463);
    let x_472 : vec4<bool> = (vec4<f32>(x_464.x, x_464.y, x_464.z, x_464.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_472.x, x_472.y);
    let x_475 : bool = u_xlatb5.y;
    if (x_475) {
      let x_480 : f32 = u_xlat4.w;
      x_476 = x_480;
    } else {
      let x_483 : f32 = u_xlat4.x;
      x_476 = x_483;
    }
    let x_484 : f32 = x_476;
    u_xlat35 = x_484;
    let x_486 : bool = u_xlatb5.x;
    if (x_486) {
      let x_490 : vec4<f32> = u_xlat4;
      x_487 = vec3<f32>(x_490.x, x_490.y, x_490.z);
    } else {
      let x_493 : f32 = u_xlat35;
      x_487 = vec3<f32>(x_493, x_493, x_493);
    }
    let x_495 : vec3<f32> = x_487;
    let x_496 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_502 : vec4<f32> = u_xlat4;
  let x_505 : vec4<f32> = x_43.x_MainLightColor;
  let x_507 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : f32 = u_xlat33;
  let x_512 : vec4<f32> = u_xlat4;
  let x_514 : vec3<f32> = (vec3<f32>(x_510, x_510, x_510) * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec3<f32> = u_xlat11;
  let x_519 : vec4<f32> = u_xlat3;
  let x_521 : vec3<f32> = (vec3<f32>(x_517.x, x_517.x, x_517.x) * vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : f32 = u_xlat1.x;
  let x_531 : f32 = x_529.unity_LightData.z;
  u_xlat11.x = (x_525 * x_531);
  let x_534 : vec3<f32> = u_xlat11;
  let x_536 : vec4<f32> = u_xlat4;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.x, x_534.x) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec3<f32> = u_xlat2;
  let x_543 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(x_541, vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_548 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_548, 0.0f, 1.0f);
  let x_551 : vec3<f32> = u_xlat11;
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.x, x_551.x) * vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec4<f32> = u_xlat4;
  let x_562 : vec3<f32> = (vec3<f32>(x_558.y, x_558.z, x_558.w) * vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_567 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_569 : f32 = x_529.unity_LightData.y;
  u_xlat11.x = min(x_567, x_569);
  let x_575 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_575));
  let x_579 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_581 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_583 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_585 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_586 : vec4<f32> = vec4<f32>(x_579, x_581, x_583, x_585);
  let x_592 : vec4<bool> = (vec4<f32>(x_586.x, x_586.y, x_586.z, x_586.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_592.x, x_592.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_604 : u32 = u_xlatu_loop_1;
    let x_605 : u32 = u_xlatu11;
    if ((x_604 < x_605)) {
    } else {
      break;
    }
    let x_608 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_608 >> 2u);
    let x_612 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_612 & 3u));
    let x_615 : u32 = u_xlatu35;
    let x_618 : vec4<f32> = x_529.unity_LightIndices[bitcast<i32>(x_615)];
    let x_628 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_633 : vec4<u32> = indexable[x_628];
    u_xlat35 = dot(x_618, bitcast<vec4<f32>>(x_633));
    let x_636 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_636));
    let x_640 : vec3<f32> = vs_TEXCOORD1;
    let x_652 : u32 = u_xlatu35;
    let x_655 : vec4<f32> = x_651.x_AdditionalLightsPosition[bitcast<i32>(x_652)];
    let x_658 : u32 = u_xlatu35;
    let x_661 : vec4<f32> = x_651.x_AdditionalLightsPosition[bitcast<i32>(x_658)];
    u_xlat7 = ((-(x_640) * vec3<f32>(x_655.w, x_655.w, x_655.w)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
    let x_664 : vec3<f32> = u_xlat7;
    let x_665 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_664, x_665);
    let x_667 : f32 = u_xlat36;
    u_xlat36 = max(x_667, 6.10351562e-05f);
    let x_671 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_671);
    let x_673 : f32 = u_xlat37;
    let x_675 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_673, x_673, x_673) * x_675);
    let x_677 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_677);
    let x_679 : f32 = u_xlat36;
    let x_680 : u32 = u_xlatu35;
    let x_683 : f32 = x_651.x_AdditionalLightsAttenuation[bitcast<i32>(x_680)].x;
    u_xlat36 = (x_679 * x_683);
    let x_685 : f32 = u_xlat36;
    let x_687 : f32 = u_xlat36;
    u_xlat36 = ((-(x_685) * x_687) + 1.0f);
    let x_690 : f32 = u_xlat36;
    u_xlat36 = max(x_690, 0.0f);
    let x_692 : f32 = u_xlat36;
    let x_693 : f32 = u_xlat36;
    u_xlat36 = (x_692 * x_693);
    let x_695 : f32 = u_xlat36;
    let x_696 : f32 = u_xlat37;
    u_xlat36 = (x_695 * x_696);
    let x_698 : u32 = u_xlatu35;
    let x_701 : vec4<f32> = x_651.x_AdditionalLightsSpotDir[bitcast<i32>(x_698)];
    let x_703 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), x_703);
    let x_705 : f32 = u_xlat37;
    let x_706 : u32 = u_xlatu35;
    let x_709 : f32 = x_651.x_AdditionalLightsAttenuation[bitcast<i32>(x_706)].z;
    let x_711 : u32 = u_xlatu35;
    let x_714 : f32 = x_651.x_AdditionalLightsAttenuation[bitcast<i32>(x_711)].w;
    u_xlat37 = ((x_705 * x_709) + x_714);
    let x_716 : f32 = u_xlat37;
    u_xlat37 = clamp(x_716, 0.0f, 1.0f);
    let x_718 : f32 = u_xlat37;
    let x_719 : f32 = u_xlat37;
    u_xlat37 = (x_718 * x_719);
    let x_721 : f32 = u_xlat36;
    let x_722 : f32 = u_xlat37;
    u_xlat36 = (x_721 * x_722);
    let x_725 : u32 = u_xlatu35;
    u_xlatu37 = (x_725 >> 5u);
    let x_728 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_728) & 31i)));
    let x_734 : i32 = u_xlati27;
    let x_736 : u32 = u_xlatu37;
    let x_739 : f32 = x_390.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_736)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_734) & bitcast<u32>(x_739)));
    let x_743 : i32 = u_xlati37;
    if ((x_743 != 0i)) {
      let x_753 : u32 = u_xlatu35;
      let x_756 : f32 = x_752.x_AdditionalLightsLightTypes[bitcast<i32>(x_753)].el;
      u_xlati37 = i32(x_756);
      let x_758 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_758 != 0i));
      let x_762 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_762) << bitcast<u32>(2i));
      let x_765 : i32 = u_xlati27;
      if ((x_765 != 0i)) {
        let x_770 : vec3<f32> = vs_TEXCOORD1;
        let x_772 : i32 = u_xlati38;
        let x_775 : i32 = u_xlati38;
        let x_779 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_772 + 1i) / 4i)][((x_775 + 1i) % 4i)];
        let x_781 : vec3<f32> = (vec3<f32>(x_770.y, x_770.y, x_770.y) * vec3<f32>(x_779.x, x_779.y, x_779.w));
        let x_782 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
        let x_784 : i32 = u_xlati38;
        let x_786 : i32 = u_xlati38;
        let x_789 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[(x_784 / 4i)][(x_786 % 4i)];
        let x_791 : vec3<f32> = vs_TEXCOORD1;
        let x_794 : vec4<f32> = u_xlat8;
        let x_796 : vec3<f32> = ((vec3<f32>(x_789.x, x_789.y, x_789.w) * vec3<f32>(x_791.x, x_791.x, x_791.x)) + vec3<f32>(x_794.x, x_794.y, x_794.z));
        let x_797 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
        let x_799 : i32 = u_xlati38;
        let x_802 : i32 = u_xlati38;
        let x_806 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_799 + 2i) / 4i)][((x_802 + 2i) % 4i)];
        let x_808 : vec3<f32> = vs_TEXCOORD1;
        let x_811 : vec4<f32> = u_xlat8;
        let x_813 : vec3<f32> = ((vec3<f32>(x_806.x, x_806.y, x_806.w) * vec3<f32>(x_808.z, x_808.z, x_808.z)) + vec3<f32>(x_811.x, x_811.y, x_811.z));
        let x_814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat8;
        let x_818 : i32 = u_xlati38;
        let x_821 : i32 = u_xlati38;
        let x_825 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_818 + 3i) / 4i)][((x_821 + 3i) % 4i)];
        let x_827 : vec3<f32> = (vec3<f32>(x_816.x, x_816.y, x_816.z) + vec3<f32>(x_825.x, x_825.y, x_825.w));
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat8;
        let x_832 : vec4<f32> = u_xlat8;
        let x_834 : vec2<f32> = (vec2<f32>(x_830.x, x_830.y) / vec2<f32>(x_832.z, x_832.z));
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_834.x, x_834.y, x_835.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat8;
        let x_840 : vec2<f32> = ((vec2<f32>(x_837.x, x_837.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_841 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat8;
        let x_847 : vec2<f32> = clamp(vec2<f32>(x_843.x, x_843.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_848 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : u32 = u_xlatu35;
        let x_853 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_850)];
        let x_855 : vec4<f32> = u_xlat8;
        let x_858 : u32 = u_xlatu35;
        let x_861 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_858)];
        let x_863 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_855.x, x_855.y)) + vec2<f32>(x_861.z, x_861.w));
        let x_864 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_863.x, x_863.y, x_864.z, x_864.w);
      } else {
        let x_868 : i32 = u_xlati37;
        u_xlatb37 = (x_868 == 1i);
        let x_870 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_870);
        let x_872 : i32 = u_xlati37;
        if ((x_872 != 0i)) {
          let x_878 : vec3<f32> = vs_TEXCOORD1;
          let x_880 : i32 = u_xlati38;
          let x_883 : i32 = u_xlati38;
          let x_887 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_880 + 1i) / 4i)][((x_883 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_878.y, x_878.y) * vec2<f32>(x_887.x, x_887.y));
          let x_890 : i32 = u_xlati38;
          let x_892 : i32 = u_xlati38;
          let x_895 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[(x_890 / 4i)][(x_892 % 4i)];
          let x_897 : vec3<f32> = vs_TEXCOORD1;
          let x_900 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_895.x, x_895.y) * vec2<f32>(x_897.x, x_897.x)) + x_900);
          let x_902 : i32 = u_xlati38;
          let x_905 : i32 = u_xlati38;
          let x_909 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_902 + 2i) / 4i)][((x_905 + 2i) % 4i)];
          let x_911 : vec3<f32> = vs_TEXCOORD1;
          let x_914 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_911.z, x_911.z)) + x_914);
          let x_916 : vec2<f32> = u_xlat30;
          let x_917 : i32 = u_xlati38;
          let x_920 : i32 = u_xlati38;
          let x_924 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_917 + 3i) / 4i)][((x_920 + 3i) % 4i)];
          u_xlat30 = (x_916 + vec2<f32>(x_924.x, x_924.y));
          let x_927 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_927 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_930 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_930);
          let x_932 : u32 = u_xlatu35;
          let x_935 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_932)];
          let x_937 : vec2<f32> = u_xlat30;
          let x_939 : u32 = u_xlatu35;
          let x_942 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_939)];
          let x_944 : vec2<f32> = ((vec2<f32>(x_935.x, x_935.y) * x_937) + vec2<f32>(x_942.z, x_942.w));
          let x_945 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        } else {
          let x_949 : vec3<f32> = vs_TEXCOORD1;
          let x_951 : i32 = u_xlati38;
          let x_954 : i32 = u_xlati38;
          let x_958 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_951 + 1i) / 4i)][((x_954 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_949.y, x_949.y, x_949.y, x_949.y) * x_958);
          let x_960 : i32 = u_xlati38;
          let x_962 : i32 = u_xlati38;
          let x_965 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[(x_960 / 4i)][(x_962 % 4i)];
          let x_966 : vec3<f32> = vs_TEXCOORD1;
          let x_969 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_965 * vec4<f32>(x_966.x, x_966.x, x_966.x, x_966.x)) + x_969);
          let x_971 : i32 = u_xlati38;
          let x_974 : i32 = u_xlati38;
          let x_978 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_971 + 2i) / 4i)][((x_974 + 2i) % 4i)];
          let x_979 : vec3<f32> = vs_TEXCOORD1;
          let x_982 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_978 * vec4<f32>(x_979.z, x_979.z, x_979.z, x_979.z)) + x_982);
          let x_984 : vec4<f32> = u_xlat9;
          let x_985 : i32 = u_xlati38;
          let x_988 : i32 = u_xlati38;
          let x_992 : vec4<f32> = x_752.x_AdditionalLightsWorldToLights[((x_985 + 3i) / 4i)][((x_988 + 3i) % 4i)];
          u_xlat9 = (x_984 + x_992);
          let x_994 : vec4<f32> = u_xlat9;
          let x_996 : vec4<f32> = u_xlat9;
          let x_998 : vec3<f32> = (vec3<f32>(x_994.x, x_994.y, x_994.z) / vec3<f32>(x_996.w, x_996.w, x_996.w));
          let x_999 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
          let x_1001 : vec4<f32> = u_xlat9;
          let x_1003 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1001.x, x_1001.y, x_1001.z), vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
          let x_1006 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1006);
          let x_1008 : f32 = u_xlat37;
          let x_1010 : vec4<f32> = u_xlat9;
          let x_1012 : vec3<f32> = (vec3<f32>(x_1008, x_1008, x_1008) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
          let x_1013 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
          let x_1015 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1015.x, x_1015.y, x_1015.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1020 : f32 = u_xlat37;
          u_xlat37 = max(x_1020, 0.000001f);
          let x_1023 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1023);
          let x_1026 : f32 = u_xlat37;
          let x_1028 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1026, x_1026, x_1026) * vec3<f32>(x_1028.z, x_1028.x, x_1028.y));
          let x_1032 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1032);
          let x_1036 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1036, 0.0f, 1.0f);
          let x_1040 : vec3<f32> = u_xlat10;
          let x_1043 : vec4<bool> = (vec4<f32>(x_1040.y, x_1040.z, x_1040.y, x_1040.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1043.x, x_1043.y);
          let x_1047 : bool = u_xlatb27.x;
          if (x_1047) {
            let x_1052 : f32 = u_xlat10.x;
            x_1048 = x_1052;
          } else {
            let x_1055 : f32 = u_xlat10.x;
            x_1048 = -(x_1055);
          }
          let x_1057 : f32 = x_1048;
          u_xlat27.x = x_1057;
          let x_1060 : bool = u_xlatb27.y;
          if (x_1060) {
            let x_1065 : f32 = u_xlat10.x;
            x_1061 = x_1065;
          } else {
            let x_1068 : f32 = u_xlat10.x;
            x_1061 = -(x_1068);
          }
          let x_1070 : f32 = x_1061;
          u_xlat27.y = x_1070;
          let x_1072 : vec4<f32> = u_xlat9;
          let x_1074 : f32 = u_xlat37;
          let x_1077 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1074, x_1074)) + x_1077);
          let x_1079 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1079 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1082 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1082, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1086 : u32 = u_xlatu35;
          let x_1089 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1086)];
          let x_1091 : vec2<f32> = u_xlat27;
          let x_1093 : u32 = u_xlatu35;
          let x_1096 : vec4<f32> = x_752.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1093)];
          let x_1098 : vec2<f32> = ((vec2<f32>(x_1089.x, x_1089.y) * x_1091) + vec2<f32>(x_1096.z, x_1096.w));
          let x_1099 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        }
      }
      let x_1106 : vec4<f32> = u_xlat8;
      let x_1109 : f32 = x_43.x_GlobalMipBias.x;
      let x_1110 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1106.x, x_1106.y), x_1109);
      u_xlat8 = x_1110;
      let x_1112 : bool = u_xlatb5.y;
      if (x_1112) {
        let x_1117 : f32 = u_xlat8.w;
        x_1113 = x_1117;
      } else {
        let x_1120 : f32 = u_xlat8.x;
        x_1113 = x_1120;
      }
      let x_1121 : f32 = x_1113;
      u_xlat37 = x_1121;
      let x_1123 : bool = u_xlatb5.x;
      if (x_1123) {
        let x_1127 : vec4<f32> = u_xlat8;
        x_1124 = vec3<f32>(x_1127.x, x_1127.y, x_1127.z);
      } else {
        let x_1130 : f32 = u_xlat37;
        x_1124 = vec3<f32>(x_1130, x_1130, x_1130);
      }
      let x_1132 : vec3<f32> = x_1124;
      let x_1133 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1139 : vec4<f32> = u_xlat8;
    let x_1141 : u32 = u_xlatu35;
    let x_1144 : vec4<f32> = x_651.x_AdditionalLightsColor[bitcast<i32>(x_1141)];
    let x_1146 : vec3<f32> = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
    let x_1147 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
    let x_1149 : f32 = u_xlat33;
    let x_1151 : vec4<f32> = u_xlat8;
    let x_1153 : vec3<f32> = (vec3<f32>(x_1149, x_1149, x_1149) * vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
    let x_1154 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
    let x_1156 : f32 = u_xlat36;
    let x_1158 : vec4<f32> = u_xlat8;
    let x_1160 : vec3<f32> = (vec3<f32>(x_1156, x_1156, x_1156) * vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
    let x_1161 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
    let x_1163 : vec3<f32> = u_xlat2;
    let x_1164 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1163, x_1164);
    let x_1166 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1166, 0.0f, 1.0f);
    let x_1168 : f32 = u_xlat35;
    let x_1170 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1168, x_1168, x_1168) * vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
    let x_1173 : vec3<f32> = u_xlat7;
    let x_1174 : vec4<f32> = u_xlat1;
    let x_1177 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1173 * vec3<f32>(x_1174.y, x_1174.z, x_1174.w)) + x_1177);

    continuing {
      let x_1179 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1179 + bitcast<u32>(1i));
    }
  }
  let x_1181 : vec4<f32> = u_xlat3;
  let x_1183 : vec4<f32> = u_xlat1;
  let x_1186 : vec4<f32> = u_xlat4;
  let x_1188 : vec3<f32> = ((vec3<f32>(x_1181.x, x_1181.y, x_1181.z) * vec3<f32>(x_1183.y, x_1183.z, x_1183.w)) + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1193 : vec3<f32> = u_xlat6;
  let x_1194 : vec4<f32> = u_xlat1;
  let x_1196 : vec3<f32> = (x_1193 + vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1197 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
  let x_1200 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1200 == 1.0f);
  let x_1202 : bool = u_xlatb11;
  let x_1203 : bool = u_xlatb22;
  u_xlatb11 = (x_1202 | x_1203);
  let x_1205 : bool = u_xlatb11;
  if (x_1205) {
    let x_1210 : f32 = u_xlat0.x;
    x_1206 = x_1210;
  } else {
    x_1206 = 1.0f;
  }
  let x_1212 : f32 = x_1206;
  SV_Target0.w = x_1212;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

