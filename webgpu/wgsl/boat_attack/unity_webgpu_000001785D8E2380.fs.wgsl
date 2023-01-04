struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_433 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_563 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_808 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec3<f32>;
  var x_188 : f32;
  var x_201 : f32;
  var x_212 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat34 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu23 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati23 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1014 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat23 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat23;
  let x_107 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat33;
  u_xlat33 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat33;
  u_xlat33 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_114);
  let x_116 : f32 = u_xlat33;
  u_xlat33 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat23;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat23 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat14.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_169) + x_174);
  let x_177 : vec3<f32> = u_xlat4;
  let x_178 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_177, x_178);
  let x_180 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_180);
  let x_182 : f32 = u_xlat25;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_182, x_182, x_182) * x_184);
  let x_187 : bool = u_xlatb14;
  if (x_187) {
    let x_192 : f32 = u_xlat4.x;
    x_188 = x_192;
  } else {
    let x_197 : f32 = x_44.unity_MatrixV[0i].z;
    x_188 = x_197;
  }
  let x_198 : f32 = x_188;
  u_xlat5.x = x_198;
  let x_200 : bool = u_xlatb14;
  if (x_200) {
    let x_205 : f32 = u_xlat4.y;
    x_201 = x_205;
  } else {
    let x_208 : f32 = x_44.unity_MatrixV[1i].z;
    x_201 = x_208;
  }
  let x_209 : f32 = x_201;
  u_xlat5.y = x_209;
  let x_211 : bool = u_xlatb14;
  if (x_211) {
    let x_216 : f32 = u_xlat4.z;
    x_212 = x_216;
  } else {
    let x_219 : f32 = x_44.unity_MatrixV[2i].z;
    x_212 = x_219;
  }
  let x_220 : f32 = x_212;
  u_xlat5.z = x_220;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  let x_226 : vec4<f32> = vs_TEXCOORD3;
  u_xlat14 = (vec3<f32>(x_223.z, x_223.x, x_223.y) * vec3<f32>(x_226.y, x_226.z, x_226.x));
  let x_229 : vec3<f32> = vs_TEXCOORD2;
  let x_231 : vec4<f32> = vs_TEXCOORD3;
  let x_234 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_229.y, x_229.z, x_229.x) * vec3<f32>(x_231.z, x_231.x, x_231.y)) + -(x_234));
  let x_237 : vec3<f32> = u_xlat14;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  u_xlat14 = (x_237 * vec3<f32>(x_238.w, x_238.w, x_238.w));
  let x_241 : vec2<f32> = u_xlat23;
  let x_243 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_241.y, x_241.y, x_241.y) * x_243);
  let x_245 : vec2<f32> = u_xlat23;
  let x_247 : vec4<f32> = vs_TEXCOORD3;
  let x_250 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_245.x, x_245.x, x_245.x) * vec3<f32>(x_247.x, x_247.y, x_247.z)) + x_250);
  let x_252 : f32 = u_xlat33;
  let x_254 : vec3<f32> = vs_TEXCOORD2;
  let x_256 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_252, x_252, x_252) * x_254) + x_256);
  let x_258 : vec3<f32> = u_xlat14;
  let x_259 : vec3<f32> = u_xlat14;
  u_xlat33 = dot(x_258, x_259);
  let x_261 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_261);
  let x_263 : f32 = u_xlat33;
  let x_265 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_263, x_263, x_263) * x_265);
  let x_273 : vec2<f32> = vs_TEXCOORD8;
  let x_275 : f32 = x_44.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_273, x_275);
  u_xlat4 = vec3<f32>(x_276.x, x_276.y, x_276.z);
  let x_280 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_281 : vec2<f32> = vec2<f32>(x_280.x, x_280.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_281.x, x_281.y));
  let x_287 : vec2<f32> = u_xlat23;
  let x_288 : vec4<f32> = hlslcc_FragCoord;
  let x_290 : vec2<f32> = (x_287 * vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_290.x, x_290.y, x_291.z);
  let x_294 : f32 = u_xlat6.y;
  let x_296 : f32 = x_44.x_ScaleBiasRt.x;
  let x_299 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_294 * x_296) + x_299);
  let x_301 : f32 = u_xlat33;
  u_xlat6.z = (-(x_301) + 1.0f);
  let x_306 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_306) * 0.959999979f) + 0.959999979f);
  let x_312 : f32 = u_xlat1.y;
  let x_314 : f32 = x_69.x_Smoothness;
  let x_316 : f32 = u_xlat33;
  u_xlat23.x = ((x_312 * x_314) + -(x_316));
  let x_321 : f32 = u_xlat33;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_321, x_321, x_321) * vec3<f32>(x_323.y, x_323.z, x_323.w));
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_69.x_BaseColor;
  let x_334 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat1.y;
  let x_351 : f32 = x_69.x_Smoothness;
  u_xlat33 = ((-(x_348) * x_351) + 1.0f);
  let x_354 : f32 = u_xlat33;
  let x_355 : f32 = u_xlat33;
  u_xlat1.x = (x_354 * x_355);
  let x_359 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_359, 0.0078125f);
  let x_365 : f32 = u_xlat1.x;
  let x_367 : f32 = u_xlat1.x;
  u_xlat12 = (x_365 * x_367);
  let x_370 : f32 = u_xlat23.x;
  u_xlat23.x = (x_370 + 1.0f);
  let x_374 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_374, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat1.x;
  u_xlat34 = ((x_379 * 4.0f) + 2.0f);
  let x_389 : vec3<f32> = u_xlat6;
  let x_392 : f32 = x_44.x_GlobalMipBias.x;
  let x_393 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_389.x, x_389.z), x_392);
  u_xlat37 = x_393.x;
  let x_396 : f32 = u_xlat37;
  u_xlat38 = (x_396 + -1.0f);
  let x_400 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_401 : f32 = u_xlat38;
  u_xlat38 = ((x_400 * x_401) + 1.0f);
  let x_405 : f32 = u_xlat3.x;
  let x_406 : f32 = u_xlat37;
  u_xlat3.x = min(x_405, x_406);
  let x_411 : vec4<f32> = vs_TEXCOORD6;
  let x_412 : vec2<f32> = vec2<f32>(x_411.x, x_411.y);
  let x_414 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_412.x, x_412.y, x_414);
  let x_426 : vec3<f32> = txVec0;
  let x_428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_426.xy, x_426.z);
  u_xlat37 = x_428;
  let x_435 : f32 = x_433.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_435) + 1.0f);
  let x_439 : f32 = u_xlat37;
  let x_441 : f32 = x_433.x_MainLightShadowParams.x;
  let x_444 : f32 = u_xlat6.x;
  u_xlat37 = ((x_439 * x_441) + x_444);
  let x_448 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_448);
  let x_452 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_452 >= 1.0f);
  let x_454 : bool = u_xlatb17;
  let x_455 : bool = u_xlatb6;
  u_xlatb6 = (x_454 | x_455);
  let x_457 : bool = u_xlatb6;
  let x_458 : f32 = u_xlat37;
  u_xlat37 = select(x_458, 1.0f, x_457);
  let x_460 : vec3<f32> = vs_TEXCOORD1;
  let x_462 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_460 + -(x_462));
  let x_465 : vec3<f32> = u_xlat6;
  let x_466 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_465, x_466);
  let x_470 : f32 = u_xlat6.x;
  let x_472 : f32 = x_433.x_MainLightShadowParams.z;
  let x_475 : f32 = x_433.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_470 * x_472) + x_475);
  let x_479 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_479, 0.0f, 1.0f);
  let x_483 : f32 = u_xlat37;
  u_xlat17 = (-(x_483) + 1.0f);
  let x_487 : f32 = u_xlat6.x;
  let x_488 : f32 = u_xlat17;
  let x_490 : f32 = u_xlat37;
  u_xlat37 = ((x_487 * x_488) + x_490);
  let x_492 : f32 = u_xlat38;
  let x_496 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_500 : vec3<f32> = u_xlat5;
  let x_502 : vec3<f32> = u_xlat14;
  u_xlat39 = dot(-(x_500), x_502);
  let x_504 : f32 = u_xlat39;
  let x_505 : f32 = u_xlat39;
  u_xlat39 = (x_504 + x_505);
  let x_508 : vec3<f32> = u_xlat14;
  let x_509 : f32 = u_xlat39;
  let x_513 : vec3<f32> = u_xlat5;
  let x_515 : vec3<f32> = ((x_508 * -(vec3<f32>(x_509, x_509, x_509))) + -(x_513));
  let x_516 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec3<f32> = u_xlat14;
  let x_519 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(x_518, x_519);
  let x_521 : f32 = u_xlat39;
  u_xlat39 = clamp(x_521, 0.0f, 1.0f);
  let x_523 : f32 = u_xlat39;
  u_xlat39 = (-(x_523) + 1.0f);
  let x_526 : f32 = u_xlat39;
  let x_527 : f32 = u_xlat39;
  u_xlat39 = (x_526 * x_527);
  let x_529 : f32 = u_xlat39;
  let x_530 : f32 = u_xlat39;
  u_xlat39 = (x_529 * x_530);
  let x_533 : f32 = u_xlat33;
  u_xlat40 = ((-(x_533) * 0.699999988f) + 1.700000048f);
  let x_539 : f32 = u_xlat33;
  let x_540 : f32 = u_xlat40;
  u_xlat33 = (x_539 * x_540);
  let x_542 : f32 = u_xlat33;
  u_xlat33 = (x_542 * 6.0f);
  let x_553 : vec4<f32> = u_xlat7;
  let x_555 : f32 = u_xlat33;
  let x_556 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_553.x, x_553.y, x_553.z), x_555);
  u_xlat7 = x_556;
  let x_558 : f32 = u_xlat7.w;
  u_xlat33 = (x_558 + -1.0f);
  let x_565 : f32 = x_563.unity_SpecCube0_HDR.w;
  let x_566 : f32 = u_xlat33;
  u_xlat33 = ((x_565 * x_566) + 1.0f);
  let x_569 : f32 = u_xlat33;
  u_xlat33 = max(x_569, 0.0f);
  let x_571 : f32 = u_xlat33;
  u_xlat33 = log2(x_571);
  let x_573 : f32 = u_xlat33;
  let x_575 : f32 = x_563.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_573 * x_575);
  let x_577 : f32 = u_xlat33;
  u_xlat33 = exp2(x_577);
  let x_579 : f32 = u_xlat33;
  let x_581 : f32 = x_563.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_579 * x_581);
  let x_583 : vec4<f32> = u_xlat7;
  let x_585 : f32 = u_xlat33;
  let x_587 : vec3<f32> = (vec3<f32>(x_583.x, x_583.y, x_583.z) * vec3<f32>(x_585, x_585, x_585));
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_591 : vec2<f32> = u_xlat1;
  let x_593 : vec2<f32> = u_xlat1;
  u_xlat8 = ((vec2<f32>(x_591.x, x_591.x) * vec2<f32>(x_593.x, x_593.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_599 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_599);
  let x_602 : vec4<f32> = u_xlat0;
  let x_605 : vec2<f32> = u_xlat23;
  u_xlat19 = (-(vec3<f32>(x_602.x, x_602.y, x_602.z)) + vec3<f32>(x_605.x, x_605.x, x_605.x));
  let x_608 : f32 = u_xlat39;
  let x_610 : vec3<f32> = u_xlat19;
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_608, x_608, x_608) * x_610) + vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_615 : f32 = u_xlat33;
  let x_617 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_615, x_615, x_615) * x_617);
  let x_619 : vec4<f32> = u_xlat7;
  let x_621 : vec3<f32> = u_xlat19;
  let x_622 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) * x_621);
  let x_623 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec3<f32> = u_xlat4;
  let x_626 : vec3<f32> = u_xlat13;
  let x_628 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_625 * x_626) + vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : f32 = u_xlat37;
  let x_634 : f32 = x_563.unity_LightData.z;
  u_xlat33 = (x_631 * x_634);
  let x_636 : vec3<f32> = u_xlat14;
  let x_638 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_636, vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_643 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_643, 0.0f, 1.0f);
  let x_646 : f32 = u_xlat33;
  let x_648 : f32 = u_xlat1.x;
  u_xlat33 = (x_646 * x_648);
  let x_650 : f32 = u_xlat33;
  let x_652 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_650, x_650, x_650) * x_652);
  let x_654 : vec3<f32> = u_xlat5;
  let x_656 : vec4<f32> = x_44.x_MainLightPosition;
  let x_658 : vec3<f32> = (x_654 + vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat7;
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : f32 = u_xlat33;
  u_xlat33 = max(x_666, 1.17549435e-37f);
  let x_669 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_669);
  let x_671 : f32 = u_xlat33;
  let x_673 : vec4<f32> = u_xlat7;
  let x_675 : vec3<f32> = (vec3<f32>(x_671, x_671, x_671) * vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec3<f32> = u_xlat14;
  let x_679 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_678, vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : f32 = u_xlat33;
  u_xlat33 = clamp(x_682, 0.0f, 1.0f);
  let x_685 : vec4<f32> = x_44.x_MainLightPosition;
  let x_687 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_685.x, x_685.y, x_685.z), vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_692 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_692, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat33;
  let x_696 : f32 = u_xlat33;
  u_xlat33 = (x_695 * x_696);
  let x_698 : f32 = u_xlat33;
  let x_700 : f32 = u_xlat8.x;
  u_xlat33 = ((x_698 * x_700) + 1.000010014f);
  let x_705 : f32 = u_xlat1.x;
  let x_707 : f32 = u_xlat1.x;
  u_xlat1.x = (x_705 * x_707);
  let x_710 : f32 = u_xlat33;
  let x_711 : f32 = u_xlat33;
  u_xlat33 = (x_710 * x_711);
  let x_714 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_714, 0.100000001f);
  let x_718 : f32 = u_xlat33;
  let x_720 : f32 = u_xlat1.x;
  u_xlat33 = (x_718 * x_720);
  let x_722 : f32 = u_xlat34;
  let x_723 : f32 = u_xlat33;
  u_xlat33 = (x_722 * x_723);
  let x_725 : f32 = u_xlat12;
  let x_726 : f32 = u_xlat33;
  u_xlat33 = (x_725 / x_726);
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : f32 = u_xlat33;
  let x_733 : vec3<f32> = u_xlat13;
  let x_734 : vec3<f32> = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_730, x_730, x_730)) + x_733);
  let x_735 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec3<f32> = u_xlat6;
  let x_738 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_737 * vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_742 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_744 : f32 = x_563.unity_LightData.y;
  u_xlat33 = min(x_742, x_744);
  let x_748 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_748));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_760 : u32 = u_xlatu_loop_1;
    let x_761 : u32 = u_xlatu33;
    if ((x_760 < x_761)) {
    } else {
      break;
    }
    let x_764 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_764 >> 2u);
    let x_768 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_768 & 3u));
    let x_771 : u32 = u_xlatu23;
    let x_774 : vec4<f32> = x_563.unity_LightIndices[bitcast<i32>(x_771)];
    let x_784 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_789 : vec4<u32> = indexable[x_784];
    u_xlat23.x = dot(x_774, bitcast<vec4<f32>>(x_789));
    let x_795 : f32 = u_xlat23.x;
    u_xlati23 = i32(x_795);
    let x_797 : vec3<f32> = vs_TEXCOORD1;
    let x_809 : i32 = u_xlati23;
    let x_811 : vec4<f32> = x_808.x_AdditionalLightsPosition[x_809];
    let x_814 : i32 = u_xlati23;
    let x_816 : vec4<f32> = x_808.x_AdditionalLightsPosition[x_814];
    u_xlat19 = ((-(x_797) * vec3<f32>(x_811.w, x_811.w, x_811.w)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
    let x_819 : vec3<f32> = u_xlat19;
    let x_820 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_819, x_820);
    let x_822 : f32 = u_xlat37;
    u_xlat37 = max(x_822, 6.10351562e-05f);
    let x_825 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_825);
    let x_828 : f32 = u_xlat39;
    let x_830 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_828, x_828, x_828) * x_830);
    let x_832 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_832);
    let x_834 : f32 = u_xlat37;
    let x_835 : i32 = u_xlati23;
    let x_837 : f32 = x_808.x_AdditionalLightsAttenuation[x_835].x;
    u_xlat37 = (x_834 * x_837);
    let x_839 : f32 = u_xlat37;
    let x_841 : f32 = u_xlat37;
    u_xlat37 = ((-(x_839) * x_841) + 1.0f);
    let x_844 : f32 = u_xlat37;
    u_xlat37 = max(x_844, 0.0f);
    let x_846 : f32 = u_xlat37;
    let x_847 : f32 = u_xlat37;
    u_xlat37 = (x_846 * x_847);
    let x_849 : f32 = u_xlat37;
    let x_850 : f32 = u_xlat40;
    u_xlat37 = (x_849 * x_850);
    let x_852 : i32 = u_xlati23;
    let x_854 : vec4<f32> = x_808.x_AdditionalLightsSpotDir[x_852];
    let x_856 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_854.x, x_854.y, x_854.z), x_856);
    let x_858 : f32 = u_xlat40;
    let x_859 : i32 = u_xlati23;
    let x_861 : f32 = x_808.x_AdditionalLightsAttenuation[x_859].z;
    let x_863 : i32 = u_xlati23;
    let x_865 : f32 = x_808.x_AdditionalLightsAttenuation[x_863].w;
    u_xlat40 = ((x_858 * x_861) + x_865);
    let x_867 : f32 = u_xlat40;
    u_xlat40 = clamp(x_867, 0.0f, 1.0f);
    let x_869 : f32 = u_xlat40;
    let x_870 : f32 = u_xlat40;
    u_xlat40 = (x_869 * x_870);
    let x_872 : f32 = u_xlat37;
    let x_873 : f32 = u_xlat40;
    u_xlat37 = (x_872 * x_873);
    let x_876 : f32 = u_xlat38;
    let x_878 : i32 = u_xlati23;
    let x_880 : vec4<f32> = x_808.x_AdditionalLightsColor[x_878];
    u_xlat10 = (vec3<f32>(x_876, x_876, x_876) * vec3<f32>(x_880.x, x_880.y, x_880.z));
    let x_883 : vec3<f32> = u_xlat14;
    let x_884 : vec3<f32> = u_xlat9;
    u_xlat23.x = dot(x_883, x_884);
    let x_888 : f32 = u_xlat23.x;
    u_xlat23.x = clamp(x_888, 0.0f, 1.0f);
    let x_892 : f32 = u_xlat23.x;
    let x_893 : f32 = u_xlat37;
    u_xlat23.x = (x_892 * x_893);
    let x_896 : vec2<f32> = u_xlat23;
    let x_898 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_896.x, x_896.x, x_896.x) * x_898);
    let x_900 : vec3<f32> = u_xlat19;
    let x_901 : f32 = u_xlat39;
    let x_904 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_900 * vec3<f32>(x_901, x_901, x_901)) + x_904);
    let x_906 : vec3<f32> = u_xlat19;
    let x_907 : vec3<f32> = u_xlat19;
    u_xlat23.x = dot(x_906, x_907);
    let x_911 : f32 = u_xlat23.x;
    u_xlat23.x = max(x_911, 1.17549435e-37f);
    let x_915 : f32 = u_xlat23.x;
    u_xlat23.x = inverseSqrt(x_915);
    let x_918 : vec2<f32> = u_xlat23;
    let x_920 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_918.x, x_918.x, x_918.x) * x_920);
    let x_922 : vec3<f32> = u_xlat14;
    let x_923 : vec3<f32> = u_xlat19;
    u_xlat23.x = dot(x_922, x_923);
    let x_927 : f32 = u_xlat23.x;
    u_xlat23.x = clamp(x_927, 0.0f, 1.0f);
    let x_930 : vec3<f32> = u_xlat9;
    let x_931 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_930, x_931);
    let x_933 : f32 = u_xlat37;
    u_xlat37 = clamp(x_933, 0.0f, 1.0f);
    let x_936 : f32 = u_xlat23.x;
    let x_938 : f32 = u_xlat23.x;
    u_xlat23.x = (x_936 * x_938);
    let x_942 : f32 = u_xlat23.x;
    let x_944 : f32 = u_xlat8.x;
    u_xlat23.x = ((x_942 * x_944) + 1.000010014f);
    let x_948 : f32 = u_xlat37;
    let x_949 : f32 = u_xlat37;
    u_xlat37 = (x_948 * x_949);
    let x_952 : f32 = u_xlat23.x;
    let x_954 : f32 = u_xlat23.x;
    u_xlat23.x = (x_952 * x_954);
    let x_957 : f32 = u_xlat37;
    u_xlat37 = max(x_957, 0.100000001f);
    let x_960 : f32 = u_xlat23.x;
    let x_961 : f32 = u_xlat37;
    u_xlat23.x = (x_960 * x_961);
    let x_964 : f32 = u_xlat34;
    let x_966 : f32 = u_xlat23.x;
    u_xlat23.x = (x_964 * x_966);
    let x_969 : f32 = u_xlat12;
    let x_971 : f32 = u_xlat23.x;
    u_xlat23.x = (x_969 / x_971);
    let x_974 : vec4<f32> = u_xlat0;
    let x_976 : vec2<f32> = u_xlat23;
    let x_979 : vec3<f32> = u_xlat13;
    u_xlat19 = ((vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(x_976.x, x_976.x, x_976.x)) + x_979);
    let x_981 : vec3<f32> = u_xlat19;
    let x_982 : vec3<f32> = u_xlat10;
    let x_984 : vec4<f32> = u_xlat7;
    let x_986 : vec3<f32> = ((x_981 * x_982) + vec3<f32>(x_984.x, x_984.y, x_984.z));
    let x_987 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);

    continuing {
      let x_989 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_989 + bitcast<u32>(1i));
    }
  }
  let x_991 : vec3<f32> = u_xlat4;
  let x_992 : vec3<f32> = u_xlat3;
  let x_995 : vec3<f32> = u_xlat6;
  let x_996 : vec3<f32> = ((x_991 * vec3<f32>(x_992.x, x_992.x, x_992.x)) + x_995);
  let x_997 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_1001 : vec4<f32> = u_xlat7;
  let x_1003 : vec4<f32> = u_xlat0;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1011 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1011 == 1.0f);
  let x_1013 : bool = u_xlatb0;
  if (x_1013) {
    let x_1018 : f32 = u_xlat2.x;
    x_1014 = x_1018;
  } else {
    x_1014 = 1.0f;
  }
  let x_1020 : f32 = x_1014;
  SV_Target0.w = x_1020;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

