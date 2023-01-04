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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_461 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_600 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_862 : AdditionalLights;

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
  var x_198 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu12 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1085 : f32;
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
  let x_162 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_162 == 0.0f);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_168) + x_173);
  let x_176 : vec3<f32> = u_xlat4;
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat25;
  let x_183 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_189 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_189;
  let x_192 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_192;
  let x_195 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_195;
  let x_197 : bool = u_xlatb14;
  if (x_197) {
    let x_201 : vec3<f32> = u_xlat4;
    x_198 = x_201;
  } else {
    let x_203 : vec3<f32> = u_xlat5;
    x_198 = x_203;
  }
  let x_204 : vec3<f32> = x_198;
  u_xlat14 = x_204;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_206.z, x_206.x, x_206.y) * vec3<f32>(x_209.y, x_209.z, x_209.x));
  let x_212 : vec3<f32> = vs_TEXCOORD2;
  let x_214 : vec4<f32> = vs_TEXCOORD3;
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_212.y, x_212.z, x_212.x) * vec3<f32>(x_214.z, x_214.x, x_214.y)) + -(x_217));
  let x_220 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_220 * vec3<f32>(x_221.w, x_221.w, x_221.w));
  let x_224 : vec2<f32> = u_xlat23;
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_224.y, x_224.y, x_224.y) * x_226);
  let x_228 : vec2<f32> = u_xlat23;
  let x_230 : vec4<f32> = vs_TEXCOORD3;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + x_233);
  let x_235 : f32 = u_xlat33;
  let x_237 : vec3<f32> = vs_TEXCOORD2;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_235, x_235, x_235) * x_237) + x_239);
  let x_241 : vec3<f32> = u_xlat4;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat33 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_244);
  let x_246 : f32 = u_xlat33;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_246, x_246, x_246) * x_248);
  let x_251 : f32 = vs_TEXCOORD1.y;
  let x_253 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_251 * x_253);
  let x_256 : f32 = x_44.unity_MatrixV[0i].z;
  let x_258 : f32 = vs_TEXCOORD1.x;
  let x_260 : f32 = u_xlat33;
  u_xlat33 = ((x_256 * x_258) + x_260);
  let x_263 : f32 = x_44.unity_MatrixV[2i].z;
  let x_265 : f32 = vs_TEXCOORD1.z;
  let x_267 : f32 = u_xlat33;
  u_xlat33 = ((x_263 * x_265) + x_267);
  let x_269 : f32 = u_xlat33;
  let x_272 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_269 + x_272);
  let x_274 : f32 = u_xlat33;
  let x_278 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_274) + -(x_278));
  let x_281 : f32 = u_xlat33;
  u_xlat33 = max(x_281, 0.0f);
  let x_283 : f32 = u_xlat33;
  let x_285 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_283 * x_285);
  let x_293 : vec2<f32> = vs_TEXCOORD8;
  let x_295 : f32 = x_44.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_293, x_295);
  u_xlat5 = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_300 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_301 : vec2<f32> = vec2<f32>(x_300.x, x_300.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_301.x, x_301.y));
  let x_307 : vec2<f32> = u_xlat23;
  let x_308 : vec4<f32> = hlslcc_FragCoord;
  let x_310 : vec2<f32> = (x_307 * vec2<f32>(x_308.x, x_308.y));
  let x_311 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_310.x, x_310.y, x_311.z);
  let x_314 : f32 = u_xlat6.y;
  let x_317 : f32 = x_44.x_ScaleBiasRt.x;
  let x_320 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_314 * x_317) + x_320);
  let x_324 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_324) + 1.0f);
  let x_329 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_329) * 0.959999979f) + 0.959999979f);
  let x_337 : f32 = u_xlat1.y;
  let x_339 : f32 = x_69.x_Smoothness;
  let x_342 : f32 = u_xlat23.x;
  u_xlat34 = ((x_337 * x_339) + -(x_342));
  let x_346 : vec2<f32> = u_xlat23;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_348.y, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat0;
  let x_354 : vec4<f32> = x_69.x_BaseColor;
  let x_359 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec2<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.x, x_362.x) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat1.y;
  let x_376 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_373) * x_376) + 1.0f);
  let x_382 : f32 = u_xlat1.x;
  let x_384 : f32 = u_xlat1.x;
  u_xlat12.x = (x_382 * x_384);
  let x_388 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_388, 0.0078125f);
  let x_393 : f32 = u_xlat12.x;
  let x_395 : f32 = u_xlat12.x;
  u_xlat23.x = (x_393 * x_395);
  let x_398 : f32 = u_xlat34;
  u_xlat34 = (x_398 + 1.0f);
  let x_400 : f32 = u_xlat34;
  u_xlat34 = clamp(x_400, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat12.x;
  u_xlat37 = ((x_404 * 4.0f) + 2.0f);
  let x_414 : vec3<f32> = u_xlat6;
  let x_417 : f32 = x_44.x_GlobalMipBias.x;
  let x_418 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_414.x, x_414.z), x_417);
  u_xlat38 = x_418.x;
  let x_420 : f32 = u_xlat38;
  u_xlat6.x = (x_420 + -1.0f);
  let x_425 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_427 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_425 * x_427) + 1.0f);
  let x_432 : f32 = u_xlat3.x;
  let x_433 : f32 = u_xlat38;
  u_xlat3.x = min(x_432, x_433);
  let x_438 : vec4<f32> = vs_TEXCOORD6;
  let x_439 : vec2<f32> = vec2<f32>(x_438.x, x_438.y);
  let x_441 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_439.x, x_439.y, x_441);
  let x_453 : vec3<f32> = txVec0;
  let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_453.xy, x_453.z);
  u_xlat38 = x_455;
  let x_463 : f32 = x_461.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_463) + 1.0f);
  let x_467 : f32 = u_xlat38;
  let x_469 : f32 = x_461.x_MainLightShadowParams.x;
  let x_472 : f32 = u_xlat17.x;
  u_xlat38 = ((x_467 * x_469) + x_472);
  let x_476 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_476);
  let x_480 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_480 >= 1.0f);
  let x_482 : bool = u_xlatb28;
  let x_483 : bool = u_xlatb17;
  u_xlatb17 = (x_482 | x_483);
  let x_485 : bool = u_xlatb17;
  let x_486 : f32 = u_xlat38;
  u_xlat38 = select(x_486, 1.0f, x_485);
  let x_488 : vec3<f32> = vs_TEXCOORD1;
  let x_490 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_488 + -(x_490));
  let x_493 : vec3<f32> = u_xlat17;
  let x_494 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_493, x_494);
  let x_498 : f32 = u_xlat17.x;
  let x_500 : f32 = x_461.x_MainLightShadowParams.z;
  let x_503 : f32 = x_461.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_498 * x_500) + x_503);
  let x_507 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_507, 0.0f, 1.0f);
  let x_511 : f32 = u_xlat38;
  u_xlat28 = (-(x_511) + 1.0f);
  let x_515 : f32 = u_xlat17.x;
  let x_516 : f32 = u_xlat28;
  let x_518 : f32 = u_xlat38;
  u_xlat38 = ((x_515 * x_516) + x_518);
  let x_520 : vec3<f32> = u_xlat6;
  let x_523 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_520.x, x_520.x, x_520.x) * vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_527 : vec3<f32> = u_xlat14;
  let x_529 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_527), x_529);
  let x_533 : f32 = u_xlat7.x;
  let x_535 : f32 = u_xlat7.x;
  u_xlat7.x = (x_533 + x_535);
  let x_538 : vec3<f32> = u_xlat4;
  let x_539 : vec3<f32> = u_xlat7;
  let x_543 : vec3<f32> = u_xlat14;
  u_xlat7 = ((x_538 * -(vec3<f32>(x_539.x, x_539.x, x_539.x))) + -(x_543));
  let x_547 : vec3<f32> = u_xlat4;
  let x_548 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(x_547, x_548);
  let x_550 : f32 = u_xlat40;
  u_xlat40 = clamp(x_550, 0.0f, 1.0f);
  let x_552 : f32 = u_xlat40;
  u_xlat40 = (-(x_552) + 1.0f);
  let x_555 : f32 = u_xlat40;
  let x_556 : f32 = u_xlat40;
  u_xlat40 = (x_555 * x_556);
  let x_558 : f32 = u_xlat40;
  let x_559 : f32 = u_xlat40;
  u_xlat40 = (x_558 * x_559);
  let x_563 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_563) * 0.699999988f) + 1.700000048f);
  let x_571 : f32 = u_xlat1.x;
  let x_573 : f32 = u_xlat8.x;
  u_xlat1.x = (x_571 * x_573);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = (x_577 * 6.0f);
  let x_589 : vec3<f32> = u_xlat7;
  let x_591 : f32 = u_xlat1.x;
  let x_592 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_589, x_591);
  u_xlat8 = x_592;
  let x_594 : f32 = u_xlat8.w;
  u_xlat1.x = (x_594 + -1.0f);
  let x_602 : f32 = x_600.unity_SpecCube0_HDR.w;
  let x_604 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_602 * x_604) + 1.0f);
  let x_609 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_609, 0.0f);
  let x_613 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_613);
  let x_617 : f32 = u_xlat1.x;
  let x_619 : f32 = x_600.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_617 * x_619);
  let x_623 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_623);
  let x_627 : f32 = u_xlat1.x;
  let x_629 : f32 = x_600.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_627 * x_629);
  let x_632 : vec4<f32> = u_xlat8;
  let x_634 : vec2<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(x_634.x, x_634.x, x_634.x));
  let x_637 : vec3<f32> = u_xlat12;
  let x_639 : vec3<f32> = u_xlat12;
  u_xlat1 = ((vec2<f32>(x_637.x, x_637.x) * vec2<f32>(x_639.x, x_639.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_645 : f32 = u_xlat1.y;
  u_xlat12.x = (1.0f / x_645);
  let x_648 : vec4<f32> = u_xlat0;
  let x_651 : f32 = u_xlat34;
  let x_653 : vec3<f32> = (-(vec3<f32>(x_648.x, x_648.y, x_648.z)) + vec3<f32>(x_651, x_651, x_651));
  let x_654 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : f32 = u_xlat40;
  let x_658 : vec4<f32> = u_xlat8;
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = ((vec3<f32>(x_656, x_656, x_656) * vec3<f32>(x_658.x, x_658.y, x_658.z)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec3<f32> = u_xlat12;
  let x_668 : vec4<f32> = u_xlat8;
  let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.x, x_666.x) * vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec3<f32> = u_xlat7;
  let x_674 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_673 * vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec3<f32> = u_xlat5;
  let x_678 : vec3<f32> = u_xlat13;
  let x_680 : vec3<f32> = u_xlat7;
  u_xlat5 = ((x_677 * x_678) + x_680);
  let x_682 : f32 = u_xlat38;
  let x_685 : f32 = x_600.unity_LightData.z;
  u_xlat12.x = (x_682 * x_685);
  let x_688 : vec3<f32> = u_xlat4;
  let x_690 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(x_688, vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : f32 = u_xlat34;
  u_xlat34 = clamp(x_693, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat34;
  let x_697 : f32 = u_xlat12.x;
  u_xlat12.x = (x_695 * x_697);
  let x_700 : vec3<f32> = u_xlat12;
  let x_702 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_700.x, x_700.x, x_700.x) * x_702);
  let x_704 : vec3<f32> = u_xlat14;
  let x_706 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_704 + vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec3<f32> = u_xlat7;
  let x_710 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_709, x_710);
  let x_714 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_714, 1.17549435e-37f);
  let x_719 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_719);
  let x_722 : vec3<f32> = u_xlat12;
  let x_724 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_722.x, x_722.x, x_722.x) * x_724);
  let x_726 : vec3<f32> = u_xlat4;
  let x_727 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_726, x_727);
  let x_731 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_731, 0.0f, 1.0f);
  let x_735 : vec4<f32> = x_44.x_MainLightPosition;
  let x_737 : vec3<f32> = u_xlat7;
  u_xlat12.z = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), x_737);
  let x_741 : f32 = u_xlat12.z;
  u_xlat12.z = clamp(x_741, 0.0f, 1.0f);
  let x_744 : vec3<f32> = u_xlat12;
  let x_746 : vec3<f32> = u_xlat12;
  let x_748 : vec2<f32> = (vec2<f32>(x_744.x, x_744.z) * vec2<f32>(x_746.x, x_746.z));
  let x_749 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_748.x, x_749.y, x_748.y);
  let x_752 : f32 = u_xlat12.x;
  let x_754 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_752 * x_754) + 1.000010014f);
  let x_760 : f32 = u_xlat12.x;
  let x_762 : f32 = u_xlat12.x;
  u_xlat12.x = (x_760 * x_762);
  let x_766 : f32 = u_xlat12.z;
  u_xlat34 = max(x_766, 0.100000001f);
  let x_769 : f32 = u_xlat34;
  let x_771 : f32 = u_xlat12.x;
  u_xlat12.x = (x_769 * x_771);
  let x_774 : f32 = u_xlat37;
  let x_776 : f32 = u_xlat12.x;
  u_xlat12.x = (x_774 * x_776);
  let x_780 : f32 = u_xlat23.x;
  let x_782 : f32 = u_xlat12.x;
  u_xlat12.x = (x_780 / x_782);
  let x_785 : vec4<f32> = u_xlat0;
  let x_787 : vec3<f32> = u_xlat12;
  let x_790 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787.x, x_787.x, x_787.x)) + x_790);
  let x_792 : vec3<f32> = u_xlat17;
  let x_793 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_792 * x_793);
  let x_796 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_798 : f32 = x_600.unity_LightData.y;
  u_xlat12.x = min(x_796, x_798);
  let x_804 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_804));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_816 : u32 = u_xlatu_loop_1;
    let x_817 : u32 = u_xlatu12;
    if ((x_816 < x_817)) {
    } else {
      break;
    }
    let x_820 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_820 >> 2u);
    let x_824 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_824 & 3u));
    let x_827 : u32 = u_xlatu38;
    let x_830 : vec4<f32> = x_600.unity_LightIndices[bitcast<i32>(x_827)];
    let x_840 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_845 : vec4<u32> = indexable[x_840];
    u_xlat38 = dot(x_830, bitcast<vec4<f32>>(x_845));
    let x_849 : f32 = u_xlat38;
    u_xlati38 = i32(x_849);
    let x_851 : vec3<f32> = vs_TEXCOORD1;
    let x_863 : i32 = u_xlati38;
    let x_865 : vec4<f32> = x_862.x_AdditionalLightsPosition[x_863];
    let x_868 : i32 = u_xlati38;
    let x_870 : vec4<f32> = x_862.x_AdditionalLightsPosition[x_868];
    let x_872 : vec3<f32> = ((-(x_851) * vec3<f32>(x_865.w, x_865.w, x_865.w)) + vec3<f32>(x_870.x, x_870.y, x_870.z));
    let x_873 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
    let x_875 : vec4<f32> = u_xlat8;
    let x_877 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_875.x, x_875.y, x_875.z), vec3<f32>(x_877.x, x_877.y, x_877.z));
    let x_880 : f32 = u_xlat40;
    u_xlat40 = max(x_880, 6.10351562e-05f);
    let x_884 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_884);
    let x_887 : f32 = u_xlat41;
    let x_889 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_889.x, x_889.y, x_889.z));
    let x_893 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_893);
    let x_895 : f32 = u_xlat40;
    let x_896 : i32 = u_xlati38;
    let x_898 : f32 = x_862.x_AdditionalLightsAttenuation[x_896].x;
    u_xlat40 = (x_895 * x_898);
    let x_900 : f32 = u_xlat40;
    let x_902 : f32 = u_xlat40;
    u_xlat40 = ((-(x_900) * x_902) + 1.0f);
    let x_905 : f32 = u_xlat40;
    u_xlat40 = max(x_905, 0.0f);
    let x_907 : f32 = u_xlat40;
    let x_908 : f32 = u_xlat40;
    u_xlat40 = (x_907 * x_908);
    let x_910 : f32 = u_xlat40;
    let x_911 : f32 = u_xlat42;
    u_xlat40 = (x_910 * x_911);
    let x_913 : i32 = u_xlati38;
    let x_915 : vec4<f32> = x_862.x_AdditionalLightsSpotDir[x_913];
    let x_917 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), x_917);
    let x_919 : f32 = u_xlat42;
    let x_920 : i32 = u_xlati38;
    let x_922 : f32 = x_862.x_AdditionalLightsAttenuation[x_920].z;
    let x_924 : i32 = u_xlati38;
    let x_926 : f32 = x_862.x_AdditionalLightsAttenuation[x_924].w;
    u_xlat42 = ((x_919 * x_922) + x_926);
    let x_928 : f32 = u_xlat42;
    u_xlat42 = clamp(x_928, 0.0f, 1.0f);
    let x_930 : f32 = u_xlat42;
    let x_931 : f32 = u_xlat42;
    u_xlat42 = (x_930 * x_931);
    let x_933 : f32 = u_xlat40;
    let x_934 : f32 = u_xlat42;
    u_xlat40 = (x_933 * x_934);
    let x_937 : vec3<f32> = u_xlat6;
    let x_939 : i32 = u_xlati38;
    let x_941 : vec4<f32> = x_862.x_AdditionalLightsColor[x_939];
    u_xlat10 = (vec3<f32>(x_937.x, x_937.x, x_937.x) * vec3<f32>(x_941.x, x_941.y, x_941.z));
    let x_944 : vec3<f32> = u_xlat4;
    let x_945 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_944, x_945);
    let x_947 : f32 = u_xlat38;
    u_xlat38 = clamp(x_947, 0.0f, 1.0f);
    let x_949 : f32 = u_xlat38;
    let x_950 : f32 = u_xlat40;
    u_xlat38 = (x_949 * x_950);
    let x_952 : f32 = u_xlat38;
    let x_954 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_952, x_952, x_952) * x_954);
    let x_956 : vec4<f32> = u_xlat8;
    let x_958 : f32 = u_xlat41;
    let x_961 : vec3<f32> = u_xlat14;
    let x_962 : vec3<f32> = ((vec3<f32>(x_956.x, x_956.y, x_956.z) * vec3<f32>(x_958, x_958, x_958)) + x_961);
    let x_963 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_965 : vec4<f32> = u_xlat8;
    let x_967 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
    let x_970 : f32 = u_xlat38;
    u_xlat38 = max(x_970, 1.17549435e-37f);
    let x_972 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_972);
    let x_974 : f32 = u_xlat38;
    let x_976 : vec4<f32> = u_xlat8;
    let x_978 : vec3<f32> = (vec3<f32>(x_974, x_974, x_974) * vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_979 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
    let x_981 : vec3<f32> = u_xlat4;
    let x_982 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_981, vec3<f32>(x_982.x, x_982.y, x_982.z));
    let x_985 : f32 = u_xlat38;
    u_xlat38 = clamp(x_985, 0.0f, 1.0f);
    let x_987 : vec3<f32> = u_xlat9;
    let x_988 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_987, vec3<f32>(x_988.x, x_988.y, x_988.z));
    let x_991 : f32 = u_xlat40;
    u_xlat40 = clamp(x_991, 0.0f, 1.0f);
    let x_993 : f32 = u_xlat38;
    let x_994 : f32 = u_xlat38;
    u_xlat38 = (x_993 * x_994);
    let x_996 : f32 = u_xlat38;
    let x_998 : f32 = u_xlat1.x;
    u_xlat38 = ((x_996 * x_998) + 1.000010014f);
    let x_1001 : f32 = u_xlat40;
    let x_1002 : f32 = u_xlat40;
    u_xlat40 = (x_1001 * x_1002);
    let x_1004 : f32 = u_xlat38;
    let x_1005 : f32 = u_xlat38;
    u_xlat38 = (x_1004 * x_1005);
    let x_1007 : f32 = u_xlat40;
    u_xlat40 = max(x_1007, 0.100000001f);
    let x_1009 : f32 = u_xlat38;
    let x_1010 : f32 = u_xlat40;
    u_xlat38 = (x_1009 * x_1010);
    let x_1012 : f32 = u_xlat37;
    let x_1013 : f32 = u_xlat38;
    u_xlat38 = (x_1012 * x_1013);
    let x_1016 : f32 = u_xlat23.x;
    let x_1017 : f32 = u_xlat38;
    u_xlat38 = (x_1016 / x_1017);
    let x_1019 : vec4<f32> = u_xlat0;
    let x_1021 : f32 = u_xlat38;
    let x_1024 : vec3<f32> = u_xlat13;
    let x_1025 : vec3<f32> = ((vec3<f32>(x_1019.x, x_1019.y, x_1019.z) * vec3<f32>(x_1021, x_1021, x_1021)) + x_1024);
    let x_1026 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
    let x_1028 : vec4<f32> = u_xlat8;
    let x_1030 : vec3<f32> = u_xlat10;
    let x_1032 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * x_1030) + x_1032);

    continuing {
      let x_1034 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1034 + bitcast<u32>(1i));
    }
  }
  let x_1036 : vec3<f32> = u_xlat5;
  let x_1037 : vec3<f32> = u_xlat3;
  let x_1040 : vec3<f32> = u_xlat17;
  let x_1041 : vec3<f32> = ((x_1036 * vec3<f32>(x_1037.x, x_1037.x, x_1037.x)) + x_1040);
  let x_1042 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec3<f32> = u_xlat7;
  let x_1045 : vec4<f32> = u_xlat0;
  let x_1047 : vec3<f32> = (x_1044 + vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : f32 = u_xlat33;
  let x_1051 : f32 = u_xlat33;
  u_xlat33 = (x_1050 * -(x_1051));
  let x_1054 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1054);
  let x_1056 : vec4<f32> = u_xlat0;
  let x_1060 : vec4<f32> = x_44.unity_FogColor;
  let x_1063 : vec3<f32> = (vec3<f32>(x_1056.x, x_1056.y, x_1056.z) + -(vec3<f32>(x_1060.x, x_1060.y, x_1060.z)));
  let x_1064 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  let x_1068 : f32 = u_xlat33;
  let x_1070 : vec4<f32> = u_xlat0;
  let x_1074 : vec4<f32> = x_44.unity_FogColor;
  let x_1076 : vec3<f32> = ((vec3<f32>(x_1068, x_1068, x_1068) * vec3<f32>(x_1070.x, x_1070.y, x_1070.z)) + vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1082 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1082 == 1.0f);
  let x_1084 : bool = u_xlatb0;
  if (x_1084) {
    let x_1089 : f32 = u_xlat2.x;
    x_1085 = x_1089;
  } else {
    x_1085 = 1.0f;
  }
  let x_1091 : f32 = x_1085;
  SV_Target0.w = x_1091;
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

