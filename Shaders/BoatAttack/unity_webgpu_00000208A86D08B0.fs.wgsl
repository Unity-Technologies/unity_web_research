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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_162 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_335 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_936 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb12 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var x_104 : f32;
  var x_118 : f32;
  var x_130 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu12 : u32;
  var u_xlati12 : i32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var u_xlat16 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlatb34 : bool;
  var x_566 : f32;
  var u_xlat34 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati38 : i32;
  var u_xlat27 : vec2<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
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
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1.x = x_62.x;
  let x_71 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb12 = (x_71 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_83 : vec3<f32> = (-(x_77) + x_82);
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat2;
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat23 = dot(vec3<f32>(x_87.x, x_87.y, x_87.z), vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_92);
  let x_94 : f32 = u_xlat23;
  let x_96 : vec4<f32> = u_xlat2;
  let x_98 : vec3<f32> = (vec3<f32>(x_94, x_94, x_94) * vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_103 : bool = u_xlatb12;
  if (x_103) {
    let x_108 : f32 = u_xlat2.x;
    x_104 = x_108;
  } else {
    let x_114 : f32 = x_44.unity_MatrixV[0i].z;
    x_104 = x_114;
  }
  let x_115 : f32 = x_104;
  u_xlat3.x = x_115;
  let x_117 : bool = u_xlatb12;
  if (x_117) {
    let x_123 : f32 = u_xlat2.y;
    x_118 = x_123;
  } else {
    let x_126 : f32 = x_44.unity_MatrixV[1i].z;
    x_118 = x_126;
  }
  let x_127 : f32 = x_118;
  u_xlat3.y = x_127;
  let x_129 : bool = u_xlatb12;
  if (x_129) {
    let x_134 : f32 = u_xlat2.z;
    x_130 = x_134;
  } else {
    let x_138 : f32 = x_44.unity_MatrixV[2i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.z = x_139;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  let x_144 : vec3<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(x_143, x_144);
  let x_148 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_148);
  let x_151 : vec3<f32> = u_xlat12;
  let x_153 : vec3<f32> = vs_TEXCOORD3;
  let x_154 : vec3<f32> = (vec3<f32>(x_151.x, x_151.x, x_151.x) * x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec3<f32> = vs_TEXCOORD7;
  let x_165 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres0;
  u_xlat12 = (x_157 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_170 : vec3<f32> = vs_TEXCOORD7;
  let x_172 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_170 + -(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_177 : vec3<f32> = vs_TEXCOORD7;
  let x_180 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres2;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = vs_TEXCOORD7;
  let x_190 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_187 + -(vec3<f32>(x_190.x, x_190.y, x_190.z)));
  let x_195 : vec3<f32> = u_xlat12;
  let x_196 : vec3<f32> = u_xlat12;
  u_xlat7.x = dot(x_195, x_196);
  let x_199 : vec3<f32> = u_xlat4;
  let x_200 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_199, x_200);
  let x_203 : vec4<f32> = u_xlat5;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_209 : vec3<f32> = u_xlat6;
  let x_210 : vec3<f32> = u_xlat6;
  u_xlat7.w = dot(x_209, x_210);
  let x_216 : vec4<f32> = u_xlat7;
  let x_219 : vec4<f32> = x_162.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_216 < x_219);
  let x_222 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb4.x;
  u_xlat12.x = select(-0.0f, -1.0f, x_238);
  let x_244 : bool = u_xlatb4.y;
  u_xlat12.y = select(-0.0f, -1.0f, x_244);
  let x_248 : bool = u_xlatb4.z;
  u_xlat12.z = select(-0.0f, -1.0f, x_248);
  let x_251 : vec3<f32> = u_xlat12;
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat12 = (x_251 + vec3<f32>(x_252.y, x_252.z, x_252.w));
  let x_255 : vec3<f32> = u_xlat12;
  let x_257 : vec3<f32> = max(x_255, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_258 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_258.x, x_257.x, x_257.y, x_257.z);
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat12.x = dot(x_260, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_268 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_268) + 4.0f);
  let x_275 : f32 = u_xlat12.x;
  u_xlatu12 = u32(x_275);
  let x_279 : u32 = u_xlatu12;
  u_xlati12 = (bitcast<i32>(x_279) << bitcast<u32>(2i));
  let x_282 : vec3<f32> = vs_TEXCOORD7;
  let x_284 : i32 = u_xlati12;
  let x_287 : i32 = u_xlati12;
  let x_291 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_284 + 1i) / 4i)][((x_287 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : i32 = u_xlati12;
  let x_296 : i32 = u_xlati12;
  let x_299 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_294 / 4i)][(x_296 % 4i)];
  let x_301 : vec3<f32> = vs_TEXCOORD7;
  let x_304 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.x, x_301.x)) + x_304);
  let x_306 : i32 = u_xlati12;
  let x_309 : i32 = u_xlati12;
  let x_313 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_306 + 2i) / 4i)][((x_309 + 2i) % 4i)];
  let x_315 : vec3<f32> = vs_TEXCOORD7;
  let x_318 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.z, x_315.z, x_315.z)) + x_318);
  let x_320 : vec3<f32> = u_xlat4;
  let x_321 : i32 = u_xlati12;
  let x_324 : i32 = u_xlati12;
  let x_328 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_321 + 3i) / 4i)][((x_324 + 3i) % 4i)];
  u_xlat12 = (x_320 + vec3<f32>(x_328.x, x_328.y, x_328.z));
  u_xlat2.w = 1.0f;
  let x_338 : vec4<f32> = x_335.unity_SHAr;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_338, x_339);
  let x_344 : vec4<f32> = x_335.unity_SHAg;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_344, x_345);
  let x_350 : vec4<f32> = x_335.unity_SHAb;
  let x_351 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_350, x_351);
  let x_354 : vec4<f32> = u_xlat2;
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_354.y, x_354.z, x_354.z, x_354.x) * vec4<f32>(x_356.x, x_356.y, x_356.z, x_356.z));
  let x_361 : vec4<f32> = x_335.unity_SHBr;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_361, x_362);
  let x_367 : vec4<f32> = x_335.unity_SHBg;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_367, x_368);
  let x_373 : vec4<f32> = x_335.unity_SHBb;
  let x_374 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_373, x_374);
  let x_379 : f32 = u_xlat2.y;
  let x_381 : f32 = u_xlat2.y;
  u_xlat35 = (x_379 * x_381);
  let x_384 : f32 = u_xlat2.x;
  let x_386 : f32 = u_xlat2.x;
  let x_388 : f32 = u_xlat35;
  u_xlat35 = ((x_384 * x_386) + -(x_388));
  let x_393 : vec4<f32> = x_335.unity_SHC;
  let x_395 : f32 = u_xlat35;
  let x_398 : vec3<f32> = u_xlat6;
  let x_399 : vec3<f32> = ((vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395, x_395, x_395)) + x_398);
  let x_400 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : vec3<f32> = u_xlat4;
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_402 + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_406, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_410 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_411 : vec2<f32> = vec2<f32>(x_410.x, x_410.y);
  let x_415 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_411.x, x_411.y));
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat5;
  let x_420 : vec4<f32> = hlslcc_FragCoord;
  let x_422 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) * vec2<f32>(x_420.x, x_420.y));
  let x_423 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  let x_426 : f32 = u_xlat5.y;
  let x_429 : f32 = x_44.x_ScaleBiasRt.x;
  let x_432 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_426 * x_429) + x_432);
  let x_434 : f32 = u_xlat35;
  u_xlat5.z = (-(x_434) + 1.0f);
  let x_439 : f32 = u_xlat1.x;
  u_xlat35 = ((-(x_439) * 0.959999979f) + 0.959999979f);
  let x_445 : f32 = u_xlat35;
  u_xlat36 = (-(x_445) + 1.0f);
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : f32 = u_xlat35;
  u_xlat6 = (vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_450, x_450, x_450));
  let x_453 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.x, x_460.x) * vec3<f32>(x_462.x, x_462.y, x_462.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_471 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_471) + 1.0f);
  let x_476 : f32 = u_xlat1.x;
  let x_478 : f32 = u_xlat1.x;
  u_xlat35 = (x_476 * x_478);
  let x_480 : f32 = u_xlat35;
  u_xlat35 = max(x_480, 0.0078125f);
  let x_484 : f32 = u_xlat35;
  let x_485 : f32 = u_xlat35;
  u_xlat37 = (x_484 * x_485);
  let x_489 : f32 = u_xlat0.w;
  let x_490 : f32 = u_xlat36;
  u_xlat33 = (x_489 + x_490);
  let x_492 : f32 = u_xlat33;
  u_xlat33 = clamp(x_492, 0.0f, 1.0f);
  let x_494 : f32 = u_xlat35;
  u_xlat36 = ((x_494 * 4.0f) + 2.0f);
  let x_502 : vec4<f32> = u_xlat5;
  let x_505 : f32 = x_44.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_502.x, x_502.z), x_505);
  u_xlat5.x = x_506.x;
  let x_511 : f32 = u_xlat5.x;
  u_xlat16 = (x_511 + -1.0f);
  let x_514 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_515 : f32 = u_xlat16;
  u_xlat16 = ((x_514 * x_515) + 1.0f);
  let x_519 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_519, 1.0f);
  let x_523 : vec3<f32> = u_xlat12;
  let x_524 : vec2<f32> = vec2<f32>(x_523.x, x_523.y);
  let x_526 : f32 = u_xlat12.z;
  txVec0 = vec3<f32>(x_524.x, x_524.y, x_526);
  let x_538 : vec3<f32> = txVec0;
  let x_540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_538.xy, x_538.z);
  u_xlat12.x = x_540;
  let x_543 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat23 = (-(x_543) + 1.0f);
  let x_547 : f32 = u_xlat12.x;
  let x_549 : f32 = x_162.x_MainLightShadowParams.x;
  let x_551 : f32 = u_xlat23;
  u_xlat12.x = ((x_547 * x_549) + x_551);
  let x_556 : f32 = u_xlat12.z;
  u_xlatb23 = (0.0f >= x_556);
  let x_560 : f32 = u_xlat12.z;
  u_xlatb34 = (x_560 >= 1.0f);
  let x_562 : bool = u_xlatb34;
  let x_563 : bool = u_xlatb23;
  u_xlatb23 = (x_562 | x_563);
  let x_565 : bool = u_xlatb23;
  if (x_565) {
    x_566 = 1.0f;
  } else {
    let x_571 : f32 = u_xlat12.x;
    x_566 = x_571;
  }
  let x_572 : f32 = x_566;
  u_xlat12.x = x_572;
  let x_574 : vec3<f32> = vs_TEXCOORD7;
  let x_576 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_578 : vec3<f32> = (x_574 + -(x_576));
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat7;
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat23 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : f32 = u_xlat23;
  let x_588 : f32 = x_162.x_MainLightShadowParams.z;
  let x_591 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat23 = ((x_586 * x_588) + x_591);
  let x_593 : f32 = u_xlat23;
  u_xlat23 = clamp(x_593, 0.0f, 1.0f);
  let x_597 : f32 = u_xlat12.x;
  u_xlat34 = (-(x_597) + 1.0f);
  let x_600 : f32 = u_xlat23;
  let x_601 : f32 = u_xlat34;
  let x_604 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_600 * x_601) + x_604);
  let x_607 : f32 = u_xlat16;
  let x_610 : vec4<f32> = x_44.x_MainLightColor;
  let x_612 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec3<f32> = u_xlat3;
  let x_617 : vec4<f32> = u_xlat2;
  u_xlat23 = dot(-(x_615), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : f32 = u_xlat23;
  let x_621 : f32 = u_xlat23;
  u_xlat23 = (x_620 + x_621);
  let x_624 : vec4<f32> = u_xlat2;
  let x_626 : f32 = u_xlat23;
  let x_630 : vec3<f32> = u_xlat3;
  let x_632 : vec3<f32> = ((vec3<f32>(x_624.x, x_624.y, x_624.z) * -(vec3<f32>(x_626, x_626, x_626))) + -(x_630));
  let x_633 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat2;
  let x_637 : vec3<f32> = u_xlat3;
  u_xlat23 = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), x_637);
  let x_639 : f32 = u_xlat23;
  u_xlat23 = clamp(x_639, 0.0f, 1.0f);
  let x_641 : f32 = u_xlat23;
  u_xlat23 = (-(x_641) + 1.0f);
  let x_644 : f32 = u_xlat23;
  let x_645 : f32 = u_xlat23;
  u_xlat1.z = (x_644 * x_645);
  let x_649 : f32 = u_xlat1.x;
  u_xlat1.w = ((-(x_649) * 0.699999988f) + 1.700000048f);
  let x_656 : vec4<f32> = u_xlat1;
  let x_658 : vec4<f32> = u_xlat1;
  let x_660 : vec2<f32> = (vec2<f32>(x_656.w, x_656.z) * vec2<f32>(x_658.x, x_658.z));
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_660.x, x_661.y, x_660.y, x_661.w);
  let x_664 : f32 = u_xlat1.x;
  u_xlat1.x = (x_664 * 6.0f);
  let x_676 : vec4<f32> = u_xlat8;
  let x_679 : f32 = u_xlat1.x;
  let x_680 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_676.x, x_676.y, x_676.z), x_679);
  u_xlat8 = x_680;
  let x_682 : f32 = u_xlat8.w;
  u_xlat1.x = (x_682 + -1.0f);
  let x_686 : f32 = x_335.unity_SpecCube0_HDR.w;
  let x_688 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_686 * x_688) + 1.0f);
  let x_693 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_693, 0.0f);
  let x_697 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_697);
  let x_701 : f32 = u_xlat1.x;
  let x_703 : f32 = x_335.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_701 * x_703);
  let x_707 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_707);
  let x_711 : f32 = u_xlat1.x;
  let x_713 : f32 = x_335.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_711 * x_713);
  let x_716 : vec4<f32> = u_xlat8;
  let x_718 : vec4<f32> = u_xlat1;
  let x_720 : vec3<f32> = (vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718.x, x_718.x, x_718.x));
  let x_721 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : f32 = u_xlat35;
  let x_725 : f32 = u_xlat35;
  let x_729 : vec2<f32> = ((vec2<f32>(x_723, x_723) * vec2<f32>(x_725, x_725)) + vec2<f32>(-1.0f, 1.0f));
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_729.x, x_730.y, x_730.z, x_729.y);
  let x_733 : f32 = u_xlat1.w;
  u_xlat34 = (1.0f / x_733);
  let x_736 : vec4<f32> = u_xlat0;
  let x_739 : f32 = u_xlat33;
  u_xlat9 = (-(vec3<f32>(x_736.x, x_736.y, x_736.z)) + vec3<f32>(x_739, x_739, x_739));
  let x_742 : vec4<f32> = u_xlat1;
  let x_744 : vec3<f32> = u_xlat9;
  let x_746 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_742.z, x_742.z, x_742.z) * x_744) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : f32 = u_xlat34;
  let x_751 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_749, x_749, x_749) * x_751);
  let x_753 : vec4<f32> = u_xlat8;
  let x_755 : vec3<f32> = u_xlat9;
  let x_756 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * x_755);
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec3<f32> = u_xlat4;
  let x_760 : vec3<f32> = u_xlat6;
  let x_762 : vec4<f32> = u_xlat8;
  u_xlat4 = ((x_759 * x_760) + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_766 : f32 = u_xlat12.x;
  let x_768 : f32 = x_335.unity_LightData.z;
  u_xlat33 = (x_766 * x_768);
  let x_770 : vec4<f32> = u_xlat2;
  let x_773 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat12.x = dot(vec3<f32>(x_770.x, x_770.y, x_770.z), vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_778 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_778, 0.0f, 1.0f);
  let x_781 : f32 = u_xlat33;
  let x_783 : f32 = u_xlat12.x;
  u_xlat33 = (x_781 * x_783);
  let x_785 : f32 = u_xlat33;
  let x_787 : vec4<f32> = u_xlat7;
  u_xlat12 = (vec3<f32>(x_785, x_785, x_785) * vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec3<f32> = u_xlat3;
  let x_792 : vec4<f32> = x_44.x_MainLightPosition;
  let x_794 : vec3<f32> = (x_790 + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat7;
  let x_799 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_797.x, x_797.y, x_797.z), vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : f32 = u_xlat33;
  u_xlat33 = max(x_802, 1.17549435e-37f);
  let x_805 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_805);
  let x_807 : f32 = u_xlat33;
  let x_809 : vec4<f32> = u_xlat7;
  let x_811 : vec3<f32> = (vec3<f32>(x_807, x_807, x_807) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat2;
  let x_816 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_814.x, x_814.y, x_814.z), vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : f32 = u_xlat33;
  u_xlat33 = clamp(x_819, 0.0f, 1.0f);
  let x_822 : vec4<f32> = x_44.x_MainLightPosition;
  let x_824 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_822.x, x_822.y, x_822.z), vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : f32 = u_xlat35;
  u_xlat35 = clamp(x_827, 0.0f, 1.0f);
  let x_829 : f32 = u_xlat33;
  let x_830 : f32 = u_xlat33;
  u_xlat33 = (x_829 * x_830);
  let x_832 : f32 = u_xlat33;
  let x_834 : f32 = u_xlat1.x;
  u_xlat33 = ((x_832 * x_834) + 1.000010014f);
  let x_838 : f32 = u_xlat35;
  let x_839 : f32 = u_xlat35;
  u_xlat35 = (x_838 * x_839);
  let x_841 : f32 = u_xlat33;
  let x_842 : f32 = u_xlat33;
  u_xlat33 = (x_841 * x_842);
  let x_844 : f32 = u_xlat35;
  u_xlat35 = max(x_844, 0.100000001f);
  let x_847 : f32 = u_xlat33;
  let x_848 : f32 = u_xlat35;
  u_xlat33 = (x_847 * x_848);
  let x_850 : f32 = u_xlat36;
  let x_851 : f32 = u_xlat33;
  u_xlat33 = (x_850 * x_851);
  let x_853 : f32 = u_xlat37;
  let x_854 : f32 = u_xlat33;
  u_xlat33 = (x_853 / x_854);
  let x_856 : vec4<f32> = u_xlat0;
  let x_858 : f32 = u_xlat33;
  let x_861 : vec3<f32> = u_xlat6;
  let x_862 : vec3<f32> = ((vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_858, x_858, x_858)) + x_861);
  let x_863 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec3<f32> = u_xlat12;
  let x_866 : vec4<f32> = u_xlat7;
  u_xlat12 = (x_865 * vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_870 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_872 : f32 = x_335.unity_LightData.y;
  u_xlat33 = min(x_870, x_872);
  let x_875 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_875));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_887 : u32 = u_xlatu_loop_1;
    let x_888 : u32 = u_xlatu33;
    if ((x_887 < x_888)) {
    } else {
      break;
    }
    let x_891 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_891 >> 2u);
    let x_894 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_894 & 3u));
    let x_899 : u32 = u_xlatu27;
    let x_902 : vec4<f32> = x_335.unity_LightIndices[bitcast<i32>(x_899)];
    let x_912 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_917 : vec4<u32> = indexable[x_912];
    u_xlat27.x = dot(x_902, bitcast<vec4<f32>>(x_917));
    let x_923 : f32 = u_xlat27.x;
    u_xlati27 = i32(x_923);
    let x_925 : vec3<f32> = vs_TEXCOORD7;
    let x_937 : i32 = u_xlati27;
    let x_939 : vec4<f32> = x_936.x_AdditionalLightsPosition[x_937];
    let x_942 : i32 = u_xlati27;
    let x_944 : vec4<f32> = x_936.x_AdditionalLightsPosition[x_942];
    let x_946 : vec3<f32> = ((-(x_925) * vec3<f32>(x_939.w, x_939.w, x_939.w)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
    let x_947 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
    let x_950 : vec4<f32> = u_xlat8;
    let x_952 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_950.x, x_950.y, x_950.z), vec3<f32>(x_952.x, x_952.y, x_952.z));
    let x_955 : f32 = u_xlat38;
    u_xlat38 = max(x_955, 6.10351562e-05f);
    let x_959 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_959);
    let x_961 : f32 = u_xlat39;
    let x_963 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_961, x_961, x_961) * vec3<f32>(x_963.x, x_963.y, x_963.z));
    let x_967 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_967);
    let x_969 : f32 = u_xlat38;
    let x_970 : i32 = u_xlati27;
    let x_972 : f32 = x_936.x_AdditionalLightsAttenuation[x_970].x;
    u_xlat38 = (x_969 * x_972);
    let x_974 : f32 = u_xlat38;
    let x_976 : f32 = u_xlat38;
    u_xlat38 = ((-(x_974) * x_976) + 1.0f);
    let x_979 : f32 = u_xlat38;
    u_xlat38 = max(x_979, 0.0f);
    let x_981 : f32 = u_xlat38;
    let x_982 : f32 = u_xlat38;
    u_xlat38 = (x_981 * x_982);
    let x_984 : f32 = u_xlat38;
    let x_985 : f32 = u_xlat40;
    u_xlat38 = (x_984 * x_985);
    let x_987 : i32 = u_xlati27;
    let x_989 : vec4<f32> = x_936.x_AdditionalLightsSpotDir[x_987];
    let x_991 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_989.x, x_989.y, x_989.z), x_991);
    let x_993 : f32 = u_xlat40;
    let x_994 : i32 = u_xlati27;
    let x_996 : f32 = x_936.x_AdditionalLightsAttenuation[x_994].z;
    let x_998 : i32 = u_xlati27;
    let x_1000 : f32 = x_936.x_AdditionalLightsAttenuation[x_998].w;
    u_xlat40 = ((x_993 * x_996) + x_1000);
    let x_1002 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1002, 0.0f, 1.0f);
    let x_1004 : f32 = u_xlat40;
    let x_1005 : f32 = u_xlat40;
    u_xlat40 = (x_1004 * x_1005);
    let x_1007 : f32 = u_xlat38;
    let x_1008 : f32 = u_xlat40;
    u_xlat38 = (x_1007 * x_1008);
    let x_1011 : f32 = u_xlat16;
    let x_1013 : i32 = u_xlati27;
    let x_1015 : vec4<f32> = x_936.x_AdditionalLightsColor[x_1013];
    u_xlat10 = (vec3<f32>(x_1011, x_1011, x_1011) * vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
    let x_1018 : vec4<f32> = u_xlat2;
    let x_1020 : vec3<f32> = u_xlat9;
    u_xlat27.x = dot(vec3<f32>(x_1018.x, x_1018.y, x_1018.z), x_1020);
    let x_1024 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1024, 0.0f, 1.0f);
    let x_1028 : f32 = u_xlat27.x;
    let x_1029 : f32 = u_xlat38;
    u_xlat27.x = (x_1028 * x_1029);
    let x_1032 : vec2<f32> = u_xlat27;
    let x_1034 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1032.x, x_1032.x, x_1032.x) * x_1034);
    let x_1036 : vec4<f32> = u_xlat8;
    let x_1038 : f32 = u_xlat39;
    let x_1041 : vec3<f32> = u_xlat3;
    let x_1042 : vec3<f32> = ((vec3<f32>(x_1036.x, x_1036.y, x_1036.z) * vec3<f32>(x_1038, x_1038, x_1038)) + x_1041);
    let x_1043 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
    let x_1045 : vec4<f32> = u_xlat8;
    let x_1047 : vec4<f32> = u_xlat8;
    u_xlat27.x = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
    let x_1052 : f32 = u_xlat27.x;
    u_xlat27.x = max(x_1052, 1.17549435e-37f);
    let x_1056 : f32 = u_xlat27.x;
    u_xlat27.x = inverseSqrt(x_1056);
    let x_1059 : vec2<f32> = u_xlat27;
    let x_1061 : vec4<f32> = u_xlat8;
    let x_1063 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.x, x_1059.x) * vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
    let x_1064 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
    let x_1066 : vec4<f32> = u_xlat2;
    let x_1068 : vec4<f32> = u_xlat8;
    u_xlat27.x = dot(vec3<f32>(x_1066.x, x_1066.y, x_1066.z), vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
    let x_1073 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_1073, 0.0f, 1.0f);
    let x_1076 : vec3<f32> = u_xlat9;
    let x_1077 : vec4<f32> = u_xlat8;
    u_xlat27.y = dot(x_1076, vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
    let x_1082 : f32 = u_xlat27.y;
    u_xlat27.y = clamp(x_1082, 0.0f, 1.0f);
    let x_1085 : vec2<f32> = u_xlat27;
    let x_1086 : vec2<f32> = u_xlat27;
    u_xlat27 = (x_1085 * x_1086);
    let x_1089 : f32 = u_xlat27.x;
    let x_1091 : f32 = u_xlat1.x;
    u_xlat27.x = ((x_1089 * x_1091) + 1.000010014f);
    let x_1096 : f32 = u_xlat27.x;
    let x_1098 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1096 * x_1098);
    let x_1102 : f32 = u_xlat27.y;
    u_xlat38 = max(x_1102, 0.100000001f);
    let x_1104 : f32 = u_xlat38;
    let x_1106 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1104 * x_1106);
    let x_1109 : f32 = u_xlat36;
    let x_1111 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1109 * x_1111);
    let x_1114 : f32 = u_xlat37;
    let x_1116 : f32 = u_xlat27.x;
    u_xlat27.x = (x_1114 / x_1116);
    let x_1119 : vec4<f32> = u_xlat0;
    let x_1121 : vec2<f32> = u_xlat27;
    let x_1124 : vec3<f32> = u_xlat6;
    let x_1125 : vec3<f32> = ((vec3<f32>(x_1119.x, x_1119.y, x_1119.z) * vec3<f32>(x_1121.x, x_1121.x, x_1121.x)) + x_1124);
    let x_1126 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
    let x_1128 : vec4<f32> = u_xlat8;
    let x_1130 : vec3<f32> = u_xlat10;
    let x_1132 : vec4<f32> = u_xlat7;
    let x_1134 : vec3<f32> = ((vec3<f32>(x_1128.x, x_1128.y, x_1128.z) * x_1130) + vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
    let x_1135 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);

    continuing {
      let x_1137 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1137 + bitcast<u32>(1i));
    }
  }
  let x_1139 : vec3<f32> = u_xlat4;
  let x_1140 : vec4<f32> = u_xlat5;
  let x_1143 : vec3<f32> = u_xlat12;
  let x_1144 : vec3<f32> = ((x_1139 * vec3<f32>(x_1140.x, x_1140.x, x_1140.x)) + x_1143);
  let x_1145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1149 : vec4<f32> = u_xlat7;
  let x_1151 : vec4<f32> = u_xlat0;
  let x_1153 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.y, x_1149.z) + vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1154 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

