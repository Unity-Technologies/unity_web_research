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
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_356 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1772 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_130 : f32;
  var u_xlatb18 : bool;
  var u_xlatb54 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb1 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb56 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat56 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb57 : bool;
  var x_1610 : f32;
  var u_xlatu18 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati56 : i32;
  var u_xlat58 : f32;
  var x_1914 : f32;
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
  u_xlat18.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat54;
  let x_104 : f32 = u_xlat36;
  u_xlat36 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat36;
  u_xlat36 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat18.x;
  let x_112 : f32 = u_xlat36;
  u_xlat18.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat18.x;
  u_xlat18.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb36;
  if (x_129) {
    let x_134 : f32 = u_xlat18.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat18.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat18.x;
  u_xlatb18 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb18;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_43.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat18;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat18.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb54 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb54;
  if (x_189) {
    let x_194 : f32 = u_xlat18.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat18.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat18.x = x_201;
  let x_204 : f32 = u_xlat18.x;
  let x_207 : f32 = x_185.unity_LODFade.x;
  u_xlat18.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat18.x;
  u_xlatb18 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb18;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat18.x;
  u_xlat18.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat18;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_242 : vec2<f32> = vs_TEXCOORD7;
  let x_244 : f32 = x_43.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_242, x_244);
  u_xlat3 = x_245;
  let x_251 : vec2<f32> = vs_TEXCOORD7;
  let x_253 : f32 = x_43.x_GlobalMipBias.x;
  let x_254 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_251, x_253);
  let x_255 : vec3<f32> = vec3<f32>(x_254.x, x_254.y, x_254.z);
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat3;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec3<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(x_265, vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_271 : f32 = u_xlat18.x;
  u_xlat18.x = (x_271 + 0.5f);
  let x_274 : vec3<f32> = u_xlat18;
  let x_276 : vec4<f32> = u_xlat4;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.x, x_274.x) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : f32 = u_xlat3.w;
  u_xlat18.x = max(x_282, 0.0001f);
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = u_xlat18;
  let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) / vec3<f32>(x_287.x, x_287.x, x_287.x));
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_294 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_295 : vec2<f32> = vec2<f32>(x_294.x, x_294.y);
  let x_299 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_295.x, x_295.y));
  let x_300 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_299.x, x_300.y, x_299.y);
  let x_302 : vec3<f32> = u_xlat18;
  let x_304 : vec4<f32> = hlslcc_FragCoord;
  let x_306 : vec2<f32> = (vec2<f32>(x_302.x, x_302.z) * vec2<f32>(x_304.x, x_304.y));
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_306.x, x_306.y, x_307.z, x_307.w);
  let x_311 : f32 = u_xlat4.y;
  let x_314 : f32 = x_43.x_ScaleBiasRt.x;
  let x_317 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_311 * x_314) + x_317);
  let x_321 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_321) + 1.0f);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : f32 = x_43.x_GlobalMipBias.x;
  let x_334 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_330.x, x_330.z), x_333);
  u_xlat18.x = x_334.x;
  let x_338 : f32 = u_xlat18.x;
  u_xlat54 = (x_338 + -1.0f);
  let x_343 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_344 : f32 = u_xlat54;
  u_xlat54 = ((x_343 * x_344) + 1.0f);
  let x_348 : f32 = u_xlat18.x;
  u_xlat18.x = min(x_348, 1.0f);
  let x_358 : f32 = x_356.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_358);
  let x_360 : bool = u_xlatb1;
  if (x_360) {
    let x_364 : f32 = x_356.x_MainLightShadowParams.y;
    u_xlatb1 = (x_364 == 1.0f);
    let x_366 : bool = u_xlatb1;
    if (x_366) {
      let x_370 : vec4<f32> = vs_TEXCOORD6;
      let x_374 : vec4<f32> = x_356.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_370.x, x_370.y, x_370.x, x_370.y) + x_374);
      let x_377 : vec4<f32> = u_xlat4;
      let x_378 : vec2<f32> = vec2<f32>(x_377.x, x_377.y);
      let x_380 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_378.x, x_378.y, x_380);
      let x_393 : vec3<f32> = txVec0;
      let x_395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_393.xy, x_393.z);
      u_xlat5.x = x_395;
      let x_398 : vec4<f32> = u_xlat4;
      let x_399 : vec2<f32> = vec2<f32>(x_398.z, x_398.w);
      let x_401 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_399.x, x_399.y, x_401);
      let x_408 : vec3<f32> = txVec1;
      let x_410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_408.xy, x_408.z);
      u_xlat5.y = x_410;
      let x_412 : vec4<f32> = vs_TEXCOORD6;
      let x_416 : vec4<f32> = x_356.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_412.x, x_412.y, x_412.x, x_412.y) + x_416);
      let x_419 : vec4<f32> = u_xlat4;
      let x_420 : vec2<f32> = vec2<f32>(x_419.x, x_419.y);
      let x_422 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_420.x, x_420.y, x_422);
      let x_429 : vec3<f32> = txVec2;
      let x_431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_429.xy, x_429.z);
      u_xlat5.z = x_431;
      let x_434 : vec4<f32> = u_xlat4;
      let x_435 : vec2<f32> = vec2<f32>(x_434.z, x_434.w);
      let x_437 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_435.x, x_435.y, x_437);
      let x_444 : vec3<f32> = txVec3;
      let x_446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_444.xy, x_444.z);
      u_xlat5.w = x_446;
      let x_448 : vec4<f32> = u_xlat5;
      u_xlat1.x = dot(x_448, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_456 : f32 = x_356.x_MainLightShadowParams.y;
      u_xlatb56 = (x_456 == 2.0f);
      let x_459 : bool = u_xlatb56;
      if (x_459) {
        let x_462 : vec4<f32> = vs_TEXCOORD6;
        let x_465 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_469 : vec2<f32> = ((vec2<f32>(x_462.x, x_462.y) * vec2<f32>(x_465.z, x_465.w)) + vec2<f32>(0.5f, 0.5f));
        let x_470 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat4;
        let x_474 : vec2<f32> = floor(vec2<f32>(x_472.x, x_472.y));
        let x_475 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
        let x_479 : vec4<f32> = vs_TEXCOORD6;
        let x_482 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_485 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_479.x, x_479.y) * vec2<f32>(x_482.z, x_482.w)) + -(vec2<f32>(x_485.x, x_485.y)));
        let x_489 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_489.x, x_489.x, x_489.y, x_489.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_494 : vec4<f32> = u_xlat5;
        let x_496 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_494.x, x_494.x, x_494.z, x_494.z) * vec4<f32>(x_496.x, x_496.x, x_496.z, x_496.z));
        let x_499 : vec4<f32> = u_xlat6;
        let x_503 : vec2<f32> = (vec2<f32>(x_499.y, x_499.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_504 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_503.x, x_504.y, x_503.y, x_504.w);
        let x_506 : vec4<f32> = u_xlat6;
        let x_509 : vec2<f32> = u_xlat40;
        let x_511 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.z) * vec2<f32>(0.5f, 0.5f)) + -(x_509));
        let x_512 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_515 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_515) + vec2<f32>(1.0f, 1.0f));
        let x_519 : vec2<f32> = u_xlat40;
        let x_521 : vec2<f32> = min(x_519, vec2<f32>(0.0f, 0.0f));
        let x_522 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat7;
        let x_527 : vec4<f32> = u_xlat7;
        let x_530 : vec2<f32> = u_xlat42;
        let x_531 : vec2<f32> = ((-(vec2<f32>(x_524.x, x_524.y)) * vec2<f32>(x_527.x, x_527.y)) + x_530);
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
        let x_534 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_534, vec2<f32>(0.0f, 0.0f));
        let x_536 : vec2<f32> = u_xlat40;
        let x_538 : vec2<f32> = u_xlat40;
        let x_540 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_536) * x_538) + vec2<f32>(x_540.y, x_540.w));
        let x_543 : vec4<f32> = u_xlat7;
        let x_545 : vec2<f32> = (vec2<f32>(x_543.x, x_543.y) + vec2<f32>(1.0f, 1.0f));
        let x_546 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_548 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_548 + vec2<f32>(1.0f, 1.0f));
        let x_551 : vec4<f32> = u_xlat6;
        let x_555 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_556 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
        let x_558 : vec2<f32> = u_xlat42;
        let x_559 : vec2<f32> = (x_558 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_560 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat7;
        let x_564 : vec2<f32> = (vec2<f32>(x_562.x, x_562.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_568 : vec2<f32> = u_xlat40;
        let x_569 : vec2<f32> = (x_568 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_570 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_572.y, x_572.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_576 : f32 = u_xlat7.x;
        u_xlat8.z = x_576;
        let x_579 : f32 = u_xlat40.x;
        u_xlat8.w = x_579;
        let x_582 : f32 = u_xlat9.x;
        u_xlat6.z = x_582;
        let x_585 : f32 = u_xlat5.x;
        u_xlat6.w = x_585;
        let x_588 : vec4<f32> = u_xlat6;
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_588.z, x_588.w, x_588.x, x_588.z) + vec4<f32>(x_590.z, x_590.w, x_590.x, x_590.z));
        let x_594 : f32 = u_xlat8.y;
        u_xlat7.z = x_594;
        let x_597 : f32 = u_xlat40.y;
        u_xlat7.w = x_597;
        let x_600 : f32 = u_xlat6.y;
        u_xlat9.z = x_600;
        let x_603 : f32 = u_xlat5.z;
        u_xlat9.w = x_603;
        let x_605 : vec4<f32> = u_xlat7;
        let x_607 : vec4<f32> = u_xlat9;
        let x_609 : vec3<f32> = (vec3<f32>(x_605.z, x_605.y, x_605.w) + vec3<f32>(x_607.z, x_607.y, x_607.w));
        let x_610 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat6;
        let x_614 : vec4<f32> = u_xlat10;
        let x_616 : vec3<f32> = (vec3<f32>(x_612.x, x_612.z, x_612.w) / vec3<f32>(x_614.z, x_614.w, x_614.y));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat6;
        let x_624 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_625 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat9;
        let x_629 : vec4<f32> = u_xlat5;
        let x_631 : vec3<f32> = (vec3<f32>(x_627.z, x_627.y, x_627.w) / vec3<f32>(x_629.x, x_629.y, x_629.z));
        let x_632 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
        let x_634 : vec4<f32> = u_xlat7;
        let x_636 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_637 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat6;
        let x_642 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_644 : vec3<f32> = (vec3<f32>(x_639.y, x_639.x, x_639.z) * vec3<f32>(x_642.x, x_642.x, x_642.x));
        let x_645 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat7;
        let x_650 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_652 : vec3<f32> = (vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(x_650.y, x_650.y, x_650.y));
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
        let x_656 : f32 = u_xlat7.x;
        u_xlat6.w = x_656;
        let x_658 : vec4<f32> = u_xlat4;
        let x_661 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_664 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_658.x, x_658.y, x_658.x, x_658.y) * vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y)) + vec4<f32>(x_664.y, x_664.w, x_664.x, x_664.w));
        let x_667 : vec4<f32> = u_xlat4;
        let x_670 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_673 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_667.x, x_667.y) * vec2<f32>(x_670.x, x_670.y)) + vec2<f32>(x_673.z, x_673.w));
        let x_677 : f32 = u_xlat6.y;
        u_xlat7.w = x_677;
        let x_679 : vec4<f32> = u_xlat7;
        let x_680 : vec2<f32> = vec2<f32>(x_679.y, x_679.z);
        let x_681 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_681.x, x_680.x, x_681.z, x_680.y);
        let x_683 : vec4<f32> = u_xlat4;
        let x_686 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_689 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y) * vec4<f32>(x_686.x, x_686.y, x_686.x, x_686.y)) + vec4<f32>(x_689.x, x_689.y, x_689.z, x_689.y));
        let x_692 : vec4<f32> = u_xlat4;
        let x_695 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_698 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_692.x, x_692.y, x_692.x, x_692.y) * vec4<f32>(x_695.x, x_695.y, x_695.x, x_695.y)) + vec4<f32>(x_698.w, x_698.y, x_698.w, x_698.z));
        let x_701 : vec4<f32> = u_xlat4;
        let x_704 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_707 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_701.x, x_701.y, x_701.x, x_701.y) * vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y)) + vec4<f32>(x_707.x, x_707.w, x_707.z, x_707.w));
        let x_711 : vec4<f32> = u_xlat5;
        let x_713 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_711.x, x_711.x, x_711.x, x_711.y) * vec4<f32>(x_713.z, x_713.w, x_713.y, x_713.z));
        let x_717 : vec4<f32> = u_xlat5;
        let x_719 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_717.y, x_717.y, x_717.z, x_717.z) * x_719);
        let x_723 : f32 = u_xlat5.z;
        let x_725 : f32 = u_xlat10.y;
        u_xlat56 = (x_723 * x_725);
        let x_728 : vec4<f32> = u_xlat8;
        let x_729 : vec2<f32> = vec2<f32>(x_728.x, x_728.y);
        let x_731 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_729.x, x_729.y, x_731);
        let x_739 : vec3<f32> = txVec4;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
        u_xlat57 = x_741;
        let x_743 : vec4<f32> = u_xlat8;
        let x_744 : vec2<f32> = vec2<f32>(x_743.z, x_743.w);
        let x_746 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_744.x, x_744.y, x_746);
        let x_753 : vec3<f32> = txVec5;
        let x_755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_753.xy, x_753.z);
        u_xlat4.x = x_755;
        let x_758 : f32 = u_xlat4.x;
        let x_760 : f32 = u_xlat11.y;
        u_xlat4.x = (x_758 * x_760);
        let x_764 : f32 = u_xlat11.x;
        let x_765 : f32 = u_xlat57;
        let x_768 : f32 = u_xlat4.x;
        u_xlat57 = ((x_764 * x_765) + x_768);
        let x_771 : vec2<f32> = u_xlat40;
        let x_773 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_771.x, x_771.y, x_773);
        let x_780 : vec3<f32> = txVec6;
        let x_782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_780.xy, x_780.z);
        u_xlat4.x = x_782;
        let x_785 : f32 = u_xlat11.z;
        let x_787 : f32 = u_xlat4.x;
        let x_789 : f32 = u_xlat57;
        u_xlat57 = ((x_785 * x_787) + x_789);
        let x_792 : vec4<f32> = u_xlat7;
        let x_793 : vec2<f32> = vec2<f32>(x_792.x, x_792.y);
        let x_795 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec7;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_802.xy, x_802.z);
        u_xlat4.x = x_804;
        let x_807 : f32 = u_xlat11.w;
        let x_809 : f32 = u_xlat4.x;
        let x_811 : f32 = u_xlat57;
        u_xlat57 = ((x_807 * x_809) + x_811);
        let x_814 : vec4<f32> = u_xlat9;
        let x_815 : vec2<f32> = vec2<f32>(x_814.x, x_814.y);
        let x_817 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_815.x, x_815.y, x_817);
        let x_824 : vec3<f32> = txVec8;
        let x_826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_824.xy, x_824.z);
        u_xlat4.x = x_826;
        let x_829 : f32 = u_xlat12.x;
        let x_831 : f32 = u_xlat4.x;
        let x_833 : f32 = u_xlat57;
        u_xlat57 = ((x_829 * x_831) + x_833);
        let x_836 : vec4<f32> = u_xlat9;
        let x_837 : vec2<f32> = vec2<f32>(x_836.z, x_836.w);
        let x_839 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_846 : vec3<f32> = txVec9;
        let x_848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_846.xy, x_846.z);
        u_xlat4.x = x_848;
        let x_851 : f32 = u_xlat12.y;
        let x_853 : f32 = u_xlat4.x;
        let x_855 : f32 = u_xlat57;
        u_xlat57 = ((x_851 * x_853) + x_855);
        let x_858 : vec4<f32> = u_xlat7;
        let x_859 : vec2<f32> = vec2<f32>(x_858.z, x_858.w);
        let x_861 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_859.x, x_859.y, x_861);
        let x_868 : vec3<f32> = txVec10;
        let x_870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_868.xy, x_868.z);
        u_xlat4.x = x_870;
        let x_873 : f32 = u_xlat12.z;
        let x_875 : f32 = u_xlat4.x;
        let x_877 : f32 = u_xlat57;
        u_xlat57 = ((x_873 * x_875) + x_877);
        let x_880 : vec4<f32> = u_xlat6;
        let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
        let x_883 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec11;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
        u_xlat4.x = x_892;
        let x_895 : f32 = u_xlat12.w;
        let x_897 : f32 = u_xlat4.x;
        let x_899 : f32 = u_xlat57;
        u_xlat57 = ((x_895 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat6;
        let x_903 : vec2<f32> = vec2<f32>(x_902.z, x_902.w);
        let x_905 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec12;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_912.xy, x_912.z);
        u_xlat4.x = x_914;
        let x_916 : f32 = u_xlat56;
        let x_918 : f32 = u_xlat4.x;
        let x_920 : f32 = u_xlat57;
        u_xlat1.x = ((x_916 * x_918) + x_920);
      } else {
        let x_924 : vec4<f32> = vs_TEXCOORD6;
        let x_927 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_930 : vec2<f32> = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_927.z, x_927.w)) + vec2<f32>(0.5f, 0.5f));
        let x_931 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat4;
        let x_935 : vec2<f32> = floor(vec2<f32>(x_933.x, x_933.y));
        let x_936 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = vs_TEXCOORD6;
        let x_941 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_944 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.z, x_941.w)) + -(vec2<f32>(x_944.x, x_944.y)));
        let x_948 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_948.x, x_948.x, x_948.y, x_948.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_951 : vec4<f32> = u_xlat5;
        let x_953 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_951.x, x_951.x, x_951.z, x_951.z) * vec4<f32>(x_953.x, x_953.x, x_953.z, x_953.z));
        let x_956 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = (vec2<f32>(x_956.y, x_956.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_961.x, x_960.x, x_961.z, x_960.y);
        let x_963 : vec4<f32> = u_xlat6;
        let x_966 : vec2<f32> = u_xlat40;
        let x_968 : vec2<f32> = ((vec2<f32>(x_963.x, x_963.z) * vec2<f32>(0.5f, 0.5f)) + -(x_966));
        let x_969 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_968.x, x_969.y, x_968.y, x_969.w);
        let x_971 : vec2<f32> = u_xlat40;
        let x_973 : vec2<f32> = (-(x_971) + vec2<f32>(1.0f, 1.0f));
        let x_974 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_976, vec2<f32>(0.0f, 0.0f));
        let x_978 : vec2<f32> = u_xlat42;
        let x_980 : vec2<f32> = u_xlat42;
        let x_982 : vec4<f32> = u_xlat6;
        let x_984 : vec2<f32> = ((-(x_978) * x_980) + vec2<f32>(x_982.x, x_982.y));
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_987, vec2<f32>(0.0f, 0.0f));
        let x_990 : vec2<f32> = u_xlat42;
        let x_992 : vec2<f32> = u_xlat42;
        let x_994 : vec4<f32> = u_xlat5;
        let x_996 : vec2<f32> = ((-(x_990) * x_992) + vec2<f32>(x_994.y, x_994.w));
        let x_997 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_996.x, x_997.y, x_996.y);
        let x_999 : vec4<f32> = u_xlat6;
        let x_1002 : vec2<f32> = (vec2<f32>(x_999.x, x_999.y) + vec2<f32>(2.0f, 2.0f));
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1005 : vec3<f32> = u_xlat23;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1005.x, x_1005.z) + vec2<f32>(2.0f, 2.0f));
        let x_1008 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1011 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1011 * 0.081632003f);
        let x_1015 : vec4<f32> = u_xlat5;
        let x_1018 : vec3<f32> = (vec3<f32>(x_1015.z, x_1015.x, x_1015.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1025 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1028 : f32 = u_xlat9.y;
        u_xlat8.x = x_1028;
        let x_1030 : vec2<f32> = u_xlat40;
        let x_1037 : vec2<f32> = ((vec2<f32>(x_1030.x, x_1030.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1038.x, x_1037.x, x_1038.z, x_1037.y);
        let x_1040 : vec2<f32> = u_xlat40;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1048 : f32 = u_xlat5.x;
        u_xlat6.y = x_1048;
        let x_1051 : f32 = u_xlat7.y;
        u_xlat6.w = x_1051;
        let x_1053 : vec4<f32> = u_xlat6;
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1053 + x_1054);
        let x_1056 : vec2<f32> = u_xlat40;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1056.y, x_1056.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1060.x, x_1059.x, x_1060.z, x_1059.y);
        let x_1062 : vec2<f32> = u_xlat40;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1062.y, x_1062.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1066 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1065.x, x_1066.y, x_1065.y, x_1066.w);
        let x_1069 : f32 = u_xlat5.y;
        u_xlat7.y = x_1069;
        let x_1071 : vec4<f32> = u_xlat7;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1071 + x_1072);
        let x_1074 : vec4<f32> = u_xlat6;
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1074 / x_1075);
        let x_1077 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1077 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1084 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1083 / x_1084);
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1086 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1088 : vec4<f32> = u_xlat6;
        let x_1091 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1088.w, x_1088.x, x_1088.y, x_1088.z) * vec4<f32>(x_1091.x, x_1091.x, x_1091.x, x_1091.x));
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1097 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1094.x, x_1094.w, x_1094.y, x_1094.z) * vec4<f32>(x_1097.y, x_1097.y, x_1097.y, x_1097.y));
        let x_1100 : vec4<f32> = u_xlat6;
        let x_1101 : vec3<f32> = vec3<f32>(x_1100.y, x_1100.z, x_1100.w);
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1101.x, x_1102.y, x_1101.y, x_1101.z);
        let x_1105 : f32 = u_xlat7.x;
        u_xlat9.y = x_1105;
        let x_1107 : vec4<f32> = u_xlat4;
        let x_1110 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1113.y));
        let x_1116 : vec4<f32> = u_xlat4;
        let x_1119 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.w, x_1122.y));
        let x_1126 : f32 = u_xlat9.y;
        u_xlat6.y = x_1126;
        let x_1129 : f32 = u_xlat7.z;
        u_xlat9.y = x_1129;
        let x_1131 : vec4<f32> = u_xlat4;
        let x_1134 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y) * vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y)) + vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat4;
        let x_1143 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(x_1146.w, x_1146.y));
        let x_1149 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : f32 = u_xlat9.y;
        u_xlat6.z = x_1152;
        let x_1155 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.z));
        let x_1165 : f32 = u_xlat7.w;
        u_xlat9.y = x_1165;
        let x_1168 : vec4<f32> = u_xlat4;
        let x_1171 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y) * vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y)) + vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1174.y));
        let x_1178 : vec4<f32> = u_xlat4;
        let x_1181 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1188 : f32 = u_xlat9.y;
        u_xlat6.w = x_1188;
        let x_1191 : vec4<f32> = u_xlat4;
        let x_1194 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.x, x_1197.w));
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1201 : vec3<f32> = vec3<f32>(x_1200.x, x_1200.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1201.x, x_1202.y, x_1201.y, x_1201.z);
        let x_1204 : vec4<f32> = u_xlat4;
        let x_1207 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y) * vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y)) + vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1210.y));
        let x_1214 : vec4<f32> = u_xlat4;
        let x_1217 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1224 : f32 = u_xlat6.x;
        u_xlat7.x = x_1224;
        let x_1226 : vec4<f32> = u_xlat4;
        let x_1229 : vec4<f32> = x_356.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.x, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1240 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1238.x, x_1238.x, x_1238.x, x_1238.x) * x_1240);
        let x_1243 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1243.y, x_1243.y, x_1243.y, x_1243.y) * x_1245);
        let x_1248 : vec4<f32> = u_xlat5;
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1248.z, x_1248.z, x_1248.z, x_1248.z) * x_1250);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1252.w, x_1252.w, x_1252.w, x_1252.w) * x_1254);
        let x_1257 : vec4<f32> = u_xlat10;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.x, x_1257.y);
        let x_1260 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec13;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1267.xy, x_1267.z);
        u_xlat56 = x_1269;
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.z, x_1271.w);
        let x_1274 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec14;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1281.xy, x_1281.z);
        u_xlat57 = x_1283;
        let x_1284 : f32 = u_xlat57;
        let x_1286 : f32 = u_xlat15.y;
        u_xlat57 = (x_1284 * x_1286);
        let x_1289 : f32 = u_xlat15.x;
        let x_1290 : f32 = u_xlat56;
        let x_1292 : f32 = u_xlat57;
        u_xlat56 = ((x_1289 * x_1290) + x_1292);
        let x_1295 : vec2<f32> = u_xlat40;
        let x_1297 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec15;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1304.xy, x_1304.z);
        u_xlat57 = x_1306;
        let x_1308 : f32 = u_xlat15.z;
        let x_1309 : f32 = u_xlat57;
        let x_1311 : f32 = u_xlat56;
        u_xlat56 = ((x_1308 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat13;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec16;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
        u_xlat57 = x_1326;
        let x_1328 : f32 = u_xlat15.w;
        let x_1329 : f32 = u_xlat57;
        let x_1331 : f32 = u_xlat56;
        u_xlat56 = ((x_1328 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec17;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1344.xy, x_1344.z);
        u_xlat57 = x_1346;
        let x_1348 : f32 = u_xlat16.x;
        let x_1349 : f32 = u_xlat57;
        let x_1351 : f32 = u_xlat56;
        u_xlat56 = ((x_1348 * x_1349) + x_1351);
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.z, x_1354.w);
        let x_1357 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec18;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1364.xy, x_1364.z);
        u_xlat57 = x_1366;
        let x_1368 : f32 = u_xlat16.y;
        let x_1369 : f32 = u_xlat57;
        let x_1371 : f32 = u_xlat56;
        u_xlat56 = ((x_1368 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec19;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat57 = x_1386;
        let x_1388 : f32 = u_xlat16.z;
        let x_1389 : f32 = u_xlat57;
        let x_1391 : f32 = u_xlat56;
        u_xlat56 = ((x_1388 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat13;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.z, x_1394.w);
        let x_1397 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec20;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1404.xy, x_1404.z);
        u_xlat57 = x_1406;
        let x_1408 : f32 = u_xlat16.w;
        let x_1409 : f32 = u_xlat57;
        let x_1411 : f32 = u_xlat56;
        u_xlat56 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat14;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.x, x_1414.y);
        let x_1417 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec21;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1424.xy, x_1424.z);
        u_xlat57 = x_1426;
        let x_1428 : f32 = u_xlat17.x;
        let x_1429 : f32 = u_xlat57;
        let x_1431 : f32 = u_xlat56;
        u_xlat56 = ((x_1428 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat14;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec22;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat57 = x_1446;
        let x_1448 : f32 = u_xlat17.y;
        let x_1449 : f32 = u_xlat57;
        let x_1451 : f32 = u_xlat56;
        u_xlat56 = ((x_1448 * x_1449) + x_1451);
        let x_1454 : vec2<f32> = u_xlat24;
        let x_1456 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec23;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1463.xy, x_1463.z);
        u_xlat57 = x_1465;
        let x_1467 : f32 = u_xlat17.z;
        let x_1468 : f32 = u_xlat57;
        let x_1470 : f32 = u_xlat56;
        u_xlat56 = ((x_1467 * x_1468) + x_1470);
        let x_1473 : vec2<f32> = u_xlat48;
        let x_1475 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec24;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat57 = x_1484;
        let x_1486 : f32 = u_xlat17.w;
        let x_1487 : f32 = u_xlat57;
        let x_1489 : f32 = u_xlat56;
        u_xlat56 = ((x_1486 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat9;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.x, x_1492.y);
        let x_1495 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec25;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1502.xy, x_1502.z);
        u_xlat57 = x_1504;
        let x_1506 : f32 = u_xlat5.x;
        let x_1507 : f32 = u_xlat57;
        let x_1509 : f32 = u_xlat56;
        u_xlat56 = ((x_1506 * x_1507) + x_1509);
        let x_1512 : vec4<f32> = u_xlat9;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.z, x_1512.w);
        let x_1515 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec26;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat57 = x_1524;
        let x_1526 : f32 = u_xlat5.y;
        let x_1527 : f32 = u_xlat57;
        let x_1529 : f32 = u_xlat56;
        u_xlat56 = ((x_1526 * x_1527) + x_1529);
        let x_1532 : vec2<f32> = u_xlat43;
        let x_1534 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec27;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1541.xy, x_1541.z);
        u_xlat57 = x_1543;
        let x_1545 : f32 = u_xlat5.z;
        let x_1546 : f32 = u_xlat57;
        let x_1548 : f32 = u_xlat56;
        u_xlat56 = ((x_1545 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat4;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec28;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1561.xy, x_1561.z);
        u_xlat57 = x_1563;
        let x_1565 : f32 = u_xlat5.w;
        let x_1566 : f32 = u_xlat57;
        let x_1568 : f32 = u_xlat56;
        u_xlat1.x = ((x_1565 * x_1566) + x_1568);
      }
    }
  } else {
    let x_1573 : vec4<f32> = vs_TEXCOORD6;
    let x_1574 : vec2<f32> = vec2<f32>(x_1573.x, x_1573.y);
    let x_1576 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
    let x_1583 : vec3<f32> = txVec29;
    let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1583.xy, x_1583.z);
    u_xlat1.x = x_1585;
  }
  let x_1588 : f32 = x_356.x_MainLightShadowParams.x;
  u_xlat56 = (-(x_1588) + 1.0f);
  let x_1592 : f32 = u_xlat1.x;
  let x_1594 : f32 = x_356.x_MainLightShadowParams.x;
  let x_1596 : f32 = u_xlat56;
  u_xlat1.x = ((x_1592 * x_1594) + x_1596);
  let x_1600 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (0.0f >= x_1600);
  let x_1604 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1604 >= 1.0f);
  let x_1606 : bool = u_xlatb56;
  let x_1607 : bool = u_xlatb57;
  u_xlatb56 = (x_1606 | x_1607);
  let x_1609 : bool = u_xlatb56;
  if (x_1609) {
    x_1610 = 1.0f;
  } else {
    let x_1615 : f32 = u_xlat1.x;
    x_1610 = x_1615;
  }
  let x_1616 : f32 = x_1610;
  u_xlat1.x = x_1616;
  let x_1619 : vec3<f32> = vs_TEXCOORD1;
  let x_1622 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1624 : vec3<f32> = (x_1619 + -(x_1622));
  let x_1625 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
  let x_1627 : vec4<f32> = u_xlat4;
  let x_1629 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(vec3<f32>(x_1627.x, x_1627.y, x_1627.z), vec3<f32>(x_1629.x, x_1629.y, x_1629.z));
  let x_1632 : f32 = u_xlat56;
  let x_1634 : f32 = x_356.x_MainLightShadowParams.z;
  let x_1637 : f32 = x_356.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1632 * x_1634) + x_1637);
  let x_1639 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1639, 0.0f, 1.0f);
  let x_1642 : f32 = u_xlat1.x;
  u_xlat57 = (-(x_1642) + 1.0f);
  let x_1645 : f32 = u_xlat56;
  let x_1646 : f32 = u_xlat57;
  let x_1649 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1645 * x_1646) + x_1649);
  let x_1652 : f32 = u_xlat54;
  let x_1655 : vec4<f32> = x_43.x_MainLightColor;
  let x_1657 : vec3<f32> = (vec3<f32>(x_1652, x_1652, x_1652) * vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1658 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
  let x_1660 : vec3<f32> = u_xlat18;
  let x_1662 : vec4<f32> = u_xlat3;
  let x_1664 : vec3<f32> = (vec3<f32>(x_1660.x, x_1660.x, x_1660.x) * vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
  let x_1665 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
  let x_1668 : f32 = u_xlat1.x;
  let x_1670 : f32 = x_185.unity_LightData.z;
  u_xlat18.x = (x_1668 * x_1670);
  let x_1673 : vec3<f32> = u_xlat18;
  let x_1675 : vec4<f32> = u_xlat4;
  let x_1677 : vec3<f32> = (vec3<f32>(x_1673.x, x_1673.x, x_1673.x) * vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
  let x_1678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  let x_1680 : vec3<f32> = u_xlat2;
  let x_1683 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat18.x = dot(x_1680, vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1688 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1688, 0.0f, 1.0f);
  let x_1691 : vec3<f32> = u_xlat18;
  let x_1693 : vec4<f32> = u_xlat4;
  let x_1695 : vec3<f32> = (vec3<f32>(x_1691.x, x_1691.x, x_1691.x) * vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
  let x_1696 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1698 : vec4<f32> = u_xlat1;
  let x_1700 : vec4<f32> = u_xlat4;
  let x_1702 : vec3<f32> = (vec3<f32>(x_1698.y, x_1698.z, x_1698.w) * vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
  let x_1706 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1708 : f32 = x_185.unity_LightData.y;
  u_xlat18.x = min(x_1706, x_1708);
  let x_1714 : f32 = u_xlat18.x;
  u_xlatu18 = bitcast<u32>(i32(x_1714));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1726 : u32 = u_xlatu_loop_1;
    let x_1727 : u32 = u_xlatu18;
    if ((x_1726 < x_1727)) {
    } else {
      break;
    }
    let x_1730 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1730 >> 2u);
    let x_1734 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1734 & 3u));
    let x_1737 : u32 = u_xlatu56;
    let x_1740 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_1737)];
    let x_1750 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1755 : vec4<u32> = indexable[x_1750];
    u_xlat56 = dot(x_1740, bitcast<vec4<f32>>(x_1755));
    let x_1759 : f32 = u_xlat56;
    u_xlati56 = i32(x_1759);
    let x_1761 : vec3<f32> = vs_TEXCOORD1;
    let x_1773 : i32 = u_xlati56;
    let x_1775 : vec4<f32> = x_1772.x_AdditionalLightsPosition[x_1773];
    let x_1778 : i32 = u_xlati56;
    let x_1780 : vec4<f32> = x_1772.x_AdditionalLightsPosition[x_1778];
    let x_1782 : vec3<f32> = ((-(x_1761) * vec3<f32>(x_1775.w, x_1775.w, x_1775.w)) + vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
    let x_1783 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
    let x_1785 : vec4<f32> = u_xlat6;
    let x_1787 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1785.x, x_1785.y, x_1785.z), vec3<f32>(x_1787.x, x_1787.y, x_1787.z));
    let x_1790 : f32 = u_xlat57;
    u_xlat57 = max(x_1790, 6.10351562e-05f);
    let x_1794 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1794);
    let x_1796 : f32 = u_xlat58;
    let x_1798 : vec4<f32> = u_xlat6;
    let x_1800 : vec3<f32> = (vec3<f32>(x_1796, x_1796, x_1796) * vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
    let x_1801 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
    let x_1803 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1803);
    let x_1805 : f32 = u_xlat57;
    let x_1806 : i32 = u_xlati56;
    let x_1808 : f32 = x_1772.x_AdditionalLightsAttenuation[x_1806].x;
    u_xlat57 = (x_1805 * x_1808);
    let x_1810 : f32 = u_xlat57;
    let x_1812 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1810) * x_1812) + 1.0f);
    let x_1815 : f32 = u_xlat57;
    u_xlat57 = max(x_1815, 0.0f);
    let x_1817 : f32 = u_xlat57;
    let x_1818 : f32 = u_xlat57;
    u_xlat57 = (x_1817 * x_1818);
    let x_1820 : f32 = u_xlat57;
    let x_1821 : f32 = u_xlat58;
    u_xlat57 = (x_1820 * x_1821);
    let x_1823 : i32 = u_xlati56;
    let x_1825 : vec4<f32> = x_1772.x_AdditionalLightsSpotDir[x_1823];
    let x_1827 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1825.x, x_1825.y, x_1825.z), vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
    let x_1830 : f32 = u_xlat58;
    let x_1831 : i32 = u_xlati56;
    let x_1833 : f32 = x_1772.x_AdditionalLightsAttenuation[x_1831].z;
    let x_1835 : i32 = u_xlati56;
    let x_1837 : f32 = x_1772.x_AdditionalLightsAttenuation[x_1835].w;
    u_xlat58 = ((x_1830 * x_1833) + x_1837);
    let x_1839 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1839, 0.0f, 1.0f);
    let x_1841 : f32 = u_xlat58;
    let x_1842 : f32 = u_xlat58;
    u_xlat58 = (x_1841 * x_1842);
    let x_1844 : f32 = u_xlat57;
    let x_1845 : f32 = u_xlat58;
    u_xlat57 = (x_1844 * x_1845);
    let x_1847 : f32 = u_xlat54;
    let x_1849 : i32 = u_xlati56;
    let x_1851 : vec4<f32> = x_1772.x_AdditionalLightsColor[x_1849];
    let x_1853 : vec3<f32> = (vec3<f32>(x_1847, x_1847, x_1847) * vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
    let x_1854 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
    let x_1856 : f32 = u_xlat57;
    let x_1858 : vec4<f32> = u_xlat7;
    let x_1860 : vec3<f32> = (vec3<f32>(x_1856, x_1856, x_1856) * vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
    let x_1861 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
    let x_1863 : vec3<f32> = u_xlat2;
    let x_1864 : vec4<f32> = u_xlat6;
    u_xlat56 = dot(x_1863, vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
    let x_1867 : f32 = u_xlat56;
    u_xlat56 = clamp(x_1867, 0.0f, 1.0f);
    let x_1869 : f32 = u_xlat56;
    let x_1871 : vec4<f32> = u_xlat7;
    let x_1873 : vec3<f32> = (vec3<f32>(x_1869, x_1869, x_1869) * vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
    let x_1874 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
    let x_1876 : vec4<f32> = u_xlat6;
    let x_1878 : vec4<f32> = u_xlat1;
    let x_1881 : vec4<f32> = u_xlat5;
    let x_1883 : vec3<f32> = ((vec3<f32>(x_1876.x, x_1876.y, x_1876.z) * vec3<f32>(x_1878.y, x_1878.z, x_1878.w)) + vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
    let x_1884 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);

    continuing {
      let x_1886 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1886 + bitcast<u32>(1i));
    }
  }
  let x_1888 : vec4<f32> = u_xlat3;
  let x_1890 : vec4<f32> = u_xlat1;
  let x_1893 : vec4<f32> = u_xlat4;
  let x_1895 : vec3<f32> = ((vec3<f32>(x_1888.x, x_1888.y, x_1888.z) * vec3<f32>(x_1890.y, x_1890.z, x_1890.w)) + vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1900 : vec4<f32> = u_xlat5;
  let x_1902 : vec4<f32> = u_xlat1;
  let x_1904 : vec3<f32> = (vec3<f32>(x_1900.x, x_1900.y, x_1900.z) + vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
  let x_1905 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1908 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_1908 == 1.0f);
  let x_1910 : bool = u_xlatb18;
  let x_1911 : bool = u_xlatb36;
  u_xlatb18 = (x_1910 | x_1911);
  let x_1913 : bool = u_xlatb18;
  if (x_1913) {
    let x_1918 : f32 = u_xlat0.x;
    x_1914 = x_1918;
  } else {
    x_1914 = 1.0f;
  }
  let x_1920 : f32 = x_1914;
  SV_Target0.w = x_1920;
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

