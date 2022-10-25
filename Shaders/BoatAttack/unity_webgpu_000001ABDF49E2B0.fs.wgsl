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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_361 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_484 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_718 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var x_107 : f32;
  var x_121 : f32;
  var x_133 : f32;
  var u_xlat36 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatb42 : bool;
  var u_xlatb7 : bool;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu36 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati30 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_908 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb36 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat38 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat38;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_106 : bool = u_xlatb36;
  if (x_106) {
    let x_111 : f32 = u_xlat3.x;
    x_107 = x_111;
  } else {
    let x_117 : f32 = x_44.unity_MatrixV[0i].z;
    x_107 = x_117;
  }
  let x_118 : f32 = x_107;
  u_xlat4.x = x_118;
  let x_120 : bool = u_xlatb36;
  if (x_120) {
    let x_126 : f32 = u_xlat3.y;
    x_121 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[1i].z;
    x_121 = x_129;
  }
  let x_130 : f32 = x_121;
  u_xlat4.y = x_130;
  let x_132 : bool = u_xlatb36;
  if (x_132) {
    let x_137 : f32 = u_xlat3.z;
    x_133 = x_137;
  } else {
    let x_140 : f32 = x_44.unity_MatrixV[2i].z;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat4.z = x_141;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_145, x_146);
  let x_148 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat36;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_150, x_150, x_150) * x_152);
  let x_161 : vec2<f32> = vs_TEXCOORD8;
  let x_163 : f32 = x_44.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_161, x_163);
  u_xlat5 = x_164;
  let x_170 : vec2<f32> = vs_TEXCOORD8;
  let x_172 : f32 = x_44.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_170, x_172);
  u_xlat6 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_175 : vec4<f32> = u_xlat5;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec3<f32> = u_xlat3;
  let x_183 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_182, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : f32 = u_xlat36;
  u_xlat36 = (x_186 + 0.5f);
  let x_189 : f32 = u_xlat36;
  let x_191 : vec3<f32> = u_xlat6;
  let x_192 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : f32 = u_xlat5.w;
  u_xlat36 = max(x_196, 0.0001f);
  let x_199 : vec4<f32> = u_xlat5;
  let x_201 : f32 = u_xlat36;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) / vec3<f32>(x_201, x_201, x_201));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_208 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_209 : vec2<f32> = vec2<f32>(x_208.x, x_208.y);
  let x_213 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_209.x, x_209.y));
  let x_214 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_213.x, x_213.y, x_214.z);
  let x_216 : vec3<f32> = u_xlat6;
  let x_218 : vec4<f32> = hlslcc_FragCoord;
  let x_220 : vec2<f32> = (vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_218.x, x_218.y));
  let x_221 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_220.x, x_220.y, x_221.z);
  let x_224 : f32 = u_xlat6.y;
  let x_227 : f32 = x_44.x_ScaleBiasRt.x;
  let x_230 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_224 * x_227) + x_230);
  let x_232 : f32 = u_xlat36;
  u_xlat6.z = (-(x_232) + 1.0f);
  let x_237 : f32 = x_57.x_Metallic;
  u_xlat36 = ((-(x_237) * 0.959999979f) + 0.959999979f);
  let x_242 : f32 = u_xlat36;
  let x_245 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_242) + x_245);
  let x_248 : f32 = u_xlat36;
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_248, x_248, x_248) * vec3<f32>(x_250.y, x_250.z, x_250.w));
  let x_253 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = x_57.x_BaseColor;
  let x_261 : vec3<f32> = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_256.x, x_256.y, x_256.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : f32 = x_57.x_Metallic;
  let x_267 : f32 = x_57.x_Metallic;
  let x_269 : f32 = x_57.x_Metallic;
  let x_270 : vec3<f32> = vec3<f32>(x_265, x_267, x_269);
  let x_275 : vec4<f32> = u_xlat0;
  let x_280 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_275.x, x_275.y, x_275.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_284 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_284) + 1.0f);
  let x_288 : f32 = u_xlat36;
  let x_289 : f32 = u_xlat36;
  u_xlat39 = (x_288 * x_289);
  let x_291 : f32 = u_xlat39;
  u_xlat39 = max(x_291, 0.0078125f);
  let x_295 : f32 = u_xlat39;
  let x_296 : f32 = u_xlat39;
  u_xlat40 = (x_295 * x_296);
  let x_298 : f32 = u_xlat38;
  u_xlat38 = (x_298 + 1.0f);
  let x_300 : f32 = u_xlat38;
  u_xlat38 = clamp(x_300, 0.0f, 1.0f);
  let x_303 : f32 = u_xlat39;
  u_xlat41 = ((x_303 * 4.0f) + 2.0f);
  let x_313 : vec3<f32> = u_xlat6;
  let x_316 : f32 = x_44.x_GlobalMipBias.x;
  let x_317 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_313.x, x_313.z), x_316);
  u_xlat6.x = x_317.x;
  let x_322 : f32 = u_xlat6.x;
  u_xlat18 = (x_322 + -1.0f);
  let x_327 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_328 : f32 = u_xlat18;
  u_xlat18 = ((x_327 * x_328) + 1.0f);
  let x_332 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_332, 1.0f);
  let x_337 : vec4<f32> = vs_TEXCOORD6;
  let x_338 : vec2<f32> = vec2<f32>(x_337.x, x_337.y);
  let x_340 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_338.x, x_338.y, x_340);
  let x_353 : vec3<f32> = txVec0;
  let x_355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_353.xy, x_353.z);
  u_xlat30 = x_355;
  let x_363 : f32 = x_361.x_MainLightShadowParams.x;
  u_xlat42 = (-(x_363) + 1.0f);
  let x_366 : f32 = u_xlat30;
  let x_368 : f32 = x_361.x_MainLightShadowParams.x;
  let x_370 : f32 = u_xlat42;
  u_xlat30 = ((x_366 * x_368) + x_370);
  let x_374 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (0.0f >= x_374);
  let x_378 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_378 >= 1.0f);
  let x_380 : bool = u_xlatb42;
  let x_381 : bool = u_xlatb7;
  u_xlatb42 = (x_380 | x_381);
  let x_383 : bool = u_xlatb42;
  let x_384 : f32 = u_xlat30;
  u_xlat30 = select(x_384, 1.0f, x_383);
  let x_387 : vec3<f32> = vs_TEXCOORD1;
  let x_389 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_387 + -(x_389));
  let x_392 : vec3<f32> = u_xlat7;
  let x_393 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(x_392, x_393);
  let x_395 : f32 = u_xlat42;
  let x_397 : f32 = x_361.x_MainLightShadowParams.z;
  let x_400 : f32 = x_361.x_MainLightShadowParams.w;
  u_xlat42 = ((x_395 * x_397) + x_400);
  let x_402 : f32 = u_xlat42;
  u_xlat42 = clamp(x_402, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat30;
  u_xlat7.x = (-(x_404) + 1.0f);
  let x_408 : f32 = u_xlat42;
  let x_410 : f32 = u_xlat7.x;
  let x_412 : f32 = u_xlat30;
  u_xlat30 = ((x_408 * x_410) + x_412);
  let x_414 : f32 = u_xlat18;
  let x_418 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec3<f32> = u_xlat4;
  let x_423 : vec3<f32> = u_xlat3;
  u_xlat42 = dot(-(x_421), x_423);
  let x_425 : f32 = u_xlat42;
  let x_426 : f32 = u_xlat42;
  u_xlat42 = (x_425 + x_426);
  let x_429 : vec3<f32> = u_xlat3;
  let x_430 : f32 = u_xlat42;
  let x_434 : vec3<f32> = u_xlat4;
  let x_436 : vec3<f32> = ((x_429 * -(vec3<f32>(x_430, x_430, x_430))) + -(x_434));
  let x_437 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec3<f32> = u_xlat3;
  let x_440 : vec3<f32> = u_xlat4;
  u_xlat42 = dot(x_439, x_440);
  let x_442 : f32 = u_xlat42;
  u_xlat42 = clamp(x_442, 0.0f, 1.0f);
  let x_444 : f32 = u_xlat42;
  u_xlat42 = (-(x_444) + 1.0f);
  let x_447 : f32 = u_xlat42;
  let x_448 : f32 = u_xlat42;
  u_xlat42 = (x_447 * x_448);
  let x_450 : f32 = u_xlat42;
  let x_451 : f32 = u_xlat42;
  u_xlat42 = (x_450 * x_451);
  let x_454 : f32 = u_xlat36;
  u_xlat43 = ((-(x_454) * 0.699999988f) + 1.700000048f);
  let x_460 : f32 = u_xlat36;
  let x_461 : f32 = u_xlat43;
  u_xlat36 = (x_460 * x_461);
  let x_463 : f32 = u_xlat36;
  u_xlat36 = (x_463 * 6.0f);
  let x_474 : vec4<f32> = u_xlat8;
  let x_476 : f32 = u_xlat36;
  let x_477 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_474.x, x_474.y, x_474.z), x_476);
  u_xlat8 = x_477;
  let x_479 : f32 = u_xlat8.w;
  u_xlat36 = (x_479 + -1.0f);
  let x_486 : f32 = x_484.unity_SpecCube0_HDR.w;
  let x_487 : f32 = u_xlat36;
  u_xlat36 = ((x_486 * x_487) + 1.0f);
  let x_490 : f32 = u_xlat36;
  u_xlat36 = max(x_490, 0.0f);
  let x_492 : f32 = u_xlat36;
  u_xlat36 = log2(x_492);
  let x_494 : f32 = u_xlat36;
  let x_496 : f32 = x_484.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_494 * x_496);
  let x_498 : f32 = u_xlat36;
  u_xlat36 = exp2(x_498);
  let x_500 : f32 = u_xlat36;
  let x_502 : f32 = x_484.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_500 * x_502);
  let x_504 : vec4<f32> = u_xlat8;
  let x_506 : f32 = u_xlat36;
  let x_508 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_506, x_506, x_506));
  let x_509 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_513 : f32 = u_xlat39;
  let x_515 : f32 = u_xlat39;
  u_xlat9 = ((vec2<f32>(x_513, x_513) * vec2<f32>(x_515, x_515)) + vec2<f32>(-1.0f, 1.0f));
  let x_521 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_521);
  let x_524 : vec4<f32> = u_xlat0;
  let x_527 : f32 = u_xlat38;
  u_xlat21 = (-(vec3<f32>(x_524.x, x_524.y, x_524.z)) + vec3<f32>(x_527, x_527, x_527));
  let x_530 : f32 = u_xlat42;
  let x_532 : vec3<f32> = u_xlat21;
  let x_534 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_530, x_530, x_530) * x_532) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : f32 = u_xlat36;
  let x_539 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_537, x_537, x_537) * x_539);
  let x_541 : vec4<f32> = u_xlat8;
  let x_543 : vec3<f32> = u_xlat21;
  let x_544 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) * x_543);
  let x_545 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat5;
  let x_549 : vec3<f32> = u_xlat13;
  let x_551 : vec4<f32> = u_xlat8;
  let x_553 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.y, x_547.z) * x_549) + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : f32 = u_xlat30;
  let x_559 : f32 = x_484.unity_LightData.z;
  u_xlat36 = (x_556 * x_559);
  let x_561 : vec3<f32> = u_xlat3;
  let x_563 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat38 = dot(x_561, vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : f32 = u_xlat38;
  u_xlat38 = clamp(x_566, 0.0f, 1.0f);
  let x_568 : f32 = u_xlat36;
  let x_569 : f32 = u_xlat38;
  u_xlat36 = (x_568 * x_569);
  let x_571 : f32 = u_xlat36;
  let x_573 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_571, x_571, x_571) * x_573);
  let x_575 : vec3<f32> = u_xlat4;
  let x_577 : vec4<f32> = x_44.x_MainLightPosition;
  let x_579 : vec3<f32> = (x_575 + vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_582 : vec4<f32> = u_xlat8;
  let x_584 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_582.x, x_582.y, x_582.z), vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : f32 = u_xlat36;
  u_xlat36 = max(x_587, 1.17549435e-37f);
  let x_590 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_590);
  let x_592 : f32 = u_xlat36;
  let x_594 : vec4<f32> = u_xlat8;
  let x_596 : vec3<f32> = (vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = u_xlat3;
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(x_599, vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_603 : f32 = u_xlat36;
  u_xlat36 = clamp(x_603, 0.0f, 1.0f);
  let x_606 : vec4<f32> = x_44.x_MainLightPosition;
  let x_608 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_606.x, x_606.y, x_606.z), vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : f32 = u_xlat38;
  u_xlat38 = clamp(x_611, 0.0f, 1.0f);
  let x_613 : f32 = u_xlat36;
  let x_614 : f32 = u_xlat36;
  u_xlat36 = (x_613 * x_614);
  let x_616 : f32 = u_xlat36;
  let x_618 : f32 = u_xlat9.x;
  u_xlat36 = ((x_616 * x_618) + 1.000010014f);
  let x_622 : f32 = u_xlat38;
  let x_623 : f32 = u_xlat38;
  u_xlat38 = (x_622 * x_623);
  let x_625 : f32 = u_xlat36;
  let x_626 : f32 = u_xlat36;
  u_xlat36 = (x_625 * x_626);
  let x_628 : f32 = u_xlat38;
  u_xlat38 = max(x_628, 0.100000001f);
  let x_631 : f32 = u_xlat36;
  let x_632 : f32 = u_xlat38;
  u_xlat36 = (x_631 * x_632);
  let x_634 : f32 = u_xlat41;
  let x_635 : f32 = u_xlat36;
  u_xlat36 = (x_634 * x_635);
  let x_637 : f32 = u_xlat40;
  let x_638 : f32 = u_xlat36;
  u_xlat36 = (x_637 / x_638);
  let x_640 : vec4<f32> = u_xlat0;
  let x_642 : f32 = u_xlat36;
  let x_645 : vec3<f32> = u_xlat13;
  let x_646 : vec3<f32> = ((vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(x_642, x_642, x_642)) + x_645);
  let x_647 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat7;
  let x_650 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_649 * vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_654 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_656 : f32 = x_484.unity_LightData.y;
  u_xlat36 = min(x_654, x_656);
  let x_660 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_660));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_672 : u32 = u_xlatu_loop_1;
    let x_673 : u32 = u_xlatu36;
    if ((x_672 < x_673)) {
    } else {
      break;
    }
    let x_676 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_676 >> 2u);
    let x_680 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_680 & 3u));
    let x_683 : u32 = u_xlatu39;
    let x_686 : vec4<f32> = x_484.unity_LightIndices[bitcast<i32>(x_683)];
    let x_696 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_701 : vec4<u32> = indexable[x_696];
    u_xlat39 = dot(x_686, bitcast<vec4<f32>>(x_701));
    let x_705 : f32 = u_xlat39;
    u_xlati39 = i32(x_705);
    let x_707 : vec3<f32> = vs_TEXCOORD1;
    let x_719 : i32 = u_xlati39;
    let x_721 : vec4<f32> = x_718.x_AdditionalLightsPosition[x_719];
    let x_724 : i32 = u_xlati39;
    let x_726 : vec4<f32> = x_718.x_AdditionalLightsPosition[x_724];
    u_xlat21 = ((-(x_707) * vec3<f32>(x_721.w, x_721.w, x_721.w)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
    let x_729 : vec3<f32> = u_xlat21;
    let x_730 : vec3<f32> = u_xlat21;
    u_xlat30 = dot(x_729, x_730);
    let x_732 : f32 = u_xlat30;
    u_xlat30 = max(x_732, 6.10351562e-05f);
    let x_735 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_735);
    let x_738 : f32 = u_xlat42;
    let x_740 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_738, x_738, x_738) * x_740);
    let x_742 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_742);
    let x_744 : f32 = u_xlat30;
    let x_745 : i32 = u_xlati39;
    let x_747 : f32 = x_718.x_AdditionalLightsAttenuation[x_745].x;
    u_xlat30 = (x_744 * x_747);
    let x_749 : f32 = u_xlat30;
    let x_751 : f32 = u_xlat30;
    u_xlat30 = ((-(x_749) * x_751) + 1.0f);
    let x_754 : f32 = u_xlat30;
    u_xlat30 = max(x_754, 0.0f);
    let x_756 : f32 = u_xlat30;
    let x_757 : f32 = u_xlat30;
    u_xlat30 = (x_756 * x_757);
    let x_759 : f32 = u_xlat30;
    let x_760 : f32 = u_xlat43;
    u_xlat30 = (x_759 * x_760);
    let x_762 : i32 = u_xlati39;
    let x_764 : vec4<f32> = x_718.x_AdditionalLightsSpotDir[x_762];
    let x_766 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), x_766);
    let x_768 : f32 = u_xlat43;
    let x_769 : i32 = u_xlati39;
    let x_771 : f32 = x_718.x_AdditionalLightsAttenuation[x_769].z;
    let x_773 : i32 = u_xlati39;
    let x_775 : f32 = x_718.x_AdditionalLightsAttenuation[x_773].w;
    u_xlat43 = ((x_768 * x_771) + x_775);
    let x_777 : f32 = u_xlat43;
    u_xlat43 = clamp(x_777, 0.0f, 1.0f);
    let x_779 : f32 = u_xlat43;
    let x_780 : f32 = u_xlat43;
    u_xlat43 = (x_779 * x_780);
    let x_782 : f32 = u_xlat30;
    let x_783 : f32 = u_xlat43;
    u_xlat30 = (x_782 * x_783);
    let x_786 : f32 = u_xlat18;
    let x_788 : i32 = u_xlati39;
    let x_790 : vec4<f32> = x_718.x_AdditionalLightsColor[x_788];
    u_xlat11 = (vec3<f32>(x_786, x_786, x_786) * vec3<f32>(x_790.x, x_790.y, x_790.z));
    let x_793 : vec3<f32> = u_xlat3;
    let x_794 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(x_793, x_794);
    let x_796 : f32 = u_xlat39;
    u_xlat39 = clamp(x_796, 0.0f, 1.0f);
    let x_798 : f32 = u_xlat39;
    let x_799 : f32 = u_xlat30;
    u_xlat39 = (x_798 * x_799);
    let x_801 : f32 = u_xlat39;
    let x_803 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_801, x_801, x_801) * x_803);
    let x_805 : vec3<f32> = u_xlat21;
    let x_806 : f32 = u_xlat42;
    let x_809 : vec3<f32> = u_xlat4;
    u_xlat21 = ((x_805 * vec3<f32>(x_806, x_806, x_806)) + x_809);
    let x_811 : vec3<f32> = u_xlat21;
    let x_812 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_811, x_812);
    let x_814 : f32 = u_xlat39;
    u_xlat39 = max(x_814, 1.17549435e-37f);
    let x_816 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_816);
    let x_818 : f32 = u_xlat39;
    let x_820 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_818, x_818, x_818) * x_820);
    let x_822 : vec3<f32> = u_xlat3;
    let x_823 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_822, x_823);
    let x_825 : f32 = u_xlat39;
    u_xlat39 = clamp(x_825, 0.0f, 1.0f);
    let x_827 : vec3<f32> = u_xlat10;
    let x_828 : vec3<f32> = u_xlat21;
    u_xlat30 = dot(x_827, x_828);
    let x_830 : f32 = u_xlat30;
    u_xlat30 = clamp(x_830, 0.0f, 1.0f);
    let x_832 : f32 = u_xlat39;
    let x_833 : f32 = u_xlat39;
    u_xlat39 = (x_832 * x_833);
    let x_835 : f32 = u_xlat39;
    let x_837 : f32 = u_xlat9.x;
    u_xlat39 = ((x_835 * x_837) + 1.000010014f);
    let x_840 : f32 = u_xlat30;
    let x_841 : f32 = u_xlat30;
    u_xlat30 = (x_840 * x_841);
    let x_843 : f32 = u_xlat39;
    let x_844 : f32 = u_xlat39;
    u_xlat39 = (x_843 * x_844);
    let x_846 : f32 = u_xlat30;
    u_xlat30 = max(x_846, 0.100000001f);
    let x_848 : f32 = u_xlat39;
    let x_849 : f32 = u_xlat30;
    u_xlat39 = (x_848 * x_849);
    let x_851 : f32 = u_xlat41;
    let x_852 : f32 = u_xlat39;
    u_xlat39 = (x_851 * x_852);
    let x_854 : f32 = u_xlat40;
    let x_855 : f32 = u_xlat39;
    u_xlat39 = (x_854 / x_855);
    let x_857 : vec4<f32> = u_xlat0;
    let x_859 : f32 = u_xlat39;
    let x_862 : vec3<f32> = u_xlat13;
    u_xlat21 = ((vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_859, x_859, x_859)) + x_862);
    let x_864 : vec3<f32> = u_xlat21;
    let x_865 : vec3<f32> = u_xlat11;
    let x_867 : vec4<f32> = u_xlat8;
    let x_869 : vec3<f32> = ((x_864 * x_865) + vec3<f32>(x_867.x, x_867.y, x_867.z));
    let x_870 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);

    continuing {
      let x_872 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_872 + bitcast<u32>(1i));
    }
  }
  let x_874 : vec4<f32> = u_xlat5;
  let x_876 : vec3<f32> = u_xlat6;
  let x_879 : vec3<f32> = u_xlat7;
  let x_880 : vec3<f32> = ((vec3<f32>(x_874.x, x_874.y, x_874.z) * vec3<f32>(x_876.x, x_876.x, x_876.x)) + x_879);
  let x_881 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat8;
  let x_885 : vec4<f32> = u_xlat0;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_892 : vec3<f32> = u_xlat2;
  let x_894 : vec4<f32> = x_57.x_EmissionColor;
  let x_897 : vec4<f32> = u_xlat0;
  let x_899 : vec3<f32> = ((x_892 * vec3<f32>(x_894.x, x_894.y, x_894.z)) + vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_905 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_905 == 1.0f);
  let x_907 : bool = u_xlatb0;
  if (x_907) {
    let x_912 : f32 = u_xlat1.x;
    x_908 = x_912;
  } else {
    x_908 = 1.0f;
  }
  let x_914 : f32 = x_908;
  SV_Target0.w = x_914;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

