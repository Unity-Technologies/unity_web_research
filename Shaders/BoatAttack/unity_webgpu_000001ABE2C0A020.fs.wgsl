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

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_391 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1138 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb12 : vec3<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat22 : f32;
  var x_378 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_784 : f32;
  var u_xlat26 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat41 : f32;
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
  u_xlat3 = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec3<f32> = u_xlat3;
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_101 + x_102);
  let x_105 : vec3<f32> = u_xlat2;
  let x_107 : vec3<f32> = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec3<f32> = u_xlat3;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat3 = ((-(x_110) * vec3<f32>(x_112.x, x_112.y, x_112.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_116.x, x_116.y, x_116.z) * x_118);
  let x_120 : vec3<f32> = u_xlat2;
  let x_121 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_120 + x_121);
  let x_129 : vec4<f32> = u_xlat0;
  let x_131 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_129.x, x_129.y, x_129.z, x_129.x));
  let x_133 : vec3<bool> = vec3<bool>(x_131.x, x_131.y, x_131.z);
  let x_134 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_139 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_139);
  let x_144 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_144);
  let x_148 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_148);
  let x_152 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_152);
  let x_156 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_156);
  let x_160 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_160);
  let x_163 : vec3<f32> = u_xlat3;
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_163 * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec3<f32> = u_xlat2;
  let x_168 : vec4<f32> = u_xlat5;
  let x_171 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_167 * vec3<f32>(x_168.x, x_168.y, x_168.z)) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_173.x, x_173.y, x_173.z)) + x_176);
  let x_178 : f32 = u_xlat23;
  let x_180 : vec3<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_178, x_178, x_178) * x_180) + vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = (x_186 + -0.150000006f);
  let x_191 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_191);
  let x_195 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_195) + 1.0f);
  let x_199 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_204);
  let x_210 : vec4<f32> = vs_INTERP3;
  let x_213 : f32 = x_44.x_GlobalMipBias.x;
  let x_214 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_210.x, x_210.y), x_213);
  u_xlat3 = vec3<f32>(x_214.x, x_214.y, x_214.w);
  let x_217 : f32 = u_xlat3.x;
  let x_219 : f32 = u_xlat3.z;
  u_xlat3.x = (x_217 * x_219);
  let x_224 : vec3<f32> = u_xlat3;
  u_xlat11 = ((vec2<f32>(x_224.x, x_224.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_232 : vec2<f32> = u_xlat11;
  let x_233 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_232, x_233);
  let x_235 : f32 = u_xlat23;
  u_xlat23 = min(x_235, 1.0f);
  let x_237 : f32 = u_xlat23;
  u_xlat23 = (-(x_237) + 1.0f);
  let x_240 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_240);
  let x_242 : f32 = u_xlat23;
  u_xlat23 = max(x_242, 1.00000002e-16f);
  let x_246 : f32 = u_xlat1.x;
  let x_248 : f32 = u_xlat0.x;
  u_xlat0.x = (x_246 + x_248);
  let x_252 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_252, 0.0f, 1.0f);
  let x_256 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_256, 0.0f);
  let x_260 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_260, 0.850000024f);
  let x_268 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_268);
  let x_276 : f32 = x_274.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_276 >= 0.0f);
  let x_281 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_285);
  let x_289 : f32 = u_xlat12.z;
  let x_291 : f32 = u_xlat12.x;
  u_xlat12.x = (x_289 * x_291);
  let x_296 : vec3<f32> = vs_INTERP1;
  let x_298 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_296.z, x_296.x, x_296.y) * vec3<f32>(x_298.y, x_298.z, x_298.x));
  let x_301 : vec3<f32> = vs_INTERP1;
  let x_303 : vec4<f32> = vs_INTERP2;
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_301.y, x_301.z, x_301.x) * vec3<f32>(x_303.z, x_303.x, x_303.y)) + -(x_306));
  let x_309 : vec3<f32> = u_xlat12;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_309.x, x_309.x, x_309.x) * x_311);
  let x_313 : vec2<f32> = u_xlat11;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * x_315);
  let x_317 : vec2<f32> = u_xlat11;
  let x_319 : vec4<f32> = vs_INTERP2;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_317.x, x_317.x, x_317.x) * vec3<f32>(x_319.x, x_319.y, x_319.z)) + x_322);
  let x_324 : f32 = u_xlat23;
  let x_326 : vec3<f32> = vs_INTERP1;
  let x_328 : vec3<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_324, x_324, x_324) * x_326) + x_328);
  let x_330 : vec3<f32> = u_xlat12;
  let x_331 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_330, x_331);
  let x_335 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_335);
  let x_338 : vec2<f32> = u_xlat11;
  let x_340 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_338.x, x_338.x, x_338.x) * x_340);
  let x_345 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb11 = (x_345 == 0.0f);
  let x_348 : vec3<f32> = vs_INTERP0;
  let x_353 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_348) + x_353);
  let x_356 : vec3<f32> = u_xlat3;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(x_356, x_357);
  let x_359 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat22;
  let x_363 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_368 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_368;
  let x_371 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_371;
  let x_375 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_375;
  let x_377 : bool = u_xlatb11;
  if (x_377) {
    let x_381 : vec3<f32> = u_xlat3;
    x_378 = x_381;
  } else {
    let x_383 : vec4<f32> = u_xlat4;
    x_378 = vec3<f32>(x_383.x, x_383.y, x_383.z);
  }
  let x_385 : vec3<f32> = x_378;
  u_xlat3 = x_385;
  let x_386 : vec3<f32> = vs_INTERP0;
  let x_393 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres0;
  let x_396 : vec3<f32> = (x_386 + -(vec3<f32>(x_393.x, x_393.y, x_393.z)));
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec3<f32> = vs_INTERP0;
  let x_401 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres1;
  let x_404 : vec3<f32> = (x_399 + -(vec3<f32>(x_401.x, x_401.y, x_401.z)));
  let x_405 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : vec3<f32> = vs_INTERP0;
  let x_410 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_408 + -(vec3<f32>(x_410.x, x_410.y, x_410.z)));
  let x_415 : vec3<f32> = vs_INTERP0;
  let x_417 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_415 + -(vec3<f32>(x_417.x, x_417.y, x_417.z)));
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_427 : vec4<f32> = u_xlat5;
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_433 : vec3<f32> = u_xlat6;
  let x_434 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_433, x_434);
  let x_437 : vec3<f32> = u_xlat7;
  let x_438 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_437, x_438);
  let x_441 : vec4<f32> = u_xlat4;
  let x_444 : vec4<f32> = x_391.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_441 < x_444);
  let x_447 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_447);
  let x_451 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_451);
  let x_455 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_455);
  let x_459 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_459);
  let x_463 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_463);
  let x_468 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_468);
  let x_472 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_472);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat5;
  let x_479 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) + vec3<f32>(x_477.y, x_477.z, x_477.w));
  let x_480 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat4;
  let x_485 : vec3<f32> = max(vec3<f32>(x_482.x, x_482.y, x_482.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_486 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_486.x, x_485.x, x_485.y, x_485.z);
  let x_488 : vec4<f32> = u_xlat5;
  u_xlat11.x = dot(x_488, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_495 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_495) + 4.0f);
  let x_502 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_502);
  let x_506 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_506) << bitcast<u32>(2i));
  let x_509 : vec3<f32> = vs_INTERP0;
  let x_511 : i32 = u_xlati11;
  let x_514 : i32 = u_xlati11;
  let x_518 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_511 + 1i) / 4i)][((x_514 + 1i) % 4i)];
  let x_520 : vec3<f32> = (vec3<f32>(x_509.y, x_509.y, x_509.y) * vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : i32 = u_xlati11;
  let x_525 : i32 = u_xlati11;
  let x_528 : vec4<f32> = x_391.x_MainLightWorldToShadow[(x_523 / 4i)][(x_525 % 4i)];
  let x_530 : vec3<f32> = vs_INTERP0;
  let x_533 : vec4<f32> = u_xlat4;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.x, x_528.y, x_528.z) * vec3<f32>(x_530.x, x_530.x, x_530.x)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : i32 = u_xlati11;
  let x_541 : i32 = u_xlati11;
  let x_545 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_538 + 2i) / 4i)][((x_541 + 2i) % 4i)];
  let x_547 : vec3<f32> = vs_INTERP0;
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : vec3<f32> = ((vec3<f32>(x_545.x, x_545.y, x_545.z) * vec3<f32>(x_547.z, x_547.z, x_547.z)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat4;
  let x_557 : i32 = u_xlati11;
  let x_560 : i32 = u_xlati11;
  let x_564 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_557 + 3i) / 4i)][((x_560 + 3i) % 4i)];
  let x_566 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) + vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_570 : f32 = vs_INTERP0.y;
  let x_572 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat11.x = (x_570 * x_572);
  let x_576 : f32 = x_44.unity_MatrixV[0i].z;
  let x_578 : f32 = vs_INTERP0.x;
  let x_581 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_576 * x_578) + x_581);
  let x_585 : f32 = x_44.unity_MatrixV[2i].z;
  let x_587 : f32 = vs_INTERP0.z;
  let x_590 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_585 * x_587) + x_590);
  let x_594 : f32 = u_xlat11.x;
  let x_596 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11.x = (x_594 + x_596);
  let x_600 : f32 = u_xlat11.x;
  let x_604 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11.x = (-(x_600) + -(x_604));
  let x_609 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_609, 0.0f);
  let x_613 : f32 = u_xlat11.x;
  let x_616 : f32 = x_44.unity_FogParams.x;
  u_xlat11.x = (x_613 * x_616);
  let x_626 : vec2<f32> = vs_INTERP4;
  let x_628 : f32 = x_44.x_GlobalMipBias.x;
  let x_629 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_626, x_628);
  let x_630 : vec3<f32> = vec3<f32>(x_629.x, x_629.y, x_629.z);
  let x_631 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_635 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_636 : vec2<f32> = vec2<f32>(x_635.x, x_635.y);
  let x_640 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_636.x, x_636.y));
  let x_641 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_640.x, x_640.y, x_641.z);
  let x_643 : vec3<f32> = u_xlat6;
  let x_645 : vec4<f32> = hlslcc_FragCoord;
  let x_647 : vec2<f32> = (vec2<f32>(x_643.x, x_643.y) * vec2<f32>(x_645.x, x_645.y));
  let x_648 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_647.x, x_647.y, x_648.z);
  let x_651 : f32 = u_xlat6.y;
  let x_654 : f32 = x_44.x_ScaleBiasRt.x;
  let x_657 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat22 = ((x_651 * x_654) + x_657);
  let x_659 : f32 = u_xlat22;
  u_xlat6.z = (-(x_659) + 1.0f);
  let x_664 : f32 = u_xlat0.x;
  u_xlat22 = ((-(x_664) * 0.959999979f) + 0.959999979f);
  let x_670 : f32 = u_xlat22;
  let x_673 : f32 = u_xlat1.x;
  u_xlat35 = (-(x_670) + x_673);
  let x_675 : f32 = u_xlat22;
  let x_677 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_675, x_675, x_675) * x_677);
  let x_679 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_679 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * x_685) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_691 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_691) + 1.0f);
  let x_696 : f32 = u_xlat0.x;
  let x_698 : f32 = u_xlat0.x;
  u_xlat22 = (x_696 * x_698);
  let x_700 : f32 = u_xlat22;
  let x_701 : f32 = u_xlat22;
  u_xlat1.x = (x_700 * x_701);
  let x_704 : f32 = u_xlat35;
  u_xlat35 = (x_704 + 1.0f);
  let x_706 : f32 = u_xlat35;
  u_xlat35 = min(x_706, 1.0f);
  let x_709 : f32 = u_xlat22;
  u_xlat36 = ((x_709 * 4.0f) + 2.0f);
  let x_718 : vec3<f32> = u_xlat6;
  let x_721 : f32 = x_44.x_GlobalMipBias.x;
  let x_722 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_718.x, x_718.z), x_721);
  u_xlat37 = x_722.x;
  let x_725 : f32 = u_xlat37;
  u_xlat38 = (x_725 + -1.0f);
  let x_728 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_729 : f32 = u_xlat38;
  u_xlat38 = ((x_728 * x_729) + 1.0f);
  let x_734 : f32 = u_xlat0.w;
  let x_735 : f32 = u_xlat37;
  u_xlat33 = min(x_734, x_735);
  let x_738 : vec4<f32> = u_xlat4;
  let x_739 : vec2<f32> = vec2<f32>(x_738.x, x_738.y);
  let x_741 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_739.x, x_739.y, x_741);
  let x_753 : vec3<f32> = txVec0;
  let x_755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_753.xy, x_753.z);
  u_xlat4.x = x_755;
  let x_759 : f32 = x_391.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_759) + 1.0f);
  let x_764 : f32 = u_xlat4.x;
  let x_766 : f32 = x_391.x_MainLightShadowParams.x;
  let x_769 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_764 * x_766) + x_769);
  let x_774 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_774);
  let x_778 : f32 = u_xlat4.z;
  u_xlatb26 = (x_778 >= 1.0f);
  let x_780 : bool = u_xlatb26;
  let x_781 : bool = u_xlatb15;
  u_xlatb15 = (x_780 | x_781);
  let x_783 : bool = u_xlatb15;
  if (x_783) {
    x_784 = 1.0f;
  } else {
    let x_789 : f32 = u_xlat4.x;
    x_784 = x_789;
  }
  let x_790 : f32 = x_784;
  u_xlat4.x = x_790;
  let x_792 : vec3<f32> = vs_INTERP0;
  let x_794 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (x_792 + -(x_794));
  let x_797 : vec3<f32> = u_xlat15;
  let x_798 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_797, x_798);
  let x_802 : f32 = u_xlat15.x;
  let x_804 : f32 = x_391.x_MainLightShadowParams.z;
  let x_807 : f32 = x_391.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_802 * x_804) + x_807);
  let x_811 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_811, 0.0f, 1.0f);
  let x_816 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_816) + 1.0f);
  let x_820 : f32 = u_xlat15.x;
  let x_821 : f32 = u_xlat26;
  let x_824 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_820 * x_821) + x_824);
  let x_827 : f32 = u_xlat38;
  let x_830 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec3<f32> = u_xlat3;
  let x_835 : vec3<f32> = u_xlat12;
  u_xlat6.x = dot(-(x_833), x_835);
  let x_839 : f32 = u_xlat6.x;
  let x_841 : f32 = u_xlat6.x;
  u_xlat6.x = (x_839 + x_841);
  let x_844 : vec3<f32> = u_xlat12;
  let x_845 : vec3<f32> = u_xlat6;
  let x_849 : vec3<f32> = u_xlat3;
  u_xlat6 = ((x_844 * -(vec3<f32>(x_845.x, x_845.x, x_845.x))) + -(x_849));
  let x_853 : vec3<f32> = u_xlat12;
  let x_854 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_853, x_854);
  let x_856 : f32 = u_xlat39;
  u_xlat39 = clamp(x_856, 0.0f, 1.0f);
  let x_858 : f32 = u_xlat39;
  u_xlat39 = (-(x_858) + 1.0f);
  let x_861 : f32 = u_xlat39;
  let x_862 : f32 = u_xlat39;
  u_xlat39 = (x_861 * x_862);
  let x_864 : f32 = u_xlat39;
  let x_865 : f32 = u_xlat39;
  u_xlat39 = (x_864 * x_865);
  let x_869 : f32 = u_xlat0.x;
  u_xlat40 = ((-(x_869) * 0.699999988f) + 1.700000048f);
  let x_876 : f32 = u_xlat0.x;
  let x_877 : f32 = u_xlat40;
  u_xlat0.x = (x_876 * x_877);
  let x_881 : f32 = u_xlat0.x;
  u_xlat0.x = (x_881 * 6.0f);
  let x_894 : vec3<f32> = u_xlat6;
  let x_896 : f32 = u_xlat0.x;
  let x_897 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_894, x_896);
  u_xlat8 = x_897;
  let x_899 : f32 = u_xlat8.w;
  u_xlat0.x = (x_899 + -1.0f);
  let x_903 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_905 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_903 * x_905) + 1.0f);
  let x_910 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_910, 0.0f);
  let x_914 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_914);
  let x_918 : f32 = u_xlat0.x;
  let x_920 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_918 * x_920);
  let x_924 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_924);
  let x_928 : f32 = u_xlat0.x;
  let x_930 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_928 * x_930);
  let x_933 : vec4<f32> = u_xlat8;
  let x_935 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(x_935.x, x_935.x, x_935.x));
  let x_938 : f32 = u_xlat22;
  let x_940 : f32 = u_xlat22;
  let x_944 : vec2<f32> = ((vec2<f32>(x_938, x_938) * vec2<f32>(x_940, x_940)) + vec2<f32>(-1.0f, 1.0f));
  let x_945 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_944.x, x_945.y, x_944.y, x_945.w);
  let x_948 : f32 = u_xlat0.z;
  u_xlat22 = (1.0f / x_948);
  let x_950 : vec3<f32> = u_xlat2;
  let x_952 : f32 = u_xlat35;
  let x_954 : vec3<f32> = (-(x_950) + vec3<f32>(x_952, x_952, x_952));
  let x_955 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  let x_957 : f32 = u_xlat39;
  let x_959 : vec4<f32> = u_xlat8;
  let x_962 : vec3<f32> = u_xlat2;
  let x_963 : vec3<f32> = ((vec3<f32>(x_957, x_957, x_957) * vec3<f32>(x_959.x, x_959.y, x_959.z)) + x_962);
  let x_964 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : f32 = u_xlat22;
  let x_968 : vec4<f32> = u_xlat8;
  let x_970 : vec3<f32> = (vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec3<f32> = u_xlat6;
  let x_974 : vec4<f32> = u_xlat8;
  u_xlat6 = (x_973 * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat5;
  let x_979 : vec3<f32> = u_xlat7;
  let x_981 : vec3<f32> = u_xlat6;
  let x_982 : vec3<f32> = ((vec3<f32>(x_977.x, x_977.y, x_977.z) * x_979) + x_981);
  let x_983 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_986 : f32 = u_xlat4.x;
  let x_988 : f32 = x_274.unity_LightData.z;
  u_xlat22 = (x_986 * x_988);
  let x_990 : vec3<f32> = u_xlat12;
  let x_992 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_990, vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : f32 = u_xlat35;
  u_xlat35 = clamp(x_995, 0.0f, 1.0f);
  let x_997 : f32 = u_xlat22;
  let x_998 : f32 = u_xlat35;
  u_xlat22 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat22;
  let x_1002 : vec3<f32> = u_xlat15;
  let x_1003 : vec3<f32> = (vec3<f32>(x_1000, x_1000, x_1000) * x_1002);
  let x_1004 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec3<f32> = u_xlat3;
  let x_1008 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = (x_1006 + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec3<f32> = u_xlat6;
  let x_1012 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_1011, x_1012);
  let x_1014 : f32 = u_xlat22;
  u_xlat22 = max(x_1014, 1.17549435e-37f);
  let x_1017 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_1017);
  let x_1019 : f32 = u_xlat22;
  let x_1021 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_1019, x_1019, x_1019) * x_1021);
  let x_1023 : vec3<f32> = u_xlat12;
  let x_1024 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_1023, x_1024);
  let x_1026 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1026, 0.0f, 1.0f);
  let x_1029 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1031 : vec3<f32> = u_xlat6;
  u_xlat35 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), x_1031);
  let x_1033 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1033, 0.0f, 1.0f);
  let x_1035 : f32 = u_xlat22;
  let x_1036 : f32 = u_xlat22;
  u_xlat22 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat22;
  let x_1040 : f32 = u_xlat0.x;
  u_xlat22 = ((x_1038 * x_1040) + 1.000010014f);
  let x_1044 : f32 = u_xlat35;
  let x_1045 : f32 = u_xlat35;
  u_xlat35 = (x_1044 * x_1045);
  let x_1047 : f32 = u_xlat22;
  let x_1048 : f32 = u_xlat22;
  u_xlat22 = (x_1047 * x_1048);
  let x_1050 : f32 = u_xlat35;
  u_xlat35 = max(x_1050, 0.100000001f);
  let x_1053 : f32 = u_xlat22;
  let x_1054 : f32 = u_xlat35;
  u_xlat22 = (x_1053 * x_1054);
  let x_1056 : f32 = u_xlat36;
  let x_1057 : f32 = u_xlat22;
  u_xlat22 = (x_1056 * x_1057);
  let x_1060 : f32 = u_xlat1.x;
  let x_1061 : f32 = u_xlat22;
  u_xlat22 = (x_1060 / x_1061);
  let x_1063 : vec3<f32> = u_xlat2;
  let x_1064 : f32 = u_xlat22;
  let x_1067 : vec3<f32> = u_xlat7;
  u_xlat6 = ((x_1063 * vec3<f32>(x_1064, x_1064, x_1064)) + x_1067);
  let x_1069 : vec4<f32> = u_xlat4;
  let x_1071 : vec3<f32> = u_xlat6;
  let x_1072 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) * x_1071);
  let x_1073 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1076 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1078 : f32 = x_274.unity_LightData.y;
  u_xlat22 = min(x_1076, x_1078);
  let x_1081 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1081));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1093 : u32 = u_xlatu_loop_1;
    let x_1094 : u32 = u_xlatu22;
    if ((x_1093 < x_1094)) {
    } else {
      break;
    }
    let x_1097 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1097 >> 2u);
    let x_1100 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_1100 & 3u));
    let x_1103 : u32 = u_xlatu37;
    let x_1106 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_1103)];
    let x_1116 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1121 : vec4<u32> = indexable[x_1116];
    u_xlat37 = dot(x_1106, bitcast<vec4<f32>>(x_1121));
    let x_1125 : f32 = u_xlat37;
    u_xlati37 = i32(x_1125);
    let x_1127 : vec3<f32> = vs_INTERP0;
    let x_1139 : i32 = u_xlati37;
    let x_1141 : vec4<f32> = x_1138.x_AdditionalLightsPosition[x_1139];
    let x_1144 : i32 = u_xlati37;
    let x_1146 : vec4<f32> = x_1138.x_AdditionalLightsPosition[x_1144];
    let x_1148 : vec3<f32> = ((-(x_1127) * vec3<f32>(x_1141.w, x_1141.w, x_1141.w)) + vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
    let x_1149 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
    let x_1151 : vec4<f32> = u_xlat8;
    let x_1153 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1151.x, x_1151.y, x_1151.z), vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
    let x_1156 : f32 = u_xlat39;
    u_xlat39 = max(x_1156, 6.10351562e-05f);
    let x_1159 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1159);
    let x_1162 : f32 = u_xlat40;
    let x_1164 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1162, x_1162, x_1162) * vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
    let x_1168 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1168);
    let x_1170 : f32 = u_xlat39;
    let x_1171 : i32 = u_xlati37;
    let x_1173 : f32 = x_1138.x_AdditionalLightsAttenuation[x_1171].x;
    u_xlat39 = (x_1170 * x_1173);
    let x_1175 : f32 = u_xlat39;
    let x_1177 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1175) * x_1177) + 1.0f);
    let x_1180 : f32 = u_xlat39;
    u_xlat39 = max(x_1180, 0.0f);
    let x_1182 : f32 = u_xlat39;
    let x_1183 : f32 = u_xlat39;
    u_xlat39 = (x_1182 * x_1183);
    let x_1185 : f32 = u_xlat39;
    let x_1186 : f32 = u_xlat41;
    u_xlat39 = (x_1185 * x_1186);
    let x_1188 : i32 = u_xlati37;
    let x_1190 : vec4<f32> = x_1138.x_AdditionalLightsSpotDir[x_1188];
    let x_1192 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1190.x, x_1190.y, x_1190.z), x_1192);
    let x_1194 : f32 = u_xlat41;
    let x_1195 : i32 = u_xlati37;
    let x_1197 : f32 = x_1138.x_AdditionalLightsAttenuation[x_1195].z;
    let x_1199 : i32 = u_xlati37;
    let x_1201 : f32 = x_1138.x_AdditionalLightsAttenuation[x_1199].w;
    u_xlat41 = ((x_1194 * x_1197) + x_1201);
    let x_1203 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1203, 0.0f, 1.0f);
    let x_1205 : f32 = u_xlat41;
    let x_1206 : f32 = u_xlat41;
    u_xlat41 = (x_1205 * x_1206);
    let x_1208 : f32 = u_xlat39;
    let x_1209 : f32 = u_xlat41;
    u_xlat39 = (x_1208 * x_1209);
    let x_1212 : f32 = u_xlat38;
    let x_1214 : i32 = u_xlati37;
    let x_1216 : vec4<f32> = x_1138.x_AdditionalLightsColor[x_1214];
    u_xlat10 = (vec3<f32>(x_1212, x_1212, x_1212) * vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
    let x_1219 : vec3<f32> = u_xlat12;
    let x_1220 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(x_1219, x_1220);
    let x_1222 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1222, 0.0f, 1.0f);
    let x_1224 : f32 = u_xlat37;
    let x_1225 : f32 = u_xlat39;
    u_xlat37 = (x_1224 * x_1225);
    let x_1227 : f32 = u_xlat37;
    let x_1229 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1227, x_1227, x_1227) * x_1229);
    let x_1231 : vec4<f32> = u_xlat8;
    let x_1233 : f32 = u_xlat40;
    let x_1236 : vec3<f32> = u_xlat3;
    let x_1237 : vec3<f32> = ((vec3<f32>(x_1231.x, x_1231.y, x_1231.z) * vec3<f32>(x_1233, x_1233, x_1233)) + x_1236);
    let x_1238 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
    let x_1240 : vec4<f32> = u_xlat8;
    let x_1242 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1240.x, x_1240.y, x_1240.z), vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
    let x_1245 : f32 = u_xlat37;
    u_xlat37 = max(x_1245, 1.17549435e-37f);
    let x_1247 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1247);
    let x_1249 : f32 = u_xlat37;
    let x_1251 : vec4<f32> = u_xlat8;
    let x_1253 : vec3<f32> = (vec3<f32>(x_1249, x_1249, x_1249) * vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
    let x_1254 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
    let x_1256 : vec3<f32> = u_xlat12;
    let x_1257 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(x_1256, vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
    let x_1260 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1260, 0.0f, 1.0f);
    let x_1262 : vec3<f32> = u_xlat9;
    let x_1263 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1262, vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
    let x_1266 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1266, 0.0f, 1.0f);
    let x_1268 : f32 = u_xlat37;
    let x_1269 : f32 = u_xlat37;
    u_xlat37 = (x_1268 * x_1269);
    let x_1271 : f32 = u_xlat37;
    let x_1273 : f32 = u_xlat0.x;
    u_xlat37 = ((x_1271 * x_1273) + 1.000010014f);
    let x_1276 : f32 = u_xlat39;
    let x_1277 : f32 = u_xlat39;
    u_xlat39 = (x_1276 * x_1277);
    let x_1279 : f32 = u_xlat37;
    let x_1280 : f32 = u_xlat37;
    u_xlat37 = (x_1279 * x_1280);
    let x_1282 : f32 = u_xlat39;
    u_xlat39 = max(x_1282, 0.100000001f);
    let x_1284 : f32 = u_xlat37;
    let x_1285 : f32 = u_xlat39;
    u_xlat37 = (x_1284 * x_1285);
    let x_1287 : f32 = u_xlat36;
    let x_1288 : f32 = u_xlat37;
    u_xlat37 = (x_1287 * x_1288);
    let x_1291 : f32 = u_xlat1.x;
    let x_1292 : f32 = u_xlat37;
    u_xlat37 = (x_1291 / x_1292);
    let x_1294 : vec3<f32> = u_xlat2;
    let x_1295 : f32 = u_xlat37;
    let x_1298 : vec3<f32> = u_xlat7;
    let x_1299 : vec3<f32> = ((x_1294 * vec3<f32>(x_1295, x_1295, x_1295)) + x_1298);
    let x_1300 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
    let x_1302 : vec4<f32> = u_xlat8;
    let x_1304 : vec3<f32> = u_xlat10;
    let x_1306 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_1302.x, x_1302.y, x_1302.z) * x_1304) + x_1306);

    continuing {
      let x_1308 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1308 + bitcast<u32>(1i));
    }
  }
  let x_1310 : vec4<f32> = u_xlat5;
  let x_1312 : f32 = u_xlat33;
  let x_1315 : vec4<f32> = u_xlat4;
  let x_1317 : vec3<f32> = ((vec3<f32>(x_1310.x, x_1310.y, x_1310.z) * vec3<f32>(x_1312, x_1312, x_1312)) + vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1318 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1317.z);
  let x_1320 : vec3<f32> = u_xlat6;
  let x_1321 : vec4<f32> = u_xlat0;
  let x_1323 : vec3<f32> = (x_1320 + vec3<f32>(x_1321.x, x_1321.z, x_1321.w));
  let x_1324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1323.x, x_1324.y, x_1323.y, x_1323.z);
  let x_1327 : f32 = u_xlat11.x;
  let x_1329 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1327 * -(x_1329));
  let x_1334 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1334);
  let x_1337 : vec4<f32> = u_xlat0;
  let x_1341 : vec4<f32> = x_44.unity_FogColor;
  let x_1344 : vec3<f32> = (vec3<f32>(x_1337.x, x_1337.z, x_1337.w) + -(vec3<f32>(x_1341.x, x_1341.y, x_1341.z)));
  let x_1345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1344.x, x_1345.y, x_1344.y, x_1344.z);
  let x_1349 : vec2<f32> = u_xlat11;
  let x_1351 : vec4<f32> = u_xlat0;
  let x_1355 : vec4<f32> = x_44.unity_FogColor;
  let x_1357 : vec3<f32> = ((vec3<f32>(x_1349.x, x_1349.x, x_1349.x) * vec3<f32>(x_1351.x, x_1351.z, x_1351.w)) + vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
  let x_1358 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

