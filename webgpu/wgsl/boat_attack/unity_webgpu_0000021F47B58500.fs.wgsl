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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_173 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_404 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_762 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec4<f32>;
  var x_109 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat38 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var x_431 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat39 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_968 : f32;
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
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat35;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb33;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec4<f32> = u_xlat3;
    x_109 = vec3<f32>(x_114.x, x_114.y, x_114.z);
  }
  let x_116 : vec3<f32> = x_109;
  u_xlat2 = x_116;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  let x_120 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_119, x_120);
  let x_122 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_122);
  let x_124 : f32 = u_xlat33;
  let x_126 : vec3<f32> = vs_TEXCOORD2;
  let x_127 : vec3<f32> = (vec3<f32>(x_124, x_124, x_124) * x_126);
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_131 : f32 = vs_TEXCOORD1.y;
  let x_133 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_131 * x_133);
  let x_136 : f32 = x_44.unity_MatrixV[0i].z;
  let x_138 : f32 = vs_TEXCOORD1.x;
  let x_140 : f32 = u_xlat33;
  u_xlat33 = ((x_136 * x_138) + x_140);
  let x_143 : f32 = x_44.unity_MatrixV[2i].z;
  let x_145 : f32 = vs_TEXCOORD1.z;
  let x_147 : f32 = u_xlat33;
  u_xlat33 = ((x_143 * x_145) + x_147);
  let x_149 : f32 = u_xlat33;
  let x_152 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_149 + x_152);
  let x_154 : f32 = u_xlat33;
  let x_158 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_154) + -(x_158));
  let x_161 : f32 = u_xlat33;
  u_xlat33 = max(x_161, 0.0f);
  let x_163 : f32 = u_xlat33;
  let x_166 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_163 * x_166);
  u_xlat3.w = 1.0f;
  let x_176 : vec4<f32> = x_173.unity_SHAr;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_176, x_177);
  let x_182 : vec4<f32> = x_173.unity_SHAg;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_182, x_183);
  let x_188 : vec4<f32> = x_173.unity_SHAb;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_188, x_189);
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_193.y, x_193.z, x_193.z, x_193.x) * vec4<f32>(x_195.x, x_195.y, x_195.z, x_195.z));
  let x_201 : vec4<f32> = x_173.unity_SHBr;
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_173.unity_SHBg;
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_173.unity_SHBb;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_213, x_214);
  let x_218 : f32 = u_xlat3.y;
  let x_220 : f32 = u_xlat3.y;
  u_xlat35 = (x_218 * x_220);
  let x_223 : f32 = u_xlat3.x;
  let x_225 : f32 = u_xlat3.x;
  let x_227 : f32 = u_xlat35;
  u_xlat35 = ((x_223 * x_225) + -(x_227));
  let x_232 : vec4<f32> = x_173.unity_SHC;
  let x_234 : f32 = u_xlat35;
  let x_237 : vec3<f32> = u_xlat6;
  let x_238 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(x_234, x_234, x_234)) + x_237);
  let x_239 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec3<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_241 + vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_245, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_250 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_251 : vec2<f32> = vec2<f32>(x_250.x, x_250.y);
  let x_255 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_251.x, x_251.y));
  let x_256 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_256.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat5;
  let x_260 : vec4<f32> = hlslcc_FragCoord;
  let x_262 : vec2<f32> = (vec2<f32>(x_258.x, x_258.y) * vec2<f32>(x_260.x, x_260.y));
  let x_263 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
  let x_266 : f32 = u_xlat5.y;
  let x_269 : f32 = x_44.x_ScaleBiasRt.x;
  let x_272 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_266 * x_269) + x_272);
  let x_274 : f32 = u_xlat35;
  u_xlat5.z = (-(x_274) + 1.0f);
  let x_279 : f32 = x_57.x_Metallic;
  u_xlat35 = ((-(x_279) * 0.959999979f) + 0.959999979f);
  let x_285 : f32 = u_xlat35;
  let x_288 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_285) + x_288);
  let x_291 : vec4<f32> = u_xlat1;
  let x_293 : f32 = u_xlat35;
  u_xlat12 = (vec3<f32>(x_291.y, x_291.z, x_291.w) * vec3<f32>(x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = x_57.x_BaseColor;
  let x_304 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_299.x, x_299.y, x_299.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_308 : f32 = x_57.x_Metallic;
  let x_310 : f32 = x_57.x_Metallic;
  let x_312 : f32 = x_57.x_Metallic;
  let x_313 : vec3<f32> = vec3<f32>(x_308, x_310, x_312);
  let x_318 : vec4<f32> = u_xlat0;
  let x_323 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_318.x, x_318.y, x_318.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_327) + 1.0f);
  let x_331 : f32 = u_xlat35;
  let x_332 : f32 = u_xlat35;
  u_xlat37 = (x_331 * x_332);
  let x_334 : f32 = u_xlat37;
  u_xlat37 = max(x_334, 0.0078125f);
  let x_338 : f32 = u_xlat37;
  let x_339 : f32 = u_xlat37;
  u_xlat16 = (x_338 * x_339);
  let x_341 : f32 = u_xlat36;
  u_xlat36 = (x_341 + 1.0f);
  let x_343 : f32 = u_xlat36;
  u_xlat36 = clamp(x_343, 0.0f, 1.0f);
  let x_346 : f32 = u_xlat37;
  u_xlat38 = ((x_346 * 4.0f) + 2.0f);
  let x_356 : vec4<f32> = u_xlat5;
  let x_359 : f32 = x_44.x_GlobalMipBias.x;
  let x_360 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_356.x, x_356.z), x_359);
  u_xlat5.x = x_360.x;
  let x_365 : f32 = u_xlat5.x;
  u_xlat27 = (x_365 + -1.0f);
  let x_370 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_371 : f32 = u_xlat27;
  u_xlat27 = ((x_370 * x_371) + 1.0f);
  let x_375 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_375, 1.0f);
  let x_380 : vec4<f32> = vs_TEXCOORD6;
  let x_381 : vec2<f32> = vec2<f32>(x_380.x, x_380.y);
  let x_383 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_381.x, x_381.y, x_383);
  let x_395 : vec3<f32> = txVec0;
  let x_397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_395.xy, x_395.z);
  u_xlat6.x = x_397;
  let x_406 : f32 = x_404.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_406) + 1.0f);
  let x_411 : f32 = u_xlat6.x;
  let x_413 : f32 = x_404.x_MainLightShadowParams.x;
  let x_416 : f32 = u_xlat17.x;
  u_xlat6.x = ((x_411 * x_413) + x_416);
  let x_421 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_421);
  let x_425 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_425 >= 1.0f);
  let x_427 : bool = u_xlatb28;
  let x_428 : bool = u_xlatb17;
  u_xlatb17 = (x_427 | x_428);
  let x_430 : bool = u_xlatb17;
  if (x_430) {
    x_431 = 1.0f;
  } else {
    let x_436 : f32 = u_xlat6.x;
    x_431 = x_436;
  }
  let x_437 : f32 = x_431;
  u_xlat6.x = x_437;
  let x_439 : vec3<f32> = vs_TEXCOORD1;
  let x_441 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_439 + -(x_441));
  let x_444 : vec3<f32> = u_xlat17;
  let x_445 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_444, x_445);
  let x_449 : f32 = u_xlat17.x;
  let x_451 : f32 = x_404.x_MainLightShadowParams.z;
  let x_454 : f32 = x_404.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_449 * x_451) + x_454);
  let x_458 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_458, 0.0f, 1.0f);
  let x_463 : f32 = u_xlat6.x;
  u_xlat28 = (-(x_463) + 1.0f);
  let x_467 : f32 = u_xlat17.x;
  let x_468 : f32 = u_xlat28;
  let x_471 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_467 * x_468) + x_471);
  let x_474 : f32 = u_xlat27;
  let x_477 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_481 : vec3<f32> = u_xlat2;
  let x_483 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_481), vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_488 : f32 = u_xlat7.x;
  let x_490 : f32 = u_xlat7.x;
  u_xlat7.x = (x_488 + x_490);
  let x_493 : vec4<f32> = u_xlat3;
  let x_495 : vec3<f32> = u_xlat7;
  let x_499 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_493.x, x_493.y, x_493.z) * -(vec3<f32>(x_495.x, x_495.x, x_495.x))) + -(x_499));
  let x_503 : vec4<f32> = u_xlat3;
  let x_505 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_503.x, x_503.y, x_503.z), x_505);
  let x_507 : f32 = u_xlat40;
  u_xlat40 = clamp(x_507, 0.0f, 1.0f);
  let x_509 : f32 = u_xlat40;
  u_xlat40 = (-(x_509) + 1.0f);
  let x_512 : f32 = u_xlat40;
  let x_513 : f32 = u_xlat40;
  u_xlat40 = (x_512 * x_513);
  let x_515 : f32 = u_xlat40;
  let x_516 : f32 = u_xlat40;
  u_xlat40 = (x_515 * x_516);
  let x_519 : f32 = u_xlat35;
  u_xlat8.x = ((-(x_519) * 0.699999988f) + 1.700000048f);
  let x_526 : f32 = u_xlat35;
  let x_528 : f32 = u_xlat8.x;
  u_xlat35 = (x_526 * x_528);
  let x_530 : f32 = u_xlat35;
  u_xlat35 = (x_530 * 6.0f);
  let x_541 : vec3<f32> = u_xlat7;
  let x_542 : f32 = u_xlat35;
  let x_543 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_541, x_542);
  u_xlat8 = x_543;
  let x_545 : f32 = u_xlat8.w;
  u_xlat35 = (x_545 + -1.0f);
  let x_548 : f32 = x_173.unity_SpecCube0_HDR.w;
  let x_549 : f32 = u_xlat35;
  u_xlat35 = ((x_548 * x_549) + 1.0f);
  let x_552 : f32 = u_xlat35;
  u_xlat35 = max(x_552, 0.0f);
  let x_554 : f32 = u_xlat35;
  u_xlat35 = log2(x_554);
  let x_556 : f32 = u_xlat35;
  let x_558 : f32 = x_173.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_556 * x_558);
  let x_560 : f32 = u_xlat35;
  u_xlat35 = exp2(x_560);
  let x_562 : f32 = u_xlat35;
  let x_564 : f32 = x_173.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_562 * x_564);
  let x_566 : vec4<f32> = u_xlat8;
  let x_568 : f32 = u_xlat35;
  u_xlat7 = (vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(x_568, x_568, x_568));
  let x_571 : f32 = u_xlat37;
  let x_573 : f32 = u_xlat37;
  let x_577 : vec2<f32> = ((vec2<f32>(x_571, x_571) * vec2<f32>(x_573, x_573)) + vec2<f32>(-1.0f, 1.0f));
  let x_578 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
  let x_581 : f32 = u_xlat8.y;
  u_xlat35 = (1.0f / x_581);
  let x_584 : vec4<f32> = u_xlat0;
  let x_587 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_584.x, x_584.y, x_584.z)) + vec3<f32>(x_587, x_587, x_587));
  let x_590 : f32 = u_xlat40;
  let x_592 : vec3<f32> = u_xlat19;
  let x_594 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_590, x_590, x_590) * x_592) + vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : f32 = u_xlat35;
  let x_599 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_597, x_597, x_597) * x_599);
  let x_601 : vec3<f32> = u_xlat7;
  let x_602 : vec3<f32> = u_xlat19;
  u_xlat7 = (x_601 * x_602);
  let x_604 : vec3<f32> = u_xlat4;
  let x_605 : vec3<f32> = u_xlat12;
  let x_607 : vec3<f32> = u_xlat7;
  u_xlat4 = ((x_604 * x_605) + x_607);
  let x_610 : f32 = u_xlat6.x;
  let x_613 : f32 = x_173.unity_LightData.z;
  u_xlat35 = (x_610 * x_613);
  let x_615 : vec4<f32> = u_xlat3;
  let x_618 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : f32 = u_xlat36;
  u_xlat36 = clamp(x_621, 0.0f, 1.0f);
  let x_623 : f32 = u_xlat35;
  let x_624 : f32 = u_xlat36;
  u_xlat35 = (x_623 * x_624);
  let x_626 : f32 = u_xlat35;
  let x_628 : vec3<f32> = u_xlat17;
  u_xlat6 = (vec3<f32>(x_626, x_626, x_626) * x_628);
  let x_630 : vec3<f32> = u_xlat2;
  let x_632 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_630 + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec3<f32> = u_xlat7;
  let x_636 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_635, x_636);
  let x_638 : f32 = u_xlat35;
  u_xlat35 = max(x_638, 1.17549435e-37f);
  let x_641 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_641);
  let x_643 : f32 = u_xlat35;
  let x_645 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_643, x_643, x_643) * x_645);
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), x_649);
  let x_651 : f32 = u_xlat35;
  u_xlat35 = clamp(x_651, 0.0f, 1.0f);
  let x_654 : vec4<f32> = x_44.x_MainLightPosition;
  let x_656 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_654.x, x_654.y, x_654.z), x_656);
  let x_658 : f32 = u_xlat36;
  u_xlat36 = clamp(x_658, 0.0f, 1.0f);
  let x_660 : f32 = u_xlat35;
  let x_661 : f32 = u_xlat35;
  u_xlat35 = (x_660 * x_661);
  let x_663 : f32 = u_xlat35;
  let x_665 : f32 = u_xlat8.x;
  u_xlat35 = ((x_663 * x_665) + 1.000010014f);
  let x_669 : f32 = u_xlat36;
  let x_670 : f32 = u_xlat36;
  u_xlat36 = (x_669 * x_670);
  let x_672 : f32 = u_xlat35;
  let x_673 : f32 = u_xlat35;
  u_xlat35 = (x_672 * x_673);
  let x_675 : f32 = u_xlat36;
  u_xlat36 = max(x_675, 0.100000001f);
  let x_678 : f32 = u_xlat35;
  let x_679 : f32 = u_xlat36;
  u_xlat35 = (x_678 * x_679);
  let x_681 : f32 = u_xlat38;
  let x_682 : f32 = u_xlat35;
  u_xlat35 = (x_681 * x_682);
  let x_684 : f32 = u_xlat16;
  let x_685 : f32 = u_xlat35;
  u_xlat35 = (x_684 / x_685);
  let x_687 : vec4<f32> = u_xlat0;
  let x_689 : f32 = u_xlat35;
  let x_692 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689, x_689, x_689)) + x_692);
  let x_694 : vec3<f32> = u_xlat6;
  let x_695 : vec3<f32> = u_xlat7;
  u_xlat6 = (x_694 * x_695);
  let x_698 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_700 : f32 = x_173.unity_LightData.y;
  u_xlat35 = min(x_698, x_700);
  let x_704 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_704));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_716 : u32 = u_xlatu_loop_1;
    let x_717 : u32 = u_xlatu35;
    if ((x_716 < x_717)) {
    } else {
      break;
    }
    let x_720 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_720 >> 2u);
    let x_724 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_724 & 3u));
    let x_727 : u32 = u_xlatu37;
    let x_730 : vec4<f32> = x_173.unity_LightIndices[bitcast<i32>(x_727)];
    let x_740 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_745 : vec4<u32> = indexable[x_740];
    u_xlat37 = dot(x_730, bitcast<vec4<f32>>(x_745));
    let x_749 : f32 = u_xlat37;
    u_xlati37 = i32(x_749);
    let x_751 : vec3<f32> = vs_TEXCOORD1;
    let x_763 : i32 = u_xlati37;
    let x_765 : vec4<f32> = x_762.x_AdditionalLightsPosition[x_763];
    let x_768 : i32 = u_xlati37;
    let x_770 : vec4<f32> = x_762.x_AdditionalLightsPosition[x_768];
    u_xlat19 = ((-(x_751) * vec3<f32>(x_765.w, x_765.w, x_765.w)) + vec3<f32>(x_770.x, x_770.y, x_770.z));
    let x_774 : vec3<f32> = u_xlat19;
    let x_775 : vec3<f32> = u_xlat19;
    u_xlat39 = dot(x_774, x_775);
    let x_777 : f32 = u_xlat39;
    u_xlat39 = max(x_777, 6.10351562e-05f);
    let x_780 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_780);
    let x_783 : f32 = u_xlat40;
    let x_785 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_783, x_783, x_783) * x_785);
    let x_788 : f32 = u_xlat39;
    u_xlat42 = (1.0f / x_788);
    let x_790 : f32 = u_xlat39;
    let x_791 : i32 = u_xlati37;
    let x_793 : f32 = x_762.x_AdditionalLightsAttenuation[x_791].x;
    u_xlat39 = (x_790 * x_793);
    let x_795 : f32 = u_xlat39;
    let x_797 : f32 = u_xlat39;
    u_xlat39 = ((-(x_795) * x_797) + 1.0f);
    let x_800 : f32 = u_xlat39;
    u_xlat39 = max(x_800, 0.0f);
    let x_802 : f32 = u_xlat39;
    let x_803 : f32 = u_xlat39;
    u_xlat39 = (x_802 * x_803);
    let x_805 : f32 = u_xlat39;
    let x_806 : f32 = u_xlat42;
    u_xlat39 = (x_805 * x_806);
    let x_808 : i32 = u_xlati37;
    let x_810 : vec4<f32> = x_762.x_AdditionalLightsSpotDir[x_808];
    let x_812 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_810.x, x_810.y, x_810.z), x_812);
    let x_814 : f32 = u_xlat42;
    let x_815 : i32 = u_xlati37;
    let x_817 : f32 = x_762.x_AdditionalLightsAttenuation[x_815].z;
    let x_819 : i32 = u_xlati37;
    let x_821 : f32 = x_762.x_AdditionalLightsAttenuation[x_819].w;
    u_xlat42 = ((x_814 * x_817) + x_821);
    let x_823 : f32 = u_xlat42;
    u_xlat42 = clamp(x_823, 0.0f, 1.0f);
    let x_825 : f32 = u_xlat42;
    let x_826 : f32 = u_xlat42;
    u_xlat42 = (x_825 * x_826);
    let x_828 : f32 = u_xlat39;
    let x_829 : f32 = u_xlat42;
    u_xlat39 = (x_828 * x_829);
    let x_832 : f32 = u_xlat27;
    let x_834 : i32 = u_xlati37;
    let x_836 : vec4<f32> = x_762.x_AdditionalLightsColor[x_834];
    u_xlat10 = (vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_836.x, x_836.y, x_836.z));
    let x_839 : vec4<f32> = u_xlat3;
    let x_841 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_839.x, x_839.y, x_839.z), x_841);
    let x_843 : f32 = u_xlat37;
    u_xlat37 = clamp(x_843, 0.0f, 1.0f);
    let x_845 : f32 = u_xlat37;
    let x_846 : f32 = u_xlat39;
    u_xlat37 = (x_845 * x_846);
    let x_848 : f32 = u_xlat37;
    let x_850 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_848, x_848, x_848) * x_850);
    let x_852 : vec3<f32> = u_xlat19;
    let x_853 : f32 = u_xlat40;
    let x_856 : vec3<f32> = u_xlat2;
    u_xlat19 = ((x_852 * vec3<f32>(x_853, x_853, x_853)) + x_856);
    let x_858 : vec3<f32> = u_xlat19;
    let x_859 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_858, x_859);
    let x_861 : f32 = u_xlat37;
    u_xlat37 = max(x_861, 1.17549435e-37f);
    let x_863 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_863);
    let x_865 : f32 = u_xlat37;
    let x_867 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_865, x_865, x_865) * x_867);
    let x_869 : vec4<f32> = u_xlat3;
    let x_871 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(vec3<f32>(x_869.x, x_869.y, x_869.z), x_871);
    let x_873 : f32 = u_xlat37;
    u_xlat37 = clamp(x_873, 0.0f, 1.0f);
    let x_875 : vec3<f32> = u_xlat9;
    let x_876 : vec3<f32> = u_xlat19;
    u_xlat39 = dot(x_875, x_876);
    let x_878 : f32 = u_xlat39;
    u_xlat39 = clamp(x_878, 0.0f, 1.0f);
    let x_880 : f32 = u_xlat37;
    let x_881 : f32 = u_xlat37;
    u_xlat37 = (x_880 * x_881);
    let x_883 : f32 = u_xlat37;
    let x_885 : f32 = u_xlat8.x;
    u_xlat37 = ((x_883 * x_885) + 1.000010014f);
    let x_888 : f32 = u_xlat39;
    let x_889 : f32 = u_xlat39;
    u_xlat39 = (x_888 * x_889);
    let x_891 : f32 = u_xlat37;
    let x_892 : f32 = u_xlat37;
    u_xlat37 = (x_891 * x_892);
    let x_894 : f32 = u_xlat39;
    u_xlat39 = max(x_894, 0.100000001f);
    let x_896 : f32 = u_xlat37;
    let x_897 : f32 = u_xlat39;
    u_xlat37 = (x_896 * x_897);
    let x_899 : f32 = u_xlat38;
    let x_900 : f32 = u_xlat37;
    u_xlat37 = (x_899 * x_900);
    let x_902 : f32 = u_xlat16;
    let x_903 : f32 = u_xlat37;
    u_xlat37 = (x_902 / x_903);
    let x_905 : vec4<f32> = u_xlat0;
    let x_907 : f32 = u_xlat37;
    let x_910 : vec3<f32> = u_xlat12;
    u_xlat19 = ((vec3<f32>(x_905.x, x_905.y, x_905.z) * vec3<f32>(x_907, x_907, x_907)) + x_910);
    let x_912 : vec3<f32> = u_xlat19;
    let x_913 : vec3<f32> = u_xlat10;
    let x_915 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_912 * x_913) + x_915);

    continuing {
      let x_917 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_917 + bitcast<u32>(1i));
    }
  }
  let x_919 : vec3<f32> = u_xlat4;
  let x_920 : vec4<f32> = u_xlat5;
  let x_923 : vec3<f32> = u_xlat6;
  let x_924 : vec3<f32> = ((x_919 * vec3<f32>(x_920.x, x_920.x, x_920.x)) + x_923);
  let x_925 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec3<f32> = u_xlat7;
  let x_928 : vec4<f32> = u_xlat0;
  let x_930 : vec3<f32> = (x_927 + vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : f32 = u_xlat33;
  let x_934 : f32 = u_xlat33;
  u_xlat33 = (x_933 * -(x_934));
  let x_937 : f32 = u_xlat33;
  u_xlat33 = exp2(x_937);
  let x_939 : vec4<f32> = u_xlat0;
  let x_943 : vec4<f32> = x_44.unity_FogColor;
  let x_946 : vec3<f32> = (vec3<f32>(x_939.x, x_939.y, x_939.z) + -(vec3<f32>(x_943.x, x_943.y, x_943.z)));
  let x_947 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_951 : f32 = u_xlat33;
  let x_953 : vec4<f32> = u_xlat0;
  let x_957 : vec4<f32> = x_44.unity_FogColor;
  let x_959 : vec3<f32> = ((vec3<f32>(x_951, x_951, x_951) * vec3<f32>(x_953.x, x_953.y, x_953.z)) + vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_965 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_965 == 1.0f);
  let x_967 : bool = u_xlatb0;
  if (x_967) {
    let x_972 : f32 = u_xlat1.x;
    x_968 = x_972;
  } else {
    x_968 = 1.0f;
  }
  let x_974 : f32 = x_968;
  SV_Target0.w = x_974;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

