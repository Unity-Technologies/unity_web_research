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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(5) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_281 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_430 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1202 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb12 : vec3<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat22 : f32;
  var x_390 : f32;
  var x_403 : f32;
  var x_414 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlatb34 : bool;
  var x_819 : f32;
  var u_xlat34 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat10 : vec3<f32>;
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
  u_xlat23 = (x_87 + x_90);
  let x_92 : f32 = u_xlat23;
  u_xlat23 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat3;
  let x_105 : vec4<f32> = u_xlat3;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_111) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat3;
  let x_117 : vec3<f32> = u_xlat4;
  let x_119 : vec3<f32> = ((-(vec3<f32>(x_114.x, x_114.y, x_114.z)) * x_117) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_122.x, x_122.y, x_122.z) * x_124);
  let x_126 : vec3<f32> = u_xlat2;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_126 + x_127);
  let x_135 : vec4<f32> = u_xlat0;
  let x_138 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_135.x, x_135.y, x_135.z, x_135.x));
  u_xlatb4 = vec3<bool>(x_138.x, x_138.y, x_138.z);
  let x_143 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_143);
  let x_148 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_148);
  let x_152 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_152);
  let x_156 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_156);
  let x_160 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_160);
  let x_164 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_164);
  let x_167 : vec4<f32> = u_xlat3;
  let x_169 : vec3<f32> = u_xlat4;
  let x_170 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) * x_169);
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec3<f32> = u_xlat2;
  let x_174 : vec3<f32> = u_xlat5;
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_173 * x_174) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_179.x, x_179.y, x_179.z)) + x_182);
  let x_184 : f32 = u_xlat23;
  let x_186 : vec3<f32> = u_xlat2;
  let x_188 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_184, x_184, x_184) * x_186) + vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_192 : f32 = u_xlat0.x;
  u_xlat0.x = (x_192 + -0.150000006f);
  let x_197 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_197);
  let x_201 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_201) + 1.0f);
  let x_205 : vec4<f32> = u_xlat0;
  let x_210 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_205.x, x_205.x, x_205.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_210);
  let x_216 : vec4<f32> = vs_INTERP3;
  let x_219 : f32 = x_44.x_GlobalMipBias.x;
  let x_220 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_216.x, x_216.y), x_219);
  let x_221 : vec3<f32> = vec3<f32>(x_220.x, x_220.y, x_220.w);
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : f32 = u_xlat3.x;
  let x_227 : f32 = u_xlat3.z;
  u_xlat3.x = (x_225 * x_227);
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat11 = ((vec2<f32>(x_232.x, x_232.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_240 : vec2<f32> = u_xlat11;
  let x_241 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_240, x_241);
  let x_243 : f32 = u_xlat23;
  u_xlat23 = min(x_243, 1.0f);
  let x_245 : f32 = u_xlat23;
  u_xlat23 = (-(x_245) + 1.0f);
  let x_248 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_248);
  let x_250 : f32 = u_xlat23;
  u_xlat23 = max(x_250, 1.00000002e-16f);
  let x_254 : f32 = u_xlat1.x;
  let x_256 : f32 = u_xlat0.x;
  u_xlat0.x = (x_254 + x_256);
  let x_260 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_260, 0.0f, 1.0f);
  let x_264 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_264, 0.0f);
  let x_268 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_268, 0.850000024f);
  let x_275 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_275);
  let x_283 : f32 = x_281.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_283 >= 0.0f);
  let x_288 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_288);
  let x_292 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_292);
  let x_296 : f32 = u_xlat12.z;
  let x_298 : f32 = u_xlat12.x;
  u_xlat12.x = (x_296 * x_298);
  let x_303 : vec3<f32> = vs_INTERP1;
  let x_305 : vec4<f32> = vs_INTERP2;
  let x_307 : vec3<f32> = (vec3<f32>(x_303.z, x_303.x, x_303.y) * vec3<f32>(x_305.y, x_305.z, x_305.x));
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec3<f32> = vs_INTERP1;
  let x_312 : vec4<f32> = vs_INTERP2;
  let x_315 : vec4<f32> = u_xlat3;
  let x_318 : vec3<f32> = ((vec3<f32>(x_310.y, x_310.z, x_310.x) * vec3<f32>(x_312.z, x_312.x, x_312.y)) + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = u_xlat12;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec2<f32> = u_xlat11;
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec3<f32> = (vec3<f32>(x_328.y, x_328.y, x_328.y) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec2<f32> = u_xlat11;
  let x_337 : vec4<f32> = vs_INTERP2;
  let x_340 : vec4<f32> = u_xlat3;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.x, x_335.x) * vec3<f32>(x_337.x, x_337.y, x_337.z)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : f32 = u_xlat23;
  let x_347 : vec3<f32> = vs_INTERP1;
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_345, x_345, x_345) * x_347) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec3<f32> = u_xlat12;
  let x_353 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_352, x_353);
  let x_357 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_357);
  let x_360 : vec2<f32> = u_xlat11;
  let x_362 : vec3<f32> = u_xlat12;
  let x_363 : vec3<f32> = (vec3<f32>(x_360.x, x_360.x, x_360.x) * x_362);
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_369 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb11 = (x_369 == 0.0f);
  let x_372 : vec3<f32> = vs_INTERP0;
  let x_377 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_372) + x_377);
  let x_380 : vec3<f32> = u_xlat12;
  let x_381 : vec3<f32> = u_xlat12;
  u_xlat22 = dot(x_380, x_381);
  let x_383 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_383);
  let x_385 : f32 = u_xlat22;
  let x_387 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_385, x_385, x_385) * x_387);
  let x_389 : bool = u_xlatb11;
  if (x_389) {
    let x_394 : f32 = u_xlat12.x;
    x_390 = x_394;
  } else {
    let x_399 : f32 = x_44.unity_MatrixV[0i].z;
    x_390 = x_399;
  }
  let x_400 : f32 = x_390;
  u_xlat4.x = x_400;
  let x_402 : bool = u_xlatb11;
  if (x_402) {
    let x_407 : f32 = u_xlat12.y;
    x_403 = x_407;
  } else {
    let x_410 : f32 = x_44.unity_MatrixV[1i].z;
    x_403 = x_410;
  }
  let x_411 : f32 = x_403;
  u_xlat4.y = x_411;
  let x_413 : bool = u_xlatb11;
  if (x_413) {
    let x_418 : f32 = u_xlat12.z;
    x_414 = x_418;
  } else {
    let x_422 : f32 = x_44.unity_MatrixV[2i].z;
    x_414 = x_422;
  }
  let x_423 : f32 = x_414;
  u_xlat4.z = x_423;
  let x_425 : vec3<f32> = vs_INTERP0;
  let x_432 : vec4<f32> = x_430.x_CascadeShadowSplitSpheres0;
  u_xlat12 = (x_425 + -(vec3<f32>(x_432.x, x_432.y, x_432.z)));
  let x_436 : vec3<f32> = vs_INTERP0;
  let x_438 : vec4<f32> = x_430.x_CascadeShadowSplitSpheres1;
  u_xlat5 = (x_436 + -(vec3<f32>(x_438.x, x_438.y, x_438.z)));
  let x_443 : vec3<f32> = vs_INTERP0;
  let x_445 : vec4<f32> = x_430.x_CascadeShadowSplitSpheres2;
  let x_448 : vec3<f32> = (x_443 + -(vec3<f32>(x_445.x, x_445.y, x_445.z)));
  let x_449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : vec3<f32> = vs_INTERP0;
  let x_454 : vec4<f32> = x_430.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_452 + -(vec3<f32>(x_454.x, x_454.y, x_454.z)));
  let x_459 : vec3<f32> = u_xlat12;
  let x_460 : vec3<f32> = u_xlat12;
  u_xlat8.x = dot(x_459, x_460);
  let x_463 : vec3<f32> = u_xlat5;
  let x_464 : vec3<f32> = u_xlat5;
  u_xlat8.y = dot(x_463, x_464);
  let x_467 : vec4<f32> = u_xlat6;
  let x_469 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_473 : vec3<f32> = u_xlat7;
  let x_474 : vec3<f32> = u_xlat7;
  u_xlat8.w = dot(x_473, x_474);
  let x_479 : vec4<f32> = u_xlat8;
  let x_482 : vec4<f32> = x_430.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_479 < x_482);
  let x_485 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_485);
  let x_489 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_489);
  let x_493 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_493);
  let x_497 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_497);
  let x_501 : bool = u_xlatb5.x;
  u_xlat12.x = select(-0.0f, -1.0f, x_501);
  let x_506 : bool = u_xlatb5.y;
  u_xlat12.y = select(-0.0f, -1.0f, x_506);
  let x_510 : bool = u_xlatb5.z;
  u_xlat12.z = select(-0.0f, -1.0f, x_510);
  let x_513 : vec3<f32> = u_xlat12;
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat12 = (x_513 + vec3<f32>(x_514.y, x_514.z, x_514.w));
  let x_517 : vec3<f32> = u_xlat12;
  let x_519 : vec3<f32> = max(x_517, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_520 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_520.x, x_519.x, x_519.y, x_519.z);
  let x_522 : vec4<f32> = u_xlat6;
  u_xlat11.x = dot(x_522, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_529 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_529) + 4.0f);
  let x_536 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_536);
  let x_540 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_540) << bitcast<u32>(2i));
  let x_543 : vec3<f32> = vs_INTERP0;
  let x_545 : i32 = u_xlati11;
  let x_548 : i32 = u_xlati11;
  let x_552 : vec4<f32> = x_430.x_MainLightWorldToShadow[((x_545 + 1i) / 4i)][((x_548 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_543.y, x_543.y, x_543.y) * vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : i32 = u_xlati11;
  let x_557 : i32 = u_xlati11;
  let x_560 : vec4<f32> = x_430.x_MainLightWorldToShadow[(x_555 / 4i)][(x_557 % 4i)];
  let x_562 : vec3<f32> = vs_INTERP0;
  let x_565 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * vec3<f32>(x_562.x, x_562.x, x_562.x)) + x_565);
  let x_567 : i32 = u_xlati11;
  let x_570 : i32 = u_xlati11;
  let x_574 : vec4<f32> = x_430.x_MainLightWorldToShadow[((x_567 + 2i) / 4i)][((x_570 + 2i) % 4i)];
  let x_576 : vec3<f32> = vs_INTERP0;
  let x_579 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_576.z, x_576.z, x_576.z)) + x_579);
  let x_581 : vec3<f32> = u_xlat12;
  let x_582 : i32 = u_xlati11;
  let x_585 : i32 = u_xlati11;
  let x_589 : vec4<f32> = x_430.x_MainLightWorldToShadow[((x_582 + 3i) / 4i)][((x_585 + 3i) % 4i)];
  u_xlat12 = (x_581 + vec3<f32>(x_589.x, x_589.y, x_589.z));
  u_xlat3.w = 1.0f;
  let x_595 : vec4<f32> = x_281.unity_SHAr;
  let x_596 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_595, x_596);
  let x_601 : vec4<f32> = x_281.unity_SHAg;
  let x_602 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_601, x_602);
  let x_607 : vec4<f32> = x_281.unity_SHAb;
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_607, x_608);
  let x_611 : vec4<f32> = u_xlat3;
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_611.y, x_611.z, x_611.z, x_611.x) * vec4<f32>(x_613.x, x_613.y, x_613.z, x_613.z));
  let x_618 : vec4<f32> = x_281.unity_SHBr;
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_618, x_619);
  let x_624 : vec4<f32> = x_281.unity_SHBg;
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_624, x_625);
  let x_630 : vec4<f32> = x_281.unity_SHBb;
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_630, x_631);
  let x_635 : f32 = u_xlat3.y;
  let x_637 : f32 = u_xlat3.y;
  u_xlat11.x = (x_635 * x_637);
  let x_641 : f32 = u_xlat3.x;
  let x_643 : f32 = u_xlat3.x;
  let x_646 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_641 * x_643) + -(x_646));
  let x_652 : vec4<f32> = x_281.unity_SHC;
  let x_654 : vec2<f32> = u_xlat11;
  let x_657 : vec3<f32> = u_xlat7;
  let x_658 : vec3<f32> = ((vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_654.x, x_654.x, x_654.x)) + x_657);
  let x_659 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec3<f32> = u_xlat5;
  let x_662 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_661 + vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_665, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_669 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_670 : vec2<f32> = vec2<f32>(x_669.x, x_669.y);
  u_xlat11 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_670.x, x_670.y));
  let x_675 : vec2<f32> = u_xlat11;
  let x_676 : vec4<f32> = hlslcc_FragCoord;
  let x_678 : vec2<f32> = (x_675 * vec2<f32>(x_676.x, x_676.y));
  let x_679 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
  let x_682 : f32 = u_xlat6.y;
  let x_685 : f32 = x_44.x_ScaleBiasRt.x;
  let x_688 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_682 * x_685) + x_688);
  let x_692 : f32 = u_xlat11.x;
  u_xlat6.z = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  u_xlat11.x = ((-(x_697) * 0.959999979f) + 0.959999979f);
  let x_704 : f32 = u_xlat11.x;
  u_xlat22 = (-(x_704) + 1.0f);
  let x_707 : vec2<f32> = u_xlat11;
  let x_709 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_707.x, x_707.x, x_707.x) * x_709);
  let x_711 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_711 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_715 : vec4<f32> = u_xlat0;
  let x_717 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_715.x, x_715.x, x_715.x) * x_717) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_723 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_723) + 1.0f);
  let x_728 : f32 = u_xlat0.x;
  let x_730 : f32 = u_xlat0.x;
  u_xlat11.x = (x_728 * x_730);
  let x_735 : f32 = u_xlat11.x;
  let x_737 : f32 = u_xlat11.x;
  u_xlat35 = (x_735 * x_737);
  let x_739 : f32 = u_xlat22;
  let x_741 : f32 = u_xlat1.x;
  u_xlat22 = (x_739 + x_741);
  let x_743 : f32 = u_xlat22;
  u_xlat22 = min(x_743, 1.0f);
  let x_746 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_746 * 4.0f) + 2.0f);
  let x_756 : vec4<f32> = u_xlat6;
  let x_759 : f32 = x_44.x_GlobalMipBias.x;
  let x_760 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_756.x, x_756.z), x_759);
  u_xlat36 = x_760.x;
  let x_763 : f32 = u_xlat36;
  u_xlat37 = (x_763 + -1.0f);
  let x_766 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_767 : f32 = u_xlat37;
  u_xlat37 = ((x_766 * x_767) + 1.0f);
  let x_772 : f32 = u_xlat0.w;
  let x_773 : f32 = u_xlat36;
  u_xlat33 = min(x_772, x_773);
  let x_776 : vec3<f32> = u_xlat12;
  let x_777 : vec2<f32> = vec2<f32>(x_776.x, x_776.y);
  let x_779 : f32 = u_xlat12.z;
  txVec0 = vec3<f32>(x_777.x, x_777.y, x_779);
  let x_791 : vec3<f32> = txVec0;
  let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_791.xy, x_791.z);
  u_xlat12.x = x_793;
  let x_796 : f32 = x_430.x_MainLightShadowParams.x;
  u_xlat23 = (-(x_796) + 1.0f);
  let x_800 : f32 = u_xlat12.x;
  let x_802 : f32 = x_430.x_MainLightShadowParams.x;
  let x_804 : f32 = u_xlat23;
  u_xlat12.x = ((x_800 * x_802) + x_804);
  let x_809 : f32 = u_xlat12.z;
  u_xlatb23 = (0.0f >= x_809);
  let x_813 : f32 = u_xlat12.z;
  u_xlatb34 = (x_813 >= 1.0f);
  let x_815 : bool = u_xlatb34;
  let x_816 : bool = u_xlatb23;
  u_xlatb23 = (x_815 | x_816);
  let x_818 : bool = u_xlatb23;
  if (x_818) {
    x_819 = 1.0f;
  } else {
    let x_824 : f32 = u_xlat12.x;
    x_819 = x_824;
  }
  let x_825 : f32 = x_819;
  u_xlat12.x = x_825;
  let x_827 : vec3<f32> = vs_INTERP0;
  let x_829 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_831 : vec3<f32> = (x_827 + -(x_829));
  let x_832 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat6;
  let x_836 : vec4<f32> = u_xlat6;
  u_xlat23 = dot(vec3<f32>(x_834.x, x_834.y, x_834.z), vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : f32 = u_xlat23;
  let x_841 : f32 = x_430.x_MainLightShadowParams.z;
  let x_844 : f32 = x_430.x_MainLightShadowParams.w;
  u_xlat23 = ((x_839 * x_841) + x_844);
  let x_846 : f32 = u_xlat23;
  u_xlat23 = clamp(x_846, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat12.x;
  u_xlat34 = (-(x_850) + 1.0f);
  let x_853 : f32 = u_xlat23;
  let x_854 : f32 = u_xlat34;
  let x_857 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_853 * x_854) + x_857);
  let x_860 : f32 = u_xlat37;
  let x_863 : vec4<f32> = x_44.x_MainLightColor;
  let x_865 : vec3<f32> = (vec3<f32>(x_860, x_860, x_860) * vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec3<f32> = u_xlat4;
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat23 = dot(-(x_868), vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : f32 = u_xlat23;
  let x_874 : f32 = u_xlat23;
  u_xlat23 = (x_873 + x_874);
  let x_876 : vec4<f32> = u_xlat3;
  let x_878 : f32 = u_xlat23;
  let x_882 : vec3<f32> = u_xlat4;
  let x_884 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * -(vec3<f32>(x_878, x_878, x_878))) + -(x_882));
  let x_885 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat3;
  let x_889 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), x_889);
  let x_891 : f32 = u_xlat23;
  u_xlat23 = clamp(x_891, 0.0f, 1.0f);
  let x_893 : f32 = u_xlat23;
  u_xlat23 = (-(x_893) + 1.0f);
  let x_896 : f32 = u_xlat23;
  let x_897 : f32 = u_xlat23;
  u_xlat23 = (x_896 * x_897);
  let x_899 : f32 = u_xlat23;
  let x_900 : f32 = u_xlat23;
  u_xlat23 = (x_899 * x_900);
  let x_903 : f32 = u_xlat0.x;
  u_xlat34 = ((-(x_903) * 0.699999988f) + 1.700000048f);
  let x_910 : f32 = u_xlat0.x;
  let x_911 : f32 = u_xlat34;
  u_xlat0.x = (x_910 * x_911);
  let x_915 : f32 = u_xlat0.x;
  u_xlat0.x = (x_915 * 6.0f);
  let x_927 : vec4<f32> = u_xlat8;
  let x_930 : f32 = u_xlat0.x;
  let x_931 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_927.x, x_927.y, x_927.z), x_930);
  u_xlat8 = x_931;
  let x_933 : f32 = u_xlat8.w;
  u_xlat0.x = (x_933 + -1.0f);
  let x_937 : f32 = x_281.unity_SpecCube0_HDR.w;
  let x_939 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_937 * x_939) + 1.0f);
  let x_944 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_944, 0.0f);
  let x_948 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_948);
  let x_952 : f32 = u_xlat0.x;
  let x_954 : f32 = x_281.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_952 * x_954);
  let x_958 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_958);
  let x_962 : f32 = u_xlat0.x;
  let x_964 : f32 = x_281.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_962 * x_964);
  let x_967 : vec4<f32> = u_xlat8;
  let x_969 : vec4<f32> = u_xlat0;
  let x_971 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(x_969.x, x_969.x, x_969.x));
  let x_972 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec2<f32> = u_xlat11;
  let x_976 : vec2<f32> = u_xlat11;
  let x_980 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.x) * vec2<f32>(x_976.x, x_976.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_981 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
  let x_984 : f32 = u_xlat0.y;
  u_xlat11.x = (1.0f / x_984);
  let x_988 : vec3<f32> = u_xlat2;
  let x_990 : f32 = u_xlat22;
  u_xlat9 = (-(x_988) + vec3<f32>(x_990, x_990, x_990));
  let x_993 : f32 = u_xlat23;
  let x_995 : vec3<f32> = u_xlat9;
  let x_997 : vec3<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_993, x_993, x_993) * x_995) + x_997);
  let x_999 : vec2<f32> = u_xlat11;
  let x_1001 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_999.x, x_999.x, x_999.x) * x_1001);
  let x_1003 : vec4<f32> = u_xlat8;
  let x_1005 : vec3<f32> = u_xlat9;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1003.x, x_1003.y, x_1003.z) * x_1005);
  let x_1007 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec3<f32> = u_xlat5;
  let x_1010 : vec3<f32> = u_xlat7;
  let x_1012 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1009 * x_1010) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1016 : f32 = u_xlat12.x;
  let x_1018 : f32 = x_281.unity_LightData.z;
  u_xlat11.x = (x_1016 * x_1018);
  let x_1021 : vec4<f32> = u_xlat3;
  let x_1024 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1027, 0.0f, 1.0f);
  let x_1029 : f32 = u_xlat22;
  let x_1031 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1029 * x_1031);
  let x_1034 : vec2<f32> = u_xlat11;
  let x_1036 : vec4<f32> = u_xlat6;
  u_xlat12 = (vec3<f32>(x_1034.x, x_1034.x, x_1034.x) * vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1039 : vec3<f32> = u_xlat4;
  let x_1041 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1043 : vec3<f32> = (x_1039 + vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec4<f32> = u_xlat6;
  let x_1048 : vec4<f32> = u_xlat6;
  u_xlat11.x = dot(vec3<f32>(x_1046.x, x_1046.y, x_1046.z), vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1053 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_1053, 1.17549435e-37f);
  let x_1058 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_1058);
  let x_1061 : vec2<f32> = u_xlat11;
  let x_1063 : vec4<f32> = u_xlat6;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.x, x_1061.x) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec4<f32> = u_xlat3;
  let x_1070 : vec4<f32> = u_xlat6;
  u_xlat11.x = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1075 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1075, 0.0f, 1.0f);
  let x_1079 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1081 : vec4<f32> = u_xlat6;
  u_xlat11.y = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1086 : f32 = u_xlat11.y;
  u_xlat11.y = clamp(x_1086, 0.0f, 1.0f);
  let x_1089 : vec2<f32> = u_xlat11;
  let x_1090 : vec2<f32> = u_xlat11;
  u_xlat11 = (x_1089 * x_1090);
  let x_1093 : f32 = u_xlat11.x;
  let x_1095 : f32 = u_xlat0.x;
  u_xlat11.x = ((x_1093 * x_1095) + 1.000010014f);
  let x_1101 : f32 = u_xlat11.x;
  let x_1103 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1101 * x_1103);
  let x_1107 : f32 = u_xlat11.y;
  u_xlat22 = max(x_1107, 0.100000001f);
  let x_1110 : f32 = u_xlat22;
  let x_1112 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1110 * x_1112);
  let x_1116 : f32 = u_xlat1.x;
  let x_1118 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1116 * x_1118);
  let x_1121 : f32 = u_xlat35;
  let x_1123 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1121 / x_1123);
  let x_1126 : vec3<f32> = u_xlat2;
  let x_1127 : vec2<f32> = u_xlat11;
  let x_1130 : vec3<f32> = u_xlat7;
  let x_1131 : vec3<f32> = ((x_1126 * vec3<f32>(x_1127.x, x_1127.x, x_1127.x)) + x_1130);
  let x_1132 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec3<f32> = u_xlat12;
  let x_1135 : vec4<f32> = u_xlat6;
  u_xlat12 = (x_1134 * vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1139 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1141 : f32 = x_281.unity_LightData.y;
  u_xlat11.x = min(x_1139, x_1141);
  let x_1145 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_1145));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1157 : u32 = u_xlatu_loop_1;
    let x_1158 : u32 = u_xlatu11;
    if ((x_1157 < x_1158)) {
    } else {
      break;
    }
    let x_1161 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1161 >> 2u);
    let x_1164 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1164 & 3u));
    let x_1167 : u32 = u_xlatu36;
    let x_1170 : vec4<f32> = x_281.unity_LightIndices[bitcast<i32>(x_1167)];
    let x_1180 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1185 : vec4<u32> = indexable[x_1180];
    u_xlat36 = dot(x_1170, bitcast<vec4<f32>>(x_1185));
    let x_1189 : f32 = u_xlat36;
    u_xlati36 = i32(x_1189);
    let x_1191 : vec3<f32> = vs_INTERP0;
    let x_1203 : i32 = u_xlati36;
    let x_1205 : vec4<f32> = x_1202.x_AdditionalLightsPosition[x_1203];
    let x_1208 : i32 = u_xlati36;
    let x_1210 : vec4<f32> = x_1202.x_AdditionalLightsPosition[x_1208];
    let x_1212 : vec3<f32> = ((-(x_1191) * vec3<f32>(x_1205.w, x_1205.w, x_1205.w)) + vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
    let x_1213 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
    let x_1216 : vec4<f32> = u_xlat8;
    let x_1218 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1216.x, x_1216.y, x_1216.z), vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
    let x_1221 : f32 = u_xlat38;
    u_xlat38 = max(x_1221, 6.10351562e-05f);
    let x_1225 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1225);
    let x_1227 : f32 = u_xlat39;
    let x_1229 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1227, x_1227, x_1227) * vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
    let x_1233 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1233);
    let x_1235 : f32 = u_xlat38;
    let x_1236 : i32 = u_xlati36;
    let x_1238 : f32 = x_1202.x_AdditionalLightsAttenuation[x_1236].x;
    u_xlat38 = (x_1235 * x_1238);
    let x_1240 : f32 = u_xlat38;
    let x_1242 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1240) * x_1242) + 1.0f);
    let x_1245 : f32 = u_xlat38;
    u_xlat38 = max(x_1245, 0.0f);
    let x_1247 : f32 = u_xlat38;
    let x_1248 : f32 = u_xlat38;
    u_xlat38 = (x_1247 * x_1248);
    let x_1250 : f32 = u_xlat38;
    let x_1251 : f32 = u_xlat40;
    u_xlat38 = (x_1250 * x_1251);
    let x_1253 : i32 = u_xlati36;
    let x_1255 : vec4<f32> = x_1202.x_AdditionalLightsSpotDir[x_1253];
    let x_1257 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1255.x, x_1255.y, x_1255.z), x_1257);
    let x_1259 : f32 = u_xlat40;
    let x_1260 : i32 = u_xlati36;
    let x_1262 : f32 = x_1202.x_AdditionalLightsAttenuation[x_1260].z;
    let x_1264 : i32 = u_xlati36;
    let x_1266 : f32 = x_1202.x_AdditionalLightsAttenuation[x_1264].w;
    u_xlat40 = ((x_1259 * x_1262) + x_1266);
    let x_1268 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1268, 0.0f, 1.0f);
    let x_1270 : f32 = u_xlat40;
    let x_1271 : f32 = u_xlat40;
    u_xlat40 = (x_1270 * x_1271);
    let x_1273 : f32 = u_xlat38;
    let x_1274 : f32 = u_xlat40;
    u_xlat38 = (x_1273 * x_1274);
    let x_1277 : f32 = u_xlat37;
    let x_1279 : i32 = u_xlati36;
    let x_1281 : vec4<f32> = x_1202.x_AdditionalLightsColor[x_1279];
    u_xlat10 = (vec3<f32>(x_1277, x_1277, x_1277) * vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
    let x_1284 : vec4<f32> = u_xlat3;
    let x_1286 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1284.x, x_1284.y, x_1284.z), x_1286);
    let x_1288 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1288, 0.0f, 1.0f);
    let x_1290 : f32 = u_xlat36;
    let x_1291 : f32 = u_xlat38;
    u_xlat36 = (x_1290 * x_1291);
    let x_1293 : f32 = u_xlat36;
    let x_1295 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1293, x_1293, x_1293) * x_1295);
    let x_1297 : vec4<f32> = u_xlat8;
    let x_1299 : f32 = u_xlat39;
    let x_1302 : vec3<f32> = u_xlat4;
    let x_1303 : vec3<f32> = ((vec3<f32>(x_1297.x, x_1297.y, x_1297.z) * vec3<f32>(x_1299, x_1299, x_1299)) + x_1302);
    let x_1304 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
    let x_1306 : vec4<f32> = u_xlat8;
    let x_1308 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
    let x_1311 : f32 = u_xlat36;
    u_xlat36 = max(x_1311, 1.17549435e-37f);
    let x_1313 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1313);
    let x_1315 : f32 = u_xlat36;
    let x_1317 : vec4<f32> = u_xlat8;
    let x_1319 : vec3<f32> = (vec3<f32>(x_1315, x_1315, x_1315) * vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
    let x_1320 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
    let x_1322 : vec4<f32> = u_xlat3;
    let x_1324 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1322.x, x_1322.y, x_1322.z), vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
    let x_1327 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1327, 0.0f, 1.0f);
    let x_1329 : vec3<f32> = u_xlat9;
    let x_1330 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1329, vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
    let x_1333 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1333, 0.0f, 1.0f);
    let x_1335 : f32 = u_xlat36;
    let x_1336 : f32 = u_xlat36;
    u_xlat36 = (x_1335 * x_1336);
    let x_1338 : f32 = u_xlat36;
    let x_1340 : f32 = u_xlat0.x;
    u_xlat36 = ((x_1338 * x_1340) + 1.000010014f);
    let x_1343 : f32 = u_xlat38;
    let x_1344 : f32 = u_xlat38;
    u_xlat38 = (x_1343 * x_1344);
    let x_1346 : f32 = u_xlat36;
    let x_1347 : f32 = u_xlat36;
    u_xlat36 = (x_1346 * x_1347);
    let x_1349 : f32 = u_xlat38;
    u_xlat38 = max(x_1349, 0.100000001f);
    let x_1351 : f32 = u_xlat36;
    let x_1352 : f32 = u_xlat38;
    u_xlat36 = (x_1351 * x_1352);
    let x_1355 : f32 = u_xlat1.x;
    let x_1356 : f32 = u_xlat36;
    u_xlat36 = (x_1355 * x_1356);
    let x_1358 : f32 = u_xlat35;
    let x_1359 : f32 = u_xlat36;
    u_xlat36 = (x_1358 / x_1359);
    let x_1361 : vec3<f32> = u_xlat2;
    let x_1362 : f32 = u_xlat36;
    let x_1365 : vec3<f32> = u_xlat7;
    let x_1366 : vec3<f32> = ((x_1361 * vec3<f32>(x_1362, x_1362, x_1362)) + x_1365);
    let x_1367 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
    let x_1369 : vec4<f32> = u_xlat8;
    let x_1371 : vec3<f32> = u_xlat10;
    let x_1373 : vec4<f32> = u_xlat6;
    let x_1375 : vec3<f32> = ((vec3<f32>(x_1369.x, x_1369.y, x_1369.z) * x_1371) + vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
    let x_1376 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1376.w);

    continuing {
      let x_1378 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1378 + bitcast<u32>(1i));
    }
  }
  let x_1380 : vec3<f32> = u_xlat5;
  let x_1381 : f32 = u_xlat33;
  let x_1384 : vec3<f32> = u_xlat12;
  let x_1385 : vec3<f32> = ((x_1380 * vec3<f32>(x_1381, x_1381, x_1381)) + x_1384);
  let x_1386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1390 : vec4<f32> = u_xlat6;
  let x_1392 : vec4<f32> = u_xlat0;
  let x_1394 : vec3<f32> = (vec3<f32>(x_1390.x, x_1390.y, x_1390.z) + vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

