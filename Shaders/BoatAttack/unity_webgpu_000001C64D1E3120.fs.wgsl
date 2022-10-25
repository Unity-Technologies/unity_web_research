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
  x_MainTex_TexelSize : vec4<f32>,
  x_MRLL_TexelSize : vec4<f32>,
  x_BumpMap_TexelSize : vec4<f32>,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
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

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(6) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_268 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_522 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2191 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlatb21 : vec3<bool>;
  var u_xlat21 : vec3<f32>;
  var u_xlatb20 : bool;
  var u_xlat40 : f32;
  var x_360 : f32;
  var x_373 : f32;
  var x_384 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlatb63 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat25 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat66 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat65 : f32;
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
  var u_xlatb25 : bool;
  var u_xlatu20 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati63 : i32;
  var u_xlat67 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_57 : vec4<f32> = vs_INTERP3;
  let x_60 : f32 = x_44.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1 = x_61;
  let x_64 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_68.x_Color2;
  u_xlat2 = (vec3<f32>(x_64.w, x_64.w, x_64.w) * vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_77 : vec4<f32> = x_68.x_Color1;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_79.z, x_79.z, x_79.z)) + x_82);
  let x_87 : f32 = u_xlat1.w;
  let x_90 : f32 = u_xlat1.z;
  u_xlat41 = (x_87 + x_90);
  let x_92 : f32 = u_xlat41;
  u_xlat41 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat3 = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec3<f32> = u_xlat3;
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_101 + x_102);
  let x_105 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec3<f32> = u_xlat3;
  let x_110 : vec3<f32> = u_xlat4;
  u_xlat3 = ((-(x_108) * x_110) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_113.x, x_113.y, x_113.z) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec3<f32> = u_xlat2;
  let x_119 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_118 * x_119);
  let x_127 : vec4<f32> = u_xlat0;
  let x_130 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_127.x, x_127.y, x_127.z, x_127.x));
  u_xlatb4 = vec3<bool>(x_130.x, x_130.y, x_130.z);
  let x_135 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_135);
  let x_140 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_140);
  let x_144 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_144);
  let x_148 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_148);
  let x_152 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_152);
  let x_156 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_156);
  let x_159 : vec3<f32> = u_xlat3;
  let x_160 : vec3<f32> = u_xlat4;
  u_xlat3 = (x_159 * x_160);
  let x_162 : vec3<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat5;
  let x_166 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_162 * vec3<f32>(x_163.x, x_163.y, x_163.z)) + x_166);
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_168.x, x_168.y, x_168.z)) + x_171);
  let x_173 : f32 = u_xlat41;
  let x_175 : vec3<f32> = u_xlat2;
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_173, x_173, x_173) * x_175) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : f32 = u_xlat0.x;
  u_xlat0.x = (x_181 + -0.150000006f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_190) + 1.0f);
  let x_194 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_194.x, x_194.x, x_194.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_199);
  let x_205 : vec4<f32> = vs_INTERP3;
  let x_208 : f32 = x_44.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_205.x, x_205.y), x_208);
  u_xlat3 = vec3<f32>(x_209.x, x_209.y, x_209.w);
  let x_212 : f32 = u_xlat3.x;
  let x_214 : f32 = u_xlat3.z;
  u_xlat3.x = (x_212 * x_214);
  let x_219 : vec3<f32> = u_xlat3;
  u_xlat20 = ((vec2<f32>(x_219.x, x_219.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_227 : vec2<f32> = u_xlat20;
  let x_228 : vec2<f32> = u_xlat20;
  u_xlat41 = dot(x_227, x_228);
  let x_230 : f32 = u_xlat41;
  u_xlat41 = min(x_230, 1.0f);
  let x_232 : f32 = u_xlat41;
  u_xlat41 = (-(x_232) + 1.0f);
  let x_235 : f32 = u_xlat41;
  u_xlat41 = sqrt(x_235);
  let x_237 : f32 = u_xlat41;
  u_xlat41 = max(x_237, 1.00000002e-16f);
  let x_241 : f32 = u_xlat1.x;
  let x_243 : f32 = u_xlat0.x;
  u_xlat0.x = (x_241 + x_243);
  let x_247 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_247, 0.0f, 1.0f);
  let x_251 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_251, 0.0f);
  let x_255 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_255, 0.850000024f);
  let x_262 : f32 = vs_INTERP2.w;
  u_xlatb21.x = (0.0f < x_262);
  let x_270 : f32 = x_268.unity_WorldTransformParams.w;
  u_xlatb21.z = (x_270 >= 0.0f);
  let x_275 : bool = u_xlatb21.x;
  u_xlat21.x = select(-1.0f, 1.0f, x_275);
  let x_279 : bool = u_xlatb21.z;
  u_xlat21.z = select(-1.0f, 1.0f, x_279);
  let x_283 : f32 = u_xlat21.z;
  let x_285 : f32 = u_xlat21.x;
  u_xlat21.x = (x_283 * x_285);
  let x_290 : vec3<f32> = vs_INTERP1;
  let x_292 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_290.z, x_290.x, x_290.y) * vec3<f32>(x_292.y, x_292.z, x_292.x));
  let x_295 : vec3<f32> = vs_INTERP1;
  let x_297 : vec4<f32> = vs_INTERP2;
  let x_300 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_295.y, x_295.z, x_295.x) * vec3<f32>(x_297.z, x_297.x, x_297.y)) + -(x_300));
  let x_303 : vec3<f32> = u_xlat21;
  let x_305 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_303.x, x_303.x, x_303.x) * x_305);
  let x_307 : vec2<f32> = u_xlat20;
  let x_309 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_307.y, x_307.y, x_307.y) * x_309);
  let x_311 : vec2<f32> = u_xlat20;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_316 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z)) + x_316);
  let x_318 : f32 = u_xlat41;
  let x_320 : vec3<f32> = vs_INTERP1;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat21 = ((vec3<f32>(x_318, x_318, x_318) * x_320) + x_322);
  let x_324 : vec3<f32> = u_xlat21;
  let x_325 : vec3<f32> = u_xlat21;
  u_xlat20.x = dot(x_324, x_325);
  let x_329 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_329);
  let x_332 : vec2<f32> = u_xlat20;
  let x_334 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_332.x, x_332.x, x_332.x) * x_334);
  let x_339 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb20 = (x_339 == 0.0f);
  let x_342 : vec3<f32> = vs_INTERP0;
  let x_347 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_342) + x_347);
  let x_350 : vec3<f32> = u_xlat3;
  let x_351 : vec3<f32> = u_xlat3;
  u_xlat40 = dot(x_350, x_351);
  let x_353 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_353);
  let x_355 : f32 = u_xlat40;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_355, x_355, x_355) * x_357);
  let x_359 : bool = u_xlatb20;
  if (x_359) {
    let x_364 : f32 = u_xlat3.x;
    x_360 = x_364;
  } else {
    let x_369 : f32 = x_44.unity_MatrixV[0i].z;
    x_360 = x_369;
  }
  let x_370 : f32 = x_360;
  u_xlat4.x = x_370;
  let x_372 : bool = u_xlatb20;
  if (x_372) {
    let x_377 : f32 = u_xlat3.y;
    x_373 = x_377;
  } else {
    let x_380 : f32 = x_44.unity_MatrixV[1i].z;
    x_373 = x_380;
  }
  let x_381 : f32 = x_373;
  u_xlat4.y = x_381;
  let x_383 : bool = u_xlatb20;
  if (x_383) {
    let x_388 : f32 = u_xlat3.z;
    x_384 = x_388;
  } else {
    let x_392 : f32 = x_44.unity_MatrixV[2i].z;
    x_384 = x_392;
  }
  let x_393 : f32 = x_384;
  u_xlat4.z = x_393;
  let x_402 : vec2<f32> = vs_INTERP4;
  let x_404 : f32 = x_44.x_GlobalMipBias.x;
  let x_405 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_402, x_404);
  u_xlat3 = vec3<f32>(x_405.x, x_405.y, x_405.z);
  let x_409 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_410 : vec2<f32> = vec2<f32>(x_409.x, x_409.y);
  u_xlat20 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_410.x, x_410.y));
  let x_415 : vec2<f32> = u_xlat20;
  let x_416 : vec4<f32> = hlslcc_FragCoord;
  let x_418 : vec2<f32> = (x_415 * vec2<f32>(x_416.x, x_416.y));
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_422 : f32 = u_xlat5.y;
  let x_425 : f32 = x_44.x_ScaleBiasRt.x;
  let x_428 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat20.x = ((x_422 * x_425) + x_428);
  let x_432 : f32 = u_xlat20.x;
  u_xlat5.z = (-(x_432) + 1.0f);
  let x_437 : f32 = u_xlat0.x;
  u_xlat20.x = ((-(x_437) * 0.959999979f) + 0.959999979f);
  let x_444 : f32 = u_xlat20.x;
  let x_447 : f32 = u_xlat1.x;
  u_xlat40 = (-(x_444) + x_447);
  let x_450 : vec2<f32> = u_xlat20;
  let x_452 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_450.x, x_450.x, x_450.x) * x_452);
  let x_454 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_454 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_458.x, x_458.x, x_458.x) * x_460) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_466 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  let x_473 : f32 = u_xlat0.x;
  u_xlat20.x = (x_471 * x_473);
  let x_477 : f32 = u_xlat20.x;
  let x_479 : f32 = u_xlat20.x;
  u_xlat1.x = (x_477 * x_479);
  let x_482 : f32 = u_xlat40;
  u_xlat40 = (x_482 + 1.0f);
  let x_484 : f32 = u_xlat40;
  u_xlat40 = min(x_484, 1.0f);
  let x_488 : f32 = u_xlat20.x;
  u_xlat62 = ((x_488 * 4.0f) + 2.0f);
  let x_498 : vec4<f32> = u_xlat5;
  let x_501 : f32 = x_44.x_GlobalMipBias.x;
  let x_502 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_498.x, x_498.z), x_501);
  u_xlat63 = x_502.x;
  let x_505 : f32 = u_xlat63;
  u_xlat64 = (x_505 + -1.0f);
  let x_508 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_509 : f32 = u_xlat64;
  u_xlat64 = ((x_508 * x_509) + 1.0f);
  let x_514 : f32 = u_xlat0.w;
  let x_515 : f32 = u_xlat63;
  u_xlat60 = min(x_514, x_515);
  let x_524 : f32 = x_522.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_524);
  let x_526 : bool = u_xlatb63;
  if (x_526) {
    let x_530 : f32 = x_522.x_MainLightShadowParams.y;
    u_xlatb63 = (x_530 == 1.0f);
    let x_532 : bool = u_xlatb63;
    if (x_532) {
      let x_536 : vec4<f32> = vs_INTERP8;
      let x_539 : vec4<f32> = x_522.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_536.x, x_536.y, x_536.x, x_536.y) + x_539);
      let x_542 : vec4<f32> = u_xlat5;
      let x_543 : vec2<f32> = vec2<f32>(x_542.x, x_542.y);
      let x_545 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_543.x, x_543.y, x_545);
      let x_558 : vec3<f32> = txVec0;
      let x_560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_558.xy, x_558.z);
      u_xlat7.x = x_560;
      let x_563 : vec4<f32> = u_xlat5;
      let x_564 : vec2<f32> = vec2<f32>(x_563.z, x_563.w);
      let x_566 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_564.x, x_564.y, x_566);
      let x_573 : vec3<f32> = txVec1;
      let x_575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_573.xy, x_573.z);
      u_xlat7.y = x_575;
      let x_577 : vec4<f32> = vs_INTERP8;
      let x_580 : vec4<f32> = x_522.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_577.x, x_577.y, x_577.x, x_577.y) + x_580);
      let x_583 : vec4<f32> = u_xlat5;
      let x_584 : vec2<f32> = vec2<f32>(x_583.x, x_583.y);
      let x_586 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_584.x, x_584.y, x_586);
      let x_593 : vec3<f32> = txVec2;
      let x_595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_593.xy, x_593.z);
      u_xlat7.z = x_595;
      let x_598 : vec4<f32> = u_xlat5;
      let x_599 : vec2<f32> = vec2<f32>(x_598.z, x_598.w);
      let x_601 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_599.x, x_599.y, x_601);
      let x_608 : vec3<f32> = txVec3;
      let x_610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_608.xy, x_608.z);
      u_xlat7.w = x_610;
      let x_612 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_612, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_619 : f32 = x_522.x_MainLightShadowParams.y;
      u_xlatb5 = (x_619 == 2.0f);
      let x_621 : bool = u_xlatb5;
      if (x_621) {
        let x_624 : vec4<f32> = vs_INTERP8;
        let x_627 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_631 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_627.z, x_627.w)) + vec2<f32>(0.5f, 0.5f));
        let x_632 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
        let x_634 : vec4<f32> = u_xlat5;
        let x_636 : vec2<f32> = floor(vec2<f32>(x_634.x, x_634.y));
        let x_637 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_640 : vec4<f32> = vs_INTERP8;
        let x_643 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_646 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_640.x, x_640.y) * vec2<f32>(x_643.z, x_643.w)) + -(vec2<f32>(x_646.x, x_646.y)));
        let x_650 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_650.x, x_650.x, x_650.y, x_650.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_655 : vec4<f32> = u_xlat7;
        let x_657 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_655.x, x_655.x, x_655.z, x_655.z) * vec4<f32>(x_657.x, x_657.x, x_657.z, x_657.z));
        let x_660 : vec4<f32> = u_xlat8;
        let x_664 : vec2<f32> = (vec2<f32>(x_660.y, x_660.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_664.x, x_665.y, x_664.y, x_665.w);
        let x_667 : vec4<f32> = u_xlat8;
        let x_670 : vec2<f32> = u_xlat45;
        let x_672 : vec2<f32> = ((vec2<f32>(x_667.x, x_667.z) * vec2<f32>(0.5f, 0.5f)) + -(x_670));
        let x_673 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_676 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_676) + vec2<f32>(1.0f, 1.0f));
        let x_680 : vec2<f32> = u_xlat45;
        let x_682 : vec2<f32> = min(x_680, vec2<f32>(0.0f, 0.0f));
        let x_683 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat9;
        let x_688 : vec4<f32> = u_xlat9;
        let x_691 : vec2<f32> = u_xlat48;
        let x_692 : vec2<f32> = ((-(vec2<f32>(x_685.x, x_685.y)) * vec2<f32>(x_688.x, x_688.y)) + x_691);
        let x_693 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_695 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_695, vec2<f32>(0.0f, 0.0f));
        let x_697 : vec2<f32> = u_xlat45;
        let x_699 : vec2<f32> = u_xlat45;
        let x_701 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_697) * x_699) + vec2<f32>(x_701.y, x_701.w));
        let x_704 : vec4<f32> = u_xlat9;
        let x_706 : vec2<f32> = (vec2<f32>(x_704.x, x_704.y) + vec2<f32>(1.0f, 1.0f));
        let x_707 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
        let x_709 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_709 + vec2<f32>(1.0f, 1.0f));
        let x_712 : vec4<f32> = u_xlat8;
        let x_716 : vec2<f32> = (vec2<f32>(x_712.x, x_712.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_717 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
        let x_719 : vec2<f32> = u_xlat48;
        let x_720 : vec2<f32> = (x_719 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_721 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat9;
        let x_725 : vec2<f32> = (vec2<f32>(x_723.x, x_723.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_729 : vec2<f32> = u_xlat45;
        let x_730 : vec2<f32> = (x_729 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_733.y, x_733.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_737 : f32 = u_xlat9.x;
        u_xlat10.z = x_737;
        let x_740 : f32 = u_xlat45.x;
        u_xlat10.w = x_740;
        let x_743 : f32 = u_xlat11.x;
        u_xlat8.z = x_743;
        let x_746 : f32 = u_xlat7.x;
        u_xlat8.w = x_746;
        let x_749 : vec4<f32> = u_xlat8;
        let x_751 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_749.z, x_749.w, x_749.x, x_749.z) + vec4<f32>(x_751.z, x_751.w, x_751.x, x_751.z));
        let x_755 : f32 = u_xlat10.y;
        u_xlat9.z = x_755;
        let x_758 : f32 = u_xlat45.y;
        u_xlat9.w = x_758;
        let x_761 : f32 = u_xlat8.y;
        u_xlat11.z = x_761;
        let x_764 : f32 = u_xlat7.z;
        u_xlat11.w = x_764;
        let x_766 : vec4<f32> = u_xlat9;
        let x_768 : vec4<f32> = u_xlat11;
        let x_770 : vec3<f32> = (vec3<f32>(x_766.z, x_766.y, x_766.w) + vec3<f32>(x_768.z, x_768.y, x_768.w));
        let x_771 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
        let x_773 : vec4<f32> = u_xlat8;
        let x_775 : vec4<f32> = u_xlat12;
        let x_777 : vec3<f32> = (vec3<f32>(x_773.x, x_773.z, x_773.w) / vec3<f32>(x_775.z, x_775.w, x_775.y));
        let x_778 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_780 : vec4<f32> = u_xlat8;
        let x_786 : vec3<f32> = (vec3<f32>(x_780.x, x_780.y, x_780.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_787 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
        let x_789 : vec4<f32> = u_xlat11;
        let x_791 : vec4<f32> = u_xlat7;
        let x_793 : vec3<f32> = (vec3<f32>(x_789.z, x_789.y, x_789.w) / vec3<f32>(x_791.x, x_791.y, x_791.z));
        let x_794 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat9;
        let x_798 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_799 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat8;
        let x_804 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_806 : vec3<f32> = (vec3<f32>(x_801.y, x_801.x, x_801.z) * vec3<f32>(x_804.x, x_804.x, x_804.x));
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat9;
        let x_812 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_814 : vec3<f32> = (vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_812.y, x_812.y, x_812.y));
        let x_815 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
        let x_818 : f32 = u_xlat9.x;
        u_xlat8.w = x_818;
        let x_820 : vec4<f32> = u_xlat5;
        let x_823 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_826 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y) * vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y)) + vec4<f32>(x_826.y, x_826.w, x_826.x, x_826.w));
        let x_829 : vec4<f32> = u_xlat5;
        let x_832 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(x_832.x, x_832.y)) + vec2<f32>(x_835.z, x_835.w));
        let x_839 : f32 = u_xlat8.y;
        u_xlat9.w = x_839;
        let x_841 : vec4<f32> = u_xlat9;
        let x_842 : vec2<f32> = vec2<f32>(x_841.y, x_841.z);
        let x_843 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_843.x, x_842.x, x_843.z, x_842.y);
        let x_845 : vec4<f32> = u_xlat5;
        let x_848 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_851 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_845.x, x_845.y, x_845.x, x_845.y) * vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y)) + vec4<f32>(x_851.x, x_851.y, x_851.z, x_851.y));
        let x_854 : vec4<f32> = u_xlat5;
        let x_857 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_860 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_854.x, x_854.y, x_854.x, x_854.y) * vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.y)) + vec4<f32>(x_860.w, x_860.y, x_860.w, x_860.z));
        let x_863 : vec4<f32> = u_xlat5;
        let x_866 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.y) * vec4<f32>(x_866.x, x_866.y, x_866.x, x_866.y)) + vec4<f32>(x_869.x, x_869.w, x_869.z, x_869.w));
        let x_873 : vec4<f32> = u_xlat7;
        let x_875 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_873.x, x_873.x, x_873.x, x_873.y) * vec4<f32>(x_875.z, x_875.w, x_875.y, x_875.z));
        let x_879 : vec4<f32> = u_xlat7;
        let x_881 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_879.y, x_879.y, x_879.z, x_879.z) * x_881);
        let x_884 : f32 = u_xlat7.z;
        let x_886 : f32 = u_xlat12.y;
        u_xlat5.x = (x_884 * x_886);
        let x_890 : vec4<f32> = u_xlat10;
        let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
        let x_893 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_901 : vec3<f32> = txVec4;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_901.xy, x_901.z);
        u_xlat25 = x_903;
        let x_905 : vec4<f32> = u_xlat10;
        let x_906 : vec2<f32> = vec2<f32>(x_905.z, x_905.w);
        let x_908 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_906.x, x_906.y, x_908);
        let x_916 : vec3<f32> = txVec5;
        let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_916.xy, x_916.z);
        u_xlat66 = x_918;
        let x_919 : f32 = u_xlat66;
        let x_921 : f32 = u_xlat13.y;
        u_xlat66 = (x_919 * x_921);
        let x_924 : f32 = u_xlat13.x;
        let x_925 : f32 = u_xlat25;
        let x_927 : f32 = u_xlat66;
        u_xlat25 = ((x_924 * x_925) + x_927);
        let x_930 : vec2<f32> = u_xlat45;
        let x_932 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec6;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_939.xy, x_939.z);
        u_xlat45.x = x_941;
        let x_944 : f32 = u_xlat13.z;
        let x_946 : f32 = u_xlat45.x;
        let x_948 : f32 = u_xlat25;
        u_xlat25 = ((x_944 * x_946) + x_948);
        let x_951 : vec4<f32> = u_xlat9;
        let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
        let x_954 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec7;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_961.xy, x_961.z);
        u_xlat45.x = x_963;
        let x_966 : f32 = u_xlat13.w;
        let x_968 : f32 = u_xlat45.x;
        let x_970 : f32 = u_xlat25;
        u_xlat25 = ((x_966 * x_968) + x_970);
        let x_973 : vec4<f32> = u_xlat11;
        let x_974 : vec2<f32> = vec2<f32>(x_973.x, x_973.y);
        let x_976 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_983 : vec3<f32> = txVec8;
        let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_983.xy, x_983.z);
        u_xlat45.x = x_985;
        let x_988 : f32 = u_xlat14.x;
        let x_990 : f32 = u_xlat45.x;
        let x_992 : f32 = u_xlat25;
        u_xlat25 = ((x_988 * x_990) + x_992);
        let x_995 : vec4<f32> = u_xlat11;
        let x_996 : vec2<f32> = vec2<f32>(x_995.z, x_995.w);
        let x_998 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec9;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
        u_xlat45.x = x_1007;
        let x_1010 : f32 = u_xlat14.y;
        let x_1012 : f32 = u_xlat45.x;
        let x_1014 : f32 = u_xlat25;
        u_xlat25 = ((x_1010 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.z, x_1017.w);
        let x_1020 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec10;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
        u_xlat45.x = x_1029;
        let x_1032 : f32 = u_xlat14.z;
        let x_1034 : f32 = u_xlat45.x;
        let x_1036 : f32 = u_xlat25;
        u_xlat25 = ((x_1032 * x_1034) + x_1036);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.x, x_1039.y);
        let x_1042 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec11;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1049.xy, x_1049.z);
        u_xlat45.x = x_1051;
        let x_1054 : f32 = u_xlat14.w;
        let x_1056 : f32 = u_xlat45.x;
        let x_1058 : f32 = u_xlat25;
        u_xlat25 = ((x_1054 * x_1056) + x_1058);
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec12;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1071.xy, x_1071.z);
        u_xlat45.x = x_1073;
        let x_1076 : f32 = u_xlat5.x;
        let x_1078 : f32 = u_xlat45.x;
        let x_1080 : f32 = u_xlat25;
        u_xlat63 = ((x_1076 * x_1078) + x_1080);
      } else {
        let x_1083 : vec4<f32> = vs_INTERP8;
        let x_1086 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1086.z, x_1086.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1090 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat5;
        let x_1094 : vec2<f32> = floor(vec2<f32>(x_1092.x, x_1092.y));
        let x_1095 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec4<f32> = vs_INTERP8;
        let x_1100 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.z, x_1100.w)) + -(vec2<f32>(x_1103.x, x_1103.y)));
        let x_1107 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1107.x, x_1107.x, x_1107.y, x_1107.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1110 : vec4<f32> = u_xlat7;
        let x_1112 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1110.x, x_1110.x, x_1110.z, x_1110.z) * vec4<f32>(x_1112.x, x_1112.x, x_1112.z, x_1112.z));
        let x_1115 : vec4<f32> = u_xlat8;
        let x_1119 : vec2<f32> = (vec2<f32>(x_1115.y, x_1115.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1120.x, x_1119.x, x_1120.z, x_1119.y);
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = u_xlat45;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1125));
        let x_1128 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1127.x, x_1128.y, x_1127.y, x_1128.w);
        let x_1130 : vec2<f32> = u_xlat45;
        let x_1132 : vec2<f32> = (-(x_1130) + vec2<f32>(1.0f, 1.0f));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1135, vec2<f32>(0.0f, 0.0f));
        let x_1137 : vec2<f32> = u_xlat48;
        let x_1139 : vec2<f32> = u_xlat48;
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1143 : vec2<f32> = ((-(x_1137) * x_1139) + vec2<f32>(x_1141.x, x_1141.y));
        let x_1144 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1146, vec2<f32>(0.0f, 0.0f));
        let x_1149 : vec2<f32> = u_xlat48;
        let x_1151 : vec2<f32> = u_xlat48;
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1155 : vec2<f32> = ((-(x_1149) * x_1151) + vec2<f32>(x_1153.y, x_1153.w));
        let x_1156 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1155.x, x_1156.y, x_1155.y);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) + vec2<f32>(2.0f, 2.0f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec3<f32> = u_xlat27;
        let x_1165 : vec2<f32> = (vec2<f32>(x_1163.x, x_1163.z) + vec2<f32>(2.0f, 2.0f));
        let x_1166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1166.x, x_1165.x, x_1166.z, x_1165.y);
        let x_1169 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1169 * 0.081632003f);
        let x_1173 : vec4<f32> = u_xlat7;
        let x_1176 : vec3<f32> = (vec3<f32>(x_1173.z, x_1173.x, x_1173.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1177 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1182 : vec2<f32> = (vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1183 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
        let x_1186 : f32 = u_xlat11.y;
        u_xlat10.x = x_1186;
        let x_1188 : vec2<f32> = u_xlat45;
        let x_1195 : vec2<f32> = ((vec2<f32>(x_1188.x, x_1188.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1196 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1196.x, x_1195.x, x_1196.z, x_1195.y);
        let x_1198 : vec2<f32> = u_xlat45;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1198.x, x_1198.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1202.x, x_1203.y, x_1202.y, x_1203.w);
        let x_1206 : f32 = u_xlat7.x;
        u_xlat8.y = x_1206;
        let x_1209 : f32 = u_xlat9.y;
        u_xlat8.w = x_1209;
        let x_1211 : vec4<f32> = u_xlat8;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1211 + x_1212);
        let x_1214 : vec2<f32> = u_xlat45;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1214.y, x_1214.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1218.x, x_1217.x, x_1218.z, x_1217.y);
        let x_1220 : vec2<f32> = u_xlat45;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1220.y, x_1220.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1224 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1223.x, x_1224.y, x_1223.y, x_1224.w);
        let x_1227 : f32 = u_xlat7.y;
        u_xlat9.y = x_1227;
        let x_1229 : vec4<f32> = u_xlat9;
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1229 + x_1230);
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1233 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1232 / x_1233);
        let x_1235 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1235 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1241 : vec4<f32> = u_xlat9;
        let x_1242 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1241 / x_1242);
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1244 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1246 : vec4<f32> = u_xlat8;
        let x_1249 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1246.w, x_1246.x, x_1246.y, x_1246.z) * vec4<f32>(x_1249.x, x_1249.x, x_1249.x, x_1249.x));
        let x_1252 : vec4<f32> = u_xlat9;
        let x_1255 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1252.x, x_1252.w, x_1252.y, x_1252.z) * vec4<f32>(x_1255.y, x_1255.y, x_1255.y, x_1255.y));
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1259 : vec3<f32> = vec3<f32>(x_1258.y, x_1258.z, x_1258.w);
        let x_1260 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1259.x, x_1260.y, x_1259.y, x_1259.z);
        let x_1263 : f32 = u_xlat9.x;
        u_xlat11.y = x_1263;
        let x_1265 : vec4<f32> = u_xlat5;
        let x_1268 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat5;
        let x_1277 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.w, x_1280.y));
        let x_1284 : f32 = u_xlat11.y;
        u_xlat8.y = x_1284;
        let x_1287 : f32 = u_xlat9.z;
        u_xlat11.y = x_1287;
        let x_1289 : vec4<f32> = u_xlat5;
        let x_1292 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.y));
        let x_1298 : vec4<f32> = u_xlat5;
        let x_1301 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1306 : vec2<f32> = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y)) + vec2<f32>(x_1304.w, x_1304.y));
        let x_1307 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1306.x, x_1306.y, x_1307.z, x_1307.w);
        let x_1310 : f32 = u_xlat11.y;
        u_xlat8.z = x_1310;
        let x_1313 : vec4<f32> = u_xlat5;
        let x_1316 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.y, x_1319.x, x_1319.z));
        let x_1323 : f32 = u_xlat9.w;
        u_xlat11.y = x_1323;
        let x_1326 : vec4<f32> = u_xlat5;
        let x_1329 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y) * vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y)) + vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1332.y));
        let x_1336 : vec4<f32> = u_xlat5;
        let x_1339 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.w, x_1342.y));
        let x_1346 : f32 = u_xlat11.y;
        u_xlat8.w = x_1346;
        let x_1349 : vec4<f32> = u_xlat5;
        let x_1352 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1349.x, x_1349.y) * vec2<f32>(x_1352.x, x_1352.y)) + vec2<f32>(x_1355.x, x_1355.w));
        let x_1358 : vec4<f32> = u_xlat11;
        let x_1359 : vec3<f32> = vec3<f32>(x_1358.x, x_1358.z, x_1358.w);
        let x_1360 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1359.x, x_1360.y, x_1359.y, x_1359.z);
        let x_1362 : vec4<f32> = u_xlat5;
        let x_1365 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y) * vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y)) + vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1368.y));
        let x_1372 : vec4<f32> = u_xlat5;
        let x_1375 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1375.x, x_1375.y)) + vec2<f32>(x_1378.w, x_1378.y));
        let x_1382 : f32 = u_xlat8.x;
        u_xlat9.x = x_1382;
        let x_1384 : vec4<f32> = u_xlat5;
        let x_1387 : vec4<f32> = x_522.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat9;
        let x_1392 : vec2<f32> = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1390.x, x_1390.y));
        let x_1393 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
        let x_1396 : vec4<f32> = u_xlat7;
        let x_1398 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1396.x, x_1396.x, x_1396.x, x_1396.x) * x_1398);
        let x_1401 : vec4<f32> = u_xlat7;
        let x_1403 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1401.y, x_1401.y, x_1401.y, x_1401.y) * x_1403);
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1408 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1406.z, x_1406.z, x_1406.z, x_1406.z) * x_1408);
        let x_1410 : vec4<f32> = u_xlat7;
        let x_1412 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1410.w, x_1410.w, x_1410.w, x_1410.w) * x_1412);
        let x_1415 : vec4<f32> = u_xlat12;
        let x_1416 : vec2<f32> = vec2<f32>(x_1415.x, x_1415.y);
        let x_1418 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec13;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1425.xy, x_1425.z);
        u_xlat66 = x_1427;
        let x_1429 : vec4<f32> = u_xlat12;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.z, x_1429.w);
        let x_1432 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec14;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat8.x = x_1441;
        let x_1444 : f32 = u_xlat8.x;
        let x_1446 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1444 * x_1446);
        let x_1450 : f32 = u_xlat17.x;
        let x_1451 : f32 = u_xlat66;
        let x_1454 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1450 * x_1451) + x_1454);
        let x_1457 : vec2<f32> = u_xlat45;
        let x_1459 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec15;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat45.x = x_1468;
        let x_1471 : f32 = u_xlat17.z;
        let x_1473 : f32 = u_xlat45.x;
        let x_1475 : f32 = u_xlat66;
        u_xlat45.x = ((x_1471 * x_1473) + x_1475);
        let x_1479 : vec4<f32> = u_xlat15;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
        let x_1482 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1490 : vec3<f32> = txVec16;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1490.xy, x_1490.z);
        u_xlat65 = x_1492;
        let x_1494 : f32 = u_xlat17.w;
        let x_1495 : f32 = u_xlat65;
        let x_1498 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1494 * x_1495) + x_1498);
        let x_1502 : vec4<f32> = u_xlat13;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.x, x_1502.y);
        let x_1505 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec17;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1512.xy, x_1512.z);
        u_xlat65 = x_1514;
        let x_1516 : f32 = u_xlat18.x;
        let x_1517 : f32 = u_xlat65;
        let x_1520 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1516 * x_1517) + x_1520);
        let x_1524 : vec4<f32> = u_xlat13;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.z, x_1524.w);
        let x_1527 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec18;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
        u_xlat65 = x_1536;
        let x_1538 : f32 = u_xlat18.y;
        let x_1539 : f32 = u_xlat65;
        let x_1542 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1538 * x_1539) + x_1542);
        let x_1546 : vec4<f32> = u_xlat14;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.x, x_1546.y);
        let x_1549 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec19;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1556.xy, x_1556.z);
        u_xlat65 = x_1558;
        let x_1560 : f32 = u_xlat18.z;
        let x_1561 : f32 = u_xlat65;
        let x_1564 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1560 * x_1561) + x_1564);
        let x_1568 : vec4<f32> = u_xlat15;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.z, x_1568.w);
        let x_1571 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec20;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1578.xy, x_1578.z);
        u_xlat65 = x_1580;
        let x_1582 : f32 = u_xlat18.w;
        let x_1583 : f32 = u_xlat65;
        let x_1586 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1582 * x_1583) + x_1586);
        let x_1590 : vec4<f32> = u_xlat16;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec21;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1600.xy, x_1600.z);
        u_xlat65 = x_1602;
        let x_1604 : f32 = u_xlat19.x;
        let x_1605 : f32 = u_xlat65;
        let x_1608 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1604 * x_1605) + x_1608);
        let x_1612 : vec4<f32> = u_xlat16;
        let x_1613 : vec2<f32> = vec2<f32>(x_1612.z, x_1612.w);
        let x_1615 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
        let x_1622 : vec3<f32> = txVec22;
        let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1622.xy, x_1622.z);
        u_xlat65 = x_1624;
        let x_1626 : f32 = u_xlat19.y;
        let x_1627 : f32 = u_xlat65;
        let x_1630 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1626 * x_1627) + x_1630);
        let x_1634 : vec2<f32> = u_xlat28;
        let x_1636 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec23;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1643.xy, x_1643.z);
        u_xlat65 = x_1645;
        let x_1647 : f32 = u_xlat19.z;
        let x_1648 : f32 = u_xlat65;
        let x_1651 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1647 * x_1648) + x_1651);
        let x_1655 : vec2<f32> = u_xlat54;
        let x_1657 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec24;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1664.xy, x_1664.z);
        u_xlat65 = x_1666;
        let x_1668 : f32 = u_xlat19.w;
        let x_1669 : f32 = u_xlat65;
        let x_1672 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1668 * x_1669) + x_1672);
        let x_1676 : vec4<f32> = u_xlat11;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec25;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
        u_xlat65 = x_1688;
        let x_1690 : f32 = u_xlat7.x;
        let x_1691 : f32 = u_xlat65;
        let x_1694 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1690 * x_1691) + x_1694);
        let x_1698 : vec4<f32> = u_xlat11;
        let x_1699 : vec2<f32> = vec2<f32>(x_1698.z, x_1698.w);
        let x_1701 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec26;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1708.xy, x_1708.z);
        u_xlat65 = x_1710;
        let x_1712 : f32 = u_xlat7.y;
        let x_1713 : f32 = u_xlat65;
        let x_1716 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1712 * x_1713) + x_1716);
        let x_1720 : vec2<f32> = u_xlat49;
        let x_1722 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec27;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1729.xy, x_1729.z);
        u_xlat65 = x_1731;
        let x_1733 : f32 = u_xlat7.z;
        let x_1734 : f32 = u_xlat65;
        let x_1737 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1733 * x_1734) + x_1737);
        let x_1741 : vec4<f32> = u_xlat5;
        let x_1742 : vec2<f32> = vec2<f32>(x_1741.x, x_1741.y);
        let x_1744 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec28;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1751.xy, x_1751.z);
        u_xlat5.x = x_1753;
        let x_1756 : f32 = u_xlat7.w;
        let x_1758 : f32 = u_xlat5.x;
        let x_1761 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1756 * x_1758) + x_1761);
      }
    }
  } else {
    let x_1765 : vec4<f32> = vs_INTERP8;
    let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
    let x_1768 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
    let x_1775 : vec3<f32> = txVec29;
    let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1775.xy, x_1775.z);
    u_xlat63 = x_1777;
  }
  let x_1779 : f32 = x_522.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1779) + 1.0f);
  let x_1783 : f32 = u_xlat63;
  let x_1785 : f32 = x_522.x_MainLightShadowParams.x;
  let x_1788 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1783 * x_1785) + x_1788);
  let x_1791 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1791);
  let x_1795 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1795 >= 1.0f);
  let x_1797 : bool = u_xlatb25;
  let x_1798 : bool = u_xlatb5;
  u_xlatb5 = (x_1797 | x_1798);
  let x_1800 : bool = u_xlatb5;
  let x_1801 : f32 = u_xlat63;
  u_xlat63 = select(x_1801, 1.0f, x_1800);
  let x_1803 : vec3<f32> = vs_INTERP0;
  let x_1805 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1807 : vec3<f32> = (x_1803 + -(x_1805));
  let x_1808 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
  let x_1810 : vec4<f32> = u_xlat5;
  let x_1812 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1810.x, x_1810.y, x_1810.z), vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
  let x_1817 : f32 = u_xlat5.x;
  let x_1819 : f32 = x_522.x_MainLightShadowParams.z;
  let x_1822 : f32 = x_522.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1817 * x_1819) + x_1822);
  let x_1826 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1826, 0.0f, 1.0f);
  let x_1829 : f32 = u_xlat63;
  u_xlat25 = (-(x_1829) + 1.0f);
  let x_1833 : f32 = u_xlat5.x;
  let x_1834 : f32 = u_xlat25;
  let x_1836 : f32 = u_xlat63;
  u_xlat63 = ((x_1833 * x_1834) + x_1836);
  let x_1838 : f32 = u_xlat64;
  let x_1841 : vec4<f32> = x_44.x_MainLightColor;
  let x_1843 : vec3<f32> = (vec3<f32>(x_1838, x_1838, x_1838) * vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1844 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
  let x_1846 : vec3<f32> = u_xlat4;
  let x_1848 : vec3<f32> = u_xlat21;
  u_xlat65 = dot(-(x_1846), x_1848);
  let x_1850 : f32 = u_xlat65;
  let x_1851 : f32 = u_xlat65;
  u_xlat65 = (x_1850 + x_1851);
  let x_1853 : vec3<f32> = u_xlat21;
  let x_1854 : f32 = u_xlat65;
  let x_1858 : vec3<f32> = u_xlat4;
  let x_1860 : vec3<f32> = ((x_1853 * -(vec3<f32>(x_1854, x_1854, x_1854))) + -(x_1858));
  let x_1861 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1863 : vec3<f32> = u_xlat21;
  let x_1864 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(x_1863, x_1864);
  let x_1866 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1866, 0.0f, 1.0f);
  let x_1868 : f32 = u_xlat65;
  u_xlat65 = (-(x_1868) + 1.0f);
  let x_1871 : f32 = u_xlat65;
  let x_1872 : f32 = u_xlat65;
  u_xlat65 = (x_1871 * x_1872);
  let x_1874 : f32 = u_xlat65;
  let x_1875 : f32 = u_xlat65;
  u_xlat65 = (x_1874 * x_1875);
  let x_1878 : f32 = u_xlat0.x;
  u_xlat66 = ((-(x_1878) * 0.699999988f) + 1.700000048f);
  let x_1885 : f32 = u_xlat0.x;
  let x_1886 : f32 = u_xlat66;
  u_xlat0.x = (x_1885 * x_1886);
  let x_1890 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1890 * 6.0f);
  let x_1902 : vec4<f32> = u_xlat7;
  let x_1905 : f32 = u_xlat0.x;
  let x_1906 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1902.x, x_1902.y, x_1902.z), x_1905);
  u_xlat7 = x_1906;
  let x_1908 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1908 + -1.0f);
  let x_1912 : f32 = x_268.unity_SpecCube0_HDR.w;
  let x_1914 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1912 * x_1914) + 1.0f);
  let x_1919 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1919, 0.0f);
  let x_1923 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1923);
  let x_1927 : f32 = u_xlat0.x;
  let x_1929 : f32 = x_268.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1927 * x_1929);
  let x_1933 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1933);
  let x_1937 : f32 = u_xlat0.x;
  let x_1939 : f32 = x_268.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1937 * x_1939);
  let x_1942 : vec4<f32> = u_xlat7;
  let x_1944 : vec4<f32> = u_xlat0;
  let x_1946 : vec3<f32> = (vec3<f32>(x_1942.x, x_1942.y, x_1942.z) * vec3<f32>(x_1944.x, x_1944.x, x_1944.x));
  let x_1947 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1949 : vec2<f32> = u_xlat20;
  let x_1951 : vec2<f32> = u_xlat20;
  let x_1955 : vec2<f32> = ((vec2<f32>(x_1949.x, x_1949.x) * vec2<f32>(x_1951.x, x_1951.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1956 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1955.x, x_1955.y, x_1956.z, x_1956.w);
  let x_1959 : f32 = u_xlat0.y;
  u_xlat20.x = (1.0f / x_1959);
  let x_1962 : vec3<f32> = u_xlat2;
  let x_1964 : f32 = u_xlat40;
  let x_1966 : vec3<f32> = (-(x_1962) + vec3<f32>(x_1964, x_1964, x_1964));
  let x_1967 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1969 : f32 = u_xlat65;
  let x_1971 : vec4<f32> = u_xlat8;
  let x_1974 : vec3<f32> = u_xlat2;
  let x_1975 : vec3<f32> = ((vec3<f32>(x_1969, x_1969, x_1969) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z)) + x_1974);
  let x_1976 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
  let x_1978 : vec2<f32> = u_xlat20;
  let x_1980 : vec4<f32> = u_xlat8;
  let x_1982 : vec3<f32> = (vec3<f32>(x_1978.x, x_1978.x, x_1978.x) * vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
  let x_1983 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1985 : vec4<f32> = u_xlat7;
  let x_1987 : vec4<f32> = u_xlat8;
  let x_1989 : vec3<f32> = (vec3<f32>(x_1985.x, x_1985.y, x_1985.z) * vec3<f32>(x_1987.x, x_1987.y, x_1987.z));
  let x_1990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
  let x_1992 : vec3<f32> = u_xlat3;
  let x_1993 : vec3<f32> = u_xlat6;
  let x_1995 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_1992 * x_1993) + vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
  let x_1998 : f32 = u_xlat63;
  let x_2001 : f32 = x_268.unity_LightData.z;
  u_xlat20.x = (x_1998 * x_2001);
  let x_2004 : vec3<f32> = u_xlat21;
  let x_2006 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat40 = dot(x_2004, vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2009, 0.0f, 1.0f);
  let x_2011 : f32 = u_xlat40;
  let x_2013 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2011 * x_2013);
  let x_2016 : vec2<f32> = u_xlat20;
  let x_2018 : vec4<f32> = u_xlat5;
  let x_2020 : vec3<f32> = (vec3<f32>(x_2016.x, x_2016.x, x_2016.x) * vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
  let x_2021 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
  let x_2023 : vec3<f32> = u_xlat4;
  let x_2025 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2027 : vec3<f32> = (x_2023 + vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
  let x_2028 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2030 : vec4<f32> = u_xlat7;
  let x_2032 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(vec3<f32>(x_2030.x, x_2030.y, x_2030.z), vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
  let x_2037 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_2037, 1.17549435e-37f);
  let x_2042 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_2042);
  let x_2045 : vec2<f32> = u_xlat20;
  let x_2047 : vec4<f32> = u_xlat7;
  let x_2049 : vec3<f32> = (vec3<f32>(x_2045.x, x_2045.x, x_2045.x) * vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
  let x_2050 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
  let x_2052 : vec3<f32> = u_xlat21;
  let x_2053 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(x_2052, vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
  let x_2058 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_2058, 0.0f, 1.0f);
  let x_2062 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2064 : vec4<f32> = u_xlat7;
  u_xlat20.y = dot(vec3<f32>(x_2062.x, x_2062.y, x_2062.z), vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2069 : f32 = u_xlat20.y;
  u_xlat20.y = clamp(x_2069, 0.0f, 1.0f);
  let x_2072 : vec2<f32> = u_xlat20;
  let x_2073 : vec2<f32> = u_xlat20;
  u_xlat20 = (x_2072 * x_2073);
  let x_2076 : f32 = u_xlat20.x;
  let x_2078 : f32 = u_xlat0.x;
  u_xlat20.x = ((x_2076 * x_2078) + 1.000010014f);
  let x_2084 : f32 = u_xlat20.x;
  let x_2086 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2084 * x_2086);
  let x_2090 : f32 = u_xlat20.y;
  u_xlat40 = max(x_2090, 0.100000001f);
  let x_2093 : f32 = u_xlat40;
  let x_2095 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2093 * x_2095);
  let x_2098 : f32 = u_xlat62;
  let x_2100 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2098 * x_2100);
  let x_2104 : f32 = u_xlat1.x;
  let x_2106 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2104 / x_2106);
  let x_2109 : vec3<f32> = u_xlat2;
  let x_2110 : vec2<f32> = u_xlat20;
  let x_2113 : vec3<f32> = u_xlat6;
  let x_2114 : vec3<f32> = ((x_2109 * vec3<f32>(x_2110.x, x_2110.x, x_2110.x)) + x_2113);
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2117 : vec4<f32> = u_xlat5;
  let x_2119 : vec4<f32> = u_xlat7;
  let x_2121 : vec3<f32> = (vec3<f32>(x_2117.x, x_2117.y, x_2117.z) * vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
  let x_2122 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
  let x_2125 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2127 : f32 = x_268.unity_LightData.y;
  u_xlat20.x = min(x_2125, x_2127);
  let x_2133 : f32 = u_xlat20.x;
  u_xlatu20 = bitcast<u32>(i32(x_2133));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2145 : u32 = u_xlatu_loop_1;
    let x_2146 : u32 = u_xlatu20;
    if ((x_2145 < x_2146)) {
    } else {
      break;
    }
    let x_2149 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2149 >> 2u);
    let x_2153 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2153 & 3u));
    let x_2156 : u32 = u_xlatu63;
    let x_2159 : vec4<f32> = x_268.unity_LightIndices[bitcast<i32>(x_2156)];
    let x_2169 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2174 : vec4<u32> = indexable[x_2169];
    u_xlat63 = dot(x_2159, bitcast<vec4<f32>>(x_2174));
    let x_2178 : f32 = u_xlat63;
    u_xlati63 = i32(x_2178);
    let x_2180 : vec3<f32> = vs_INTERP0;
    let x_2192 : i32 = u_xlati63;
    let x_2194 : vec4<f32> = x_2191.x_AdditionalLightsPosition[x_2192];
    let x_2197 : i32 = u_xlati63;
    let x_2199 : vec4<f32> = x_2191.x_AdditionalLightsPosition[x_2197];
    let x_2201 : vec3<f32> = ((-(x_2180) * vec3<f32>(x_2194.w, x_2194.w, x_2194.w)) + vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
    let x_2202 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
    let x_2204 : vec4<f32> = u_xlat8;
    let x_2206 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(vec3<f32>(x_2204.x, x_2204.y, x_2204.z), vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
    let x_2209 : f32 = u_xlat65;
    u_xlat65 = max(x_2209, 6.10351562e-05f);
    let x_2212 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2212);
    let x_2214 : f32 = u_xlat66;
    let x_2216 : vec4<f32> = u_xlat8;
    let x_2218 : vec3<f32> = (vec3<f32>(x_2214, x_2214, x_2214) * vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
    let x_2219 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
    let x_2222 : f32 = u_xlat65;
    u_xlat67 = (1.0f / x_2222);
    let x_2224 : f32 = u_xlat65;
    let x_2225 : i32 = u_xlati63;
    let x_2227 : f32 = x_2191.x_AdditionalLightsAttenuation[x_2225].x;
    u_xlat65 = (x_2224 * x_2227);
    let x_2229 : f32 = u_xlat65;
    let x_2231 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2229) * x_2231) + 1.0f);
    let x_2234 : f32 = u_xlat65;
    u_xlat65 = max(x_2234, 0.0f);
    let x_2236 : f32 = u_xlat65;
    let x_2237 : f32 = u_xlat65;
    u_xlat65 = (x_2236 * x_2237);
    let x_2239 : f32 = u_xlat65;
    let x_2240 : f32 = u_xlat67;
    u_xlat65 = (x_2239 * x_2240);
    let x_2242 : i32 = u_xlati63;
    let x_2244 : vec4<f32> = x_2191.x_AdditionalLightsSpotDir[x_2242];
    let x_2246 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2244.x, x_2244.y, x_2244.z), vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
    let x_2249 : f32 = u_xlat67;
    let x_2250 : i32 = u_xlati63;
    let x_2252 : f32 = x_2191.x_AdditionalLightsAttenuation[x_2250].z;
    let x_2254 : i32 = u_xlati63;
    let x_2256 : f32 = x_2191.x_AdditionalLightsAttenuation[x_2254].w;
    u_xlat67 = ((x_2249 * x_2252) + x_2256);
    let x_2258 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2258, 0.0f, 1.0f);
    let x_2260 : f32 = u_xlat67;
    let x_2261 : f32 = u_xlat67;
    u_xlat67 = (x_2260 * x_2261);
    let x_2263 : f32 = u_xlat65;
    let x_2264 : f32 = u_xlat67;
    u_xlat65 = (x_2263 * x_2264);
    let x_2266 : f32 = u_xlat64;
    let x_2268 : i32 = u_xlati63;
    let x_2270 : vec4<f32> = x_2191.x_AdditionalLightsColor[x_2268];
    let x_2272 : vec3<f32> = (vec3<f32>(x_2266, x_2266, x_2266) * vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
    let x_2273 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
    let x_2275 : vec3<f32> = u_xlat21;
    let x_2276 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2275, vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
    let x_2279 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2279, 0.0f, 1.0f);
    let x_2281 : f32 = u_xlat63;
    let x_2282 : f32 = u_xlat65;
    u_xlat63 = (x_2281 * x_2282);
    let x_2284 : f32 = u_xlat63;
    let x_2286 : vec4<f32> = u_xlat10;
    let x_2288 : vec3<f32> = (vec3<f32>(x_2284, x_2284, x_2284) * vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
    let x_2289 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
    let x_2291 : vec4<f32> = u_xlat8;
    let x_2293 : f32 = u_xlat66;
    let x_2296 : vec3<f32> = u_xlat4;
    let x_2297 : vec3<f32> = ((vec3<f32>(x_2291.x, x_2291.y, x_2291.z) * vec3<f32>(x_2293, x_2293, x_2293)) + x_2296);
    let x_2298 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);
    let x_2300 : vec4<f32> = u_xlat8;
    let x_2302 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(vec3<f32>(x_2300.x, x_2300.y, x_2300.z), vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
    let x_2305 : f32 = u_xlat63;
    u_xlat63 = max(x_2305, 1.17549435e-37f);
    let x_2307 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2307);
    let x_2309 : f32 = u_xlat63;
    let x_2311 : vec4<f32> = u_xlat8;
    let x_2313 : vec3<f32> = (vec3<f32>(x_2309, x_2309, x_2309) * vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
    let x_2314 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
    let x_2316 : vec3<f32> = u_xlat21;
    let x_2317 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(x_2316, vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
    let x_2320 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2320, 0.0f, 1.0f);
    let x_2322 : vec4<f32> = u_xlat9;
    let x_2324 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(vec3<f32>(x_2322.x, x_2322.y, x_2322.z), vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
    let x_2327 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2327, 0.0f, 1.0f);
    let x_2329 : f32 = u_xlat63;
    let x_2330 : f32 = u_xlat63;
    u_xlat63 = (x_2329 * x_2330);
    let x_2332 : f32 = u_xlat63;
    let x_2334 : f32 = u_xlat0.x;
    u_xlat63 = ((x_2332 * x_2334) + 1.000010014f);
    let x_2337 : f32 = u_xlat65;
    let x_2338 : f32 = u_xlat65;
    u_xlat65 = (x_2337 * x_2338);
    let x_2340 : f32 = u_xlat63;
    let x_2341 : f32 = u_xlat63;
    u_xlat63 = (x_2340 * x_2341);
    let x_2343 : f32 = u_xlat65;
    u_xlat65 = max(x_2343, 0.100000001f);
    let x_2345 : f32 = u_xlat63;
    let x_2346 : f32 = u_xlat65;
    u_xlat63 = (x_2345 * x_2346);
    let x_2348 : f32 = u_xlat62;
    let x_2349 : f32 = u_xlat63;
    u_xlat63 = (x_2348 * x_2349);
    let x_2352 : f32 = u_xlat1.x;
    let x_2353 : f32 = u_xlat63;
    u_xlat63 = (x_2352 / x_2353);
    let x_2355 : vec3<f32> = u_xlat2;
    let x_2356 : f32 = u_xlat63;
    let x_2359 : vec3<f32> = u_xlat6;
    let x_2360 : vec3<f32> = ((x_2355 * vec3<f32>(x_2356, x_2356, x_2356)) + x_2359);
    let x_2361 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
    let x_2363 : vec4<f32> = u_xlat8;
    let x_2365 : vec4<f32> = u_xlat10;
    let x_2368 : vec4<f32> = u_xlat7;
    let x_2370 : vec3<f32> = ((vec3<f32>(x_2363.x, x_2363.y, x_2363.z) * vec3<f32>(x_2365.x, x_2365.y, x_2365.z)) + vec3<f32>(x_2368.x, x_2368.y, x_2368.z));
    let x_2371 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);

    continuing {
      let x_2373 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2373 + bitcast<u32>(1i));
    }
  }
  let x_2375 : vec3<f32> = u_xlat3;
  let x_2376 : f32 = u_xlat60;
  let x_2379 : vec4<f32> = u_xlat5;
  let x_2381 : vec3<f32> = ((x_2375 * vec3<f32>(x_2376, x_2376, x_2376)) + vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
  let x_2382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  let x_2386 : vec4<f32> = u_xlat7;
  let x_2388 : vec4<f32> = u_xlat0;
  let x_2390 : vec3<f32> = (vec3<f32>(x_2386.x, x_2386.y, x_2386.z) + vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
  let x_2391 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

