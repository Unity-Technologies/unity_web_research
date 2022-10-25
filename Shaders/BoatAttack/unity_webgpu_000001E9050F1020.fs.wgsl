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

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_391 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1174 : AdditionalLights;

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
  var x_820 : f32;
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
  let x_629 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_626, x_628);
  u_xlat5 = x_629;
  let x_634 : vec2<f32> = vs_INTERP4;
  let x_636 : f32 = x_44.x_GlobalMipBias.x;
  let x_637 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_634, x_636);
  u_xlat6 = vec3<f32>(x_637.x, x_637.y, x_637.z);
  let x_639 : vec4<f32> = u_xlat5;
  let x_643 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_644 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec3<f32> = u_xlat12;
  let x_647 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(x_646, vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : f32 = u_xlat22;
  u_xlat22 = (x_650 + 0.5f);
  let x_652 : f32 = u_xlat22;
  let x_654 : vec3<f32> = u_xlat6;
  let x_655 : vec3<f32> = (vec3<f32>(x_652, x_652, x_652) * x_654);
  let x_656 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = u_xlat5.w;
  u_xlat22 = max(x_659, 0.0001f);
  let x_662 : vec4<f32> = u_xlat5;
  let x_664 : f32 = u_xlat22;
  let x_666 : vec3<f32> = (vec3<f32>(x_662.x, x_662.y, x_662.z) / vec3<f32>(x_664, x_664, x_664));
  let x_667 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_671 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_672 : vec2<f32> = vec2<f32>(x_671.x, x_671.y);
  let x_676 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_672.x, x_672.y));
  let x_677 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_676.x, x_676.y, x_677.z);
  let x_679 : vec3<f32> = u_xlat6;
  let x_681 : vec4<f32> = hlslcc_FragCoord;
  let x_683 : vec2<f32> = (vec2<f32>(x_679.x, x_679.y) * vec2<f32>(x_681.x, x_681.y));
  let x_684 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_683.x, x_683.y, x_684.z);
  let x_687 : f32 = u_xlat6.y;
  let x_690 : f32 = x_44.x_ScaleBiasRt.x;
  let x_693 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat22 = ((x_687 * x_690) + x_693);
  let x_695 : f32 = u_xlat22;
  u_xlat6.z = (-(x_695) + 1.0f);
  let x_700 : f32 = u_xlat0.x;
  u_xlat22 = ((-(x_700) * 0.959999979f) + 0.959999979f);
  let x_706 : f32 = u_xlat22;
  let x_709 : f32 = u_xlat1.x;
  u_xlat35 = (-(x_706) + x_709);
  let x_711 : f32 = u_xlat22;
  let x_713 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_711, x_711, x_711) * x_713);
  let x_715 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_715 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_719 : vec4<f32> = u_xlat0;
  let x_721 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_719.x, x_719.x, x_719.x) * x_721) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_727 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_727) + 1.0f);
  let x_732 : f32 = u_xlat0.x;
  let x_734 : f32 = u_xlat0.x;
  u_xlat22 = (x_732 * x_734);
  let x_736 : f32 = u_xlat22;
  let x_737 : f32 = u_xlat22;
  u_xlat1.x = (x_736 * x_737);
  let x_740 : f32 = u_xlat35;
  u_xlat35 = (x_740 + 1.0f);
  let x_742 : f32 = u_xlat35;
  u_xlat35 = min(x_742, 1.0f);
  let x_745 : f32 = u_xlat22;
  u_xlat36 = ((x_745 * 4.0f) + 2.0f);
  let x_754 : vec3<f32> = u_xlat6;
  let x_757 : f32 = x_44.x_GlobalMipBias.x;
  let x_758 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_754.x, x_754.z), x_757);
  u_xlat37 = x_758.x;
  let x_761 : f32 = u_xlat37;
  u_xlat38 = (x_761 + -1.0f);
  let x_764 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_765 : f32 = u_xlat38;
  u_xlat38 = ((x_764 * x_765) + 1.0f);
  let x_770 : f32 = u_xlat0.w;
  let x_771 : f32 = u_xlat37;
  u_xlat33 = min(x_770, x_771);
  let x_774 : vec4<f32> = u_xlat4;
  let x_775 : vec2<f32> = vec2<f32>(x_774.x, x_774.y);
  let x_777 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_775.x, x_775.y, x_777);
  let x_789 : vec3<f32> = txVec0;
  let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_789.xy, x_789.z);
  u_xlat4.x = x_791;
  let x_795 : f32 = x_391.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_795) + 1.0f);
  let x_800 : f32 = u_xlat4.x;
  let x_802 : f32 = x_391.x_MainLightShadowParams.x;
  let x_805 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_800 * x_802) + x_805);
  let x_810 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_810);
  let x_814 : f32 = u_xlat4.z;
  u_xlatb26 = (x_814 >= 1.0f);
  let x_816 : bool = u_xlatb26;
  let x_817 : bool = u_xlatb15;
  u_xlatb15 = (x_816 | x_817);
  let x_819 : bool = u_xlatb15;
  if (x_819) {
    x_820 = 1.0f;
  } else {
    let x_825 : f32 = u_xlat4.x;
    x_820 = x_825;
  }
  let x_826 : f32 = x_820;
  u_xlat4.x = x_826;
  let x_828 : vec3<f32> = vs_INTERP0;
  let x_830 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (x_828 + -(x_830));
  let x_833 : vec3<f32> = u_xlat15;
  let x_834 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_833, x_834);
  let x_838 : f32 = u_xlat15.x;
  let x_840 : f32 = x_391.x_MainLightShadowParams.z;
  let x_843 : f32 = x_391.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_838 * x_840) + x_843);
  let x_847 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_847, 0.0f, 1.0f);
  let x_852 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_852) + 1.0f);
  let x_856 : f32 = u_xlat15.x;
  let x_857 : f32 = u_xlat26;
  let x_860 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_856 * x_857) + x_860);
  let x_863 : f32 = u_xlat38;
  let x_866 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_863, x_863, x_863) * vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec3<f32> = u_xlat3;
  let x_871 : vec3<f32> = u_xlat12;
  u_xlat6.x = dot(-(x_869), x_871);
  let x_875 : f32 = u_xlat6.x;
  let x_877 : f32 = u_xlat6.x;
  u_xlat6.x = (x_875 + x_877);
  let x_880 : vec3<f32> = u_xlat12;
  let x_881 : vec3<f32> = u_xlat6;
  let x_885 : vec3<f32> = u_xlat3;
  u_xlat6 = ((x_880 * -(vec3<f32>(x_881.x, x_881.x, x_881.x))) + -(x_885));
  let x_889 : vec3<f32> = u_xlat12;
  let x_890 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_889, x_890);
  let x_892 : f32 = u_xlat39;
  u_xlat39 = clamp(x_892, 0.0f, 1.0f);
  let x_894 : f32 = u_xlat39;
  u_xlat39 = (-(x_894) + 1.0f);
  let x_897 : f32 = u_xlat39;
  let x_898 : f32 = u_xlat39;
  u_xlat39 = (x_897 * x_898);
  let x_900 : f32 = u_xlat39;
  let x_901 : f32 = u_xlat39;
  u_xlat39 = (x_900 * x_901);
  let x_905 : f32 = u_xlat0.x;
  u_xlat40 = ((-(x_905) * 0.699999988f) + 1.700000048f);
  let x_912 : f32 = u_xlat0.x;
  let x_913 : f32 = u_xlat40;
  u_xlat0.x = (x_912 * x_913);
  let x_917 : f32 = u_xlat0.x;
  u_xlat0.x = (x_917 * 6.0f);
  let x_930 : vec3<f32> = u_xlat6;
  let x_932 : f32 = u_xlat0.x;
  let x_933 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_930, x_932);
  u_xlat8 = x_933;
  let x_935 : f32 = u_xlat8.w;
  u_xlat0.x = (x_935 + -1.0f);
  let x_939 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_941 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_939 * x_941) + 1.0f);
  let x_946 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_946, 0.0f);
  let x_950 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_950);
  let x_954 : f32 = u_xlat0.x;
  let x_956 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_954 * x_956);
  let x_960 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_960);
  let x_964 : f32 = u_xlat0.x;
  let x_966 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_964 * x_966);
  let x_969 : vec4<f32> = u_xlat8;
  let x_971 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_969.x, x_969.y, x_969.z) * vec3<f32>(x_971.x, x_971.x, x_971.x));
  let x_974 : f32 = u_xlat22;
  let x_976 : f32 = u_xlat22;
  let x_980 : vec2<f32> = ((vec2<f32>(x_974, x_974) * vec2<f32>(x_976, x_976)) + vec2<f32>(-1.0f, 1.0f));
  let x_981 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_981.w);
  let x_984 : f32 = u_xlat0.z;
  u_xlat22 = (1.0f / x_984);
  let x_986 : vec3<f32> = u_xlat2;
  let x_988 : f32 = u_xlat35;
  let x_990 : vec3<f32> = (-(x_986) + vec3<f32>(x_988, x_988, x_988));
  let x_991 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : f32 = u_xlat39;
  let x_995 : vec4<f32> = u_xlat8;
  let x_998 : vec3<f32> = u_xlat2;
  let x_999 : vec3<f32> = ((vec3<f32>(x_993, x_993, x_993) * vec3<f32>(x_995.x, x_995.y, x_995.z)) + x_998);
  let x_1000 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : f32 = u_xlat22;
  let x_1004 : vec4<f32> = u_xlat8;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1002, x_1002, x_1002) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec3<f32> = u_xlat6;
  let x_1010 : vec4<f32> = u_xlat8;
  u_xlat6 = (x_1009 * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1013 : vec4<f32> = u_xlat5;
  let x_1015 : vec3<f32> = u_xlat7;
  let x_1017 : vec3<f32> = u_xlat6;
  let x_1018 : vec3<f32> = ((vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * x_1015) + x_1017);
  let x_1019 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1022 : f32 = u_xlat4.x;
  let x_1024 : f32 = x_274.unity_LightData.z;
  u_xlat22 = (x_1022 * x_1024);
  let x_1026 : vec3<f32> = u_xlat12;
  let x_1028 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_1026, vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
  let x_1031 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1031, 0.0f, 1.0f);
  let x_1033 : f32 = u_xlat22;
  let x_1034 : f32 = u_xlat35;
  u_xlat22 = (x_1033 * x_1034);
  let x_1036 : f32 = u_xlat22;
  let x_1038 : vec3<f32> = u_xlat15;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1036, x_1036, x_1036) * x_1038);
  let x_1040 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec3<f32> = u_xlat3;
  let x_1044 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = (x_1042 + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec3<f32> = u_xlat6;
  let x_1048 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_1047, x_1048);
  let x_1050 : f32 = u_xlat22;
  u_xlat22 = max(x_1050, 1.17549435e-37f);
  let x_1053 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_1053);
  let x_1055 : f32 = u_xlat22;
  let x_1057 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_1055, x_1055, x_1055) * x_1057);
  let x_1059 : vec3<f32> = u_xlat12;
  let x_1060 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_1059, x_1060);
  let x_1062 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1062, 0.0f, 1.0f);
  let x_1065 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1067 : vec3<f32> = u_xlat6;
  u_xlat35 = dot(vec3<f32>(x_1065.x, x_1065.y, x_1065.z), x_1067);
  let x_1069 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1069, 0.0f, 1.0f);
  let x_1071 : f32 = u_xlat22;
  let x_1072 : f32 = u_xlat22;
  u_xlat22 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat22;
  let x_1076 : f32 = u_xlat0.x;
  u_xlat22 = ((x_1074 * x_1076) + 1.000010014f);
  let x_1080 : f32 = u_xlat35;
  let x_1081 : f32 = u_xlat35;
  u_xlat35 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat22;
  let x_1084 : f32 = u_xlat22;
  u_xlat22 = (x_1083 * x_1084);
  let x_1086 : f32 = u_xlat35;
  u_xlat35 = max(x_1086, 0.100000001f);
  let x_1089 : f32 = u_xlat22;
  let x_1090 : f32 = u_xlat35;
  u_xlat22 = (x_1089 * x_1090);
  let x_1092 : f32 = u_xlat36;
  let x_1093 : f32 = u_xlat22;
  u_xlat22 = (x_1092 * x_1093);
  let x_1096 : f32 = u_xlat1.x;
  let x_1097 : f32 = u_xlat22;
  u_xlat22 = (x_1096 / x_1097);
  let x_1099 : vec3<f32> = u_xlat2;
  let x_1100 : f32 = u_xlat22;
  let x_1103 : vec3<f32> = u_xlat7;
  u_xlat6 = ((x_1099 * vec3<f32>(x_1100, x_1100, x_1100)) + x_1103);
  let x_1105 : vec4<f32> = u_xlat4;
  let x_1107 : vec3<f32> = u_xlat6;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * x_1107);
  let x_1109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1112 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1114 : f32 = x_274.unity_LightData.y;
  u_xlat22 = min(x_1112, x_1114);
  let x_1117 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1117));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1129 : u32 = u_xlatu_loop_1;
    let x_1130 : u32 = u_xlatu22;
    if ((x_1129 < x_1130)) {
    } else {
      break;
    }
    let x_1133 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1133 >> 2u);
    let x_1136 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_1136 & 3u));
    let x_1139 : u32 = u_xlatu37;
    let x_1142 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_1139)];
    let x_1152 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1157 : vec4<u32> = indexable[x_1152];
    u_xlat37 = dot(x_1142, bitcast<vec4<f32>>(x_1157));
    let x_1161 : f32 = u_xlat37;
    u_xlati37 = i32(x_1161);
    let x_1163 : vec3<f32> = vs_INTERP0;
    let x_1175 : i32 = u_xlati37;
    let x_1177 : vec4<f32> = x_1174.x_AdditionalLightsPosition[x_1175];
    let x_1180 : i32 = u_xlati37;
    let x_1182 : vec4<f32> = x_1174.x_AdditionalLightsPosition[x_1180];
    let x_1184 : vec3<f32> = ((-(x_1163) * vec3<f32>(x_1177.w, x_1177.w, x_1177.w)) + vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
    let x_1185 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
    let x_1187 : vec4<f32> = u_xlat8;
    let x_1189 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1187.x, x_1187.y, x_1187.z), vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
    let x_1192 : f32 = u_xlat39;
    u_xlat39 = max(x_1192, 6.10351562e-05f);
    let x_1195 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1195);
    let x_1198 : f32 = u_xlat40;
    let x_1200 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1198, x_1198, x_1198) * vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
    let x_1204 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1204);
    let x_1206 : f32 = u_xlat39;
    let x_1207 : i32 = u_xlati37;
    let x_1209 : f32 = x_1174.x_AdditionalLightsAttenuation[x_1207].x;
    u_xlat39 = (x_1206 * x_1209);
    let x_1211 : f32 = u_xlat39;
    let x_1213 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1211) * x_1213) + 1.0f);
    let x_1216 : f32 = u_xlat39;
    u_xlat39 = max(x_1216, 0.0f);
    let x_1218 : f32 = u_xlat39;
    let x_1219 : f32 = u_xlat39;
    u_xlat39 = (x_1218 * x_1219);
    let x_1221 : f32 = u_xlat39;
    let x_1222 : f32 = u_xlat41;
    u_xlat39 = (x_1221 * x_1222);
    let x_1224 : i32 = u_xlati37;
    let x_1226 : vec4<f32> = x_1174.x_AdditionalLightsSpotDir[x_1224];
    let x_1228 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1226.x, x_1226.y, x_1226.z), x_1228);
    let x_1230 : f32 = u_xlat41;
    let x_1231 : i32 = u_xlati37;
    let x_1233 : f32 = x_1174.x_AdditionalLightsAttenuation[x_1231].z;
    let x_1235 : i32 = u_xlati37;
    let x_1237 : f32 = x_1174.x_AdditionalLightsAttenuation[x_1235].w;
    u_xlat41 = ((x_1230 * x_1233) + x_1237);
    let x_1239 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1239, 0.0f, 1.0f);
    let x_1241 : f32 = u_xlat41;
    let x_1242 : f32 = u_xlat41;
    u_xlat41 = (x_1241 * x_1242);
    let x_1244 : f32 = u_xlat39;
    let x_1245 : f32 = u_xlat41;
    u_xlat39 = (x_1244 * x_1245);
    let x_1248 : f32 = u_xlat38;
    let x_1250 : i32 = u_xlati37;
    let x_1252 : vec4<f32> = x_1174.x_AdditionalLightsColor[x_1250];
    u_xlat10 = (vec3<f32>(x_1248, x_1248, x_1248) * vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
    let x_1255 : vec3<f32> = u_xlat12;
    let x_1256 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(x_1255, x_1256);
    let x_1258 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1258, 0.0f, 1.0f);
    let x_1260 : f32 = u_xlat37;
    let x_1261 : f32 = u_xlat39;
    u_xlat37 = (x_1260 * x_1261);
    let x_1263 : f32 = u_xlat37;
    let x_1265 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1263, x_1263, x_1263) * x_1265);
    let x_1267 : vec4<f32> = u_xlat8;
    let x_1269 : f32 = u_xlat40;
    let x_1272 : vec3<f32> = u_xlat3;
    let x_1273 : vec3<f32> = ((vec3<f32>(x_1267.x, x_1267.y, x_1267.z) * vec3<f32>(x_1269, x_1269, x_1269)) + x_1272);
    let x_1274 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
    let x_1276 : vec4<f32> = u_xlat8;
    let x_1278 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1276.x, x_1276.y, x_1276.z), vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
    let x_1281 : f32 = u_xlat37;
    u_xlat37 = max(x_1281, 1.17549435e-37f);
    let x_1283 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1283);
    let x_1285 : f32 = u_xlat37;
    let x_1287 : vec4<f32> = u_xlat8;
    let x_1289 : vec3<f32> = (vec3<f32>(x_1285, x_1285, x_1285) * vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
    let x_1290 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
    let x_1292 : vec3<f32> = u_xlat12;
    let x_1293 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(x_1292, vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
    let x_1296 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1296, 0.0f, 1.0f);
    let x_1298 : vec3<f32> = u_xlat9;
    let x_1299 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1298, vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
    let x_1302 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1302, 0.0f, 1.0f);
    let x_1304 : f32 = u_xlat37;
    let x_1305 : f32 = u_xlat37;
    u_xlat37 = (x_1304 * x_1305);
    let x_1307 : f32 = u_xlat37;
    let x_1309 : f32 = u_xlat0.x;
    u_xlat37 = ((x_1307 * x_1309) + 1.000010014f);
    let x_1312 : f32 = u_xlat39;
    let x_1313 : f32 = u_xlat39;
    u_xlat39 = (x_1312 * x_1313);
    let x_1315 : f32 = u_xlat37;
    let x_1316 : f32 = u_xlat37;
    u_xlat37 = (x_1315 * x_1316);
    let x_1318 : f32 = u_xlat39;
    u_xlat39 = max(x_1318, 0.100000001f);
    let x_1320 : f32 = u_xlat37;
    let x_1321 : f32 = u_xlat39;
    u_xlat37 = (x_1320 * x_1321);
    let x_1323 : f32 = u_xlat36;
    let x_1324 : f32 = u_xlat37;
    u_xlat37 = (x_1323 * x_1324);
    let x_1327 : f32 = u_xlat1.x;
    let x_1328 : f32 = u_xlat37;
    u_xlat37 = (x_1327 / x_1328);
    let x_1330 : vec3<f32> = u_xlat2;
    let x_1331 : f32 = u_xlat37;
    let x_1334 : vec3<f32> = u_xlat7;
    let x_1335 : vec3<f32> = ((x_1330 * vec3<f32>(x_1331, x_1331, x_1331)) + x_1334);
    let x_1336 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
    let x_1338 : vec4<f32> = u_xlat8;
    let x_1340 : vec3<f32> = u_xlat10;
    let x_1342 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_1338.x, x_1338.y, x_1338.z) * x_1340) + x_1342);

    continuing {
      let x_1344 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1344 + bitcast<u32>(1i));
    }
  }
  let x_1346 : vec4<f32> = u_xlat5;
  let x_1348 : f32 = u_xlat33;
  let x_1351 : vec4<f32> = u_xlat4;
  let x_1353 : vec3<f32> = ((vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(x_1348, x_1348, x_1348)) + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1353.x, x_1354.y, x_1353.y, x_1353.z);
  let x_1356 : vec3<f32> = u_xlat6;
  let x_1357 : vec4<f32> = u_xlat0;
  let x_1359 : vec3<f32> = (x_1356 + vec3<f32>(x_1357.x, x_1357.z, x_1357.w));
  let x_1360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1359.x, x_1360.y, x_1359.y, x_1359.z);
  let x_1363 : f32 = u_xlat11.x;
  let x_1365 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1363 * -(x_1365));
  let x_1370 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1370);
  let x_1373 : vec4<f32> = u_xlat0;
  let x_1377 : vec4<f32> = x_44.unity_FogColor;
  let x_1380 : vec3<f32> = (vec3<f32>(x_1373.x, x_1373.z, x_1373.w) + -(vec3<f32>(x_1377.x, x_1377.y, x_1377.z)));
  let x_1381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1380.x, x_1381.y, x_1380.y, x_1380.z);
  let x_1385 : vec2<f32> = u_xlat11;
  let x_1387 : vec4<f32> = u_xlat0;
  let x_1391 : vec4<f32> = x_44.unity_FogColor;
  let x_1393 : vec3<f32> = ((vec3<f32>(x_1385.x, x_1385.x, x_1385.x) * vec3<f32>(x_1387.x, x_1387.z, x_1387.w)) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
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

