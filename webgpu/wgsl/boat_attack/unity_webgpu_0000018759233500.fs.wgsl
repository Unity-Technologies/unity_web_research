struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_158 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_495 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_598 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_57 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_108 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb25 : bool;
  var x_447 : f32;
  var u_xlat25 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati26 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_61 : f32 = u_xlat1.w;
    x_57 = x_61;
  } else {
    x_57 = 0.0f;
  }
  let x_64 : f32 = x_57;
  u_xlat0.x = x_64;
  let x_68 : f32 = u_xlat0.w;
  let x_71 : f32 = vs_TEXCOORD7.w;
  let x_74 : f32 = x_51.x_Cutoff;
  u_xlat8 = ((x_68 * x_71) + -(x_74));
  let x_79 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_79);
  let x_83 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_83);
  let x_85 : f32 = u_xlat24;
  let x_87 : f32 = u_xlat16;
  u_xlat16 = (abs(x_85) + abs(x_87));
  let x_90 : f32 = u_xlat16;
  u_xlat16 = max(x_90, 0.0001f);
  let x_93 : f32 = u_xlat8;
  let x_94 : f32 = u_xlat16;
  u_xlat8 = (x_93 / x_94);
  let x_96 : f32 = u_xlat8;
  u_xlat8 = (x_96 + 0.5f);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = clamp(x_99, 0.0f, 1.0f);
  let x_105 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_105 == 0.0f));
  let x_107 : bool = u_xlatb16;
  if (x_107) {
    let x_111 : f32 = u_xlat8;
    x_108 = x_111;
  } else {
    let x_114 : f32 = u_xlat0.x;
    x_108 = x_114;
  }
  let x_115 : f32 = x_108;
  u_xlat0.x = x_115;
  let x_118 : f32 = u_xlat0.x;
  u_xlat0.x = (x_118 + -0.0001f);
  let x_123 : f32 = u_xlat0.x;
  u_xlatb0 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb0;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD3;
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_140);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_151 : vec4<f32> = vs_TEXCOORD2;
  let x_161 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = vs_TEXCOORD2;
  let x_172 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_175 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) + -(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = vs_TEXCOORD2;
  let x_183 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (vec3<f32>(x_179.x, x_179.y, x_179.z) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_188 : vec4<f32> = vs_TEXCOORD2;
  let x_191 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_188.x, x_188.y, x_188.z) + -(vec3<f32>(x_191.x, x_191.y, x_191.z)));
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : vec3<f32> = u_xlat5;
  let x_209 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_208, x_209);
  let x_213 : vec3<f32> = u_xlat6;
  let x_214 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_213, x_214);
  let x_220 : vec4<f32> = u_xlat3;
  let x_223 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_220 < x_223);
  let x_226 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_242);
  let x_248 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_248);
  let x_252 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_252);
  let x_255 : vec4<f32> = u_xlat3;
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_257.y, x_257.z, x_257.w));
  let x_260 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat3;
  let x_265 : vec3<f32> = max(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_266 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_266.x, x_265.x, x_265.y, x_265.z);
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_268, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_276 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_276) + 4.0f);
  let x_283 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_283);
  let x_287 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_287) << bitcast<u32>(2i));
  let x_290 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : i32 = u_xlati0;
  let x_295 : i32 = u_xlati0;
  let x_299 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_292 + 1i) / 4i)][((x_295 + 1i) % 4i)];
  let x_301 : vec3<f32> = (vec3<f32>(x_290.y, x_290.y, x_290.y) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : i32 = u_xlati0;
  let x_306 : i32 = u_xlati0;
  let x_309 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_304 / 4i)][(x_306 % 4i)];
  let x_311 : vec4<f32> = vs_TEXCOORD2;
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : i32 = u_xlati0;
  let x_322 : i32 = u_xlati0;
  let x_326 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_319 + 2i) / 4i)][((x_322 + 2i) % 4i)];
  let x_328 : vec4<f32> = vs_TEXCOORD2;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.z, x_328.z, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : i32 = u_xlati0;
  let x_341 : i32 = u_xlati0;
  let x_345 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_338 + 3i) / 4i)][((x_341 + 3i) % 4i)];
  let x_347 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_356 : vec2<f32> = vs_TEXCOORD1;
  let x_358 : f32 = x_27.x_GlobalMipBias.x;
  let x_359 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_356, x_358);
  u_xlat4 = x_359;
  let x_364 : vec2<f32> = vs_TEXCOORD1;
  let x_366 : f32 = x_27.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_364, x_366);
  u_xlat5 = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat4;
  let x_373 : vec3<f32> = (vec3<f32>(x_369.x, x_369.y, x_369.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec3<f32> = u_xlat2;
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_376, vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_382 : f32 = u_xlat0.x;
  u_xlat0.x = (x_382 + 0.5f);
  let x_385 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = u_xlat5;
  let x_388 : vec3<f32> = (vec3<f32>(x_385.x, x_385.x, x_385.x) * x_387);
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat4.w;
  u_xlat0.x = max(x_392, 0.0001f);
  let x_395 : vec4<f32> = u_xlat4;
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec3<f32> = (vec3<f32>(x_395.x, x_395.y, x_395.z) / vec3<f32>(x_397.x, x_397.x, x_397.x));
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : vec4<f32> = u_xlat3;
  let x_404 : vec2<f32> = vec2<f32>(x_403.x, x_403.y);
  let x_406 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_404.x, x_404.y, x_406);
  let x_418 : vec3<f32> = txVec0;
  let x_420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_418.xy, x_418.z);
  u_xlat0.x = x_420;
  let x_424 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_424) + 1.0f);
  let x_428 : f32 = u_xlat0.x;
  let x_430 : f32 = x_158.x_MainLightShadowParams.x;
  let x_432 : f32 = u_xlat24;
  u_xlat0.x = ((x_428 * x_430) + x_432);
  let x_437 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_437);
  let x_441 : f32 = u_xlat3.z;
  u_xlatb25 = (x_441 >= 1.0f);
  let x_443 : bool = u_xlatb24;
  let x_444 : bool = u_xlatb25;
  u_xlatb24 = (x_443 | x_444);
  let x_446 : bool = u_xlatb24;
  if (x_446) {
    x_447 = 1.0f;
  } else {
    let x_452 : f32 = u_xlat0.x;
    x_447 = x_452;
  }
  let x_453 : f32 = x_447;
  u_xlat0.x = x_453;
  let x_455 : vec4<f32> = vs_TEXCOORD2;
  let x_459 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_461 : vec3<f32> = (vec3<f32>(x_455.x, x_455.y, x_455.z) + -(x_459));
  let x_462 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat3;
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_464.x, x_464.y, x_464.z), vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : f32 = u_xlat24;
  let x_471 : f32 = x_158.x_MainLightShadowParams.z;
  let x_474 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat24 = ((x_469 * x_471) + x_474);
  let x_476 : f32 = u_xlat24;
  u_xlat24 = clamp(x_476, 0.0f, 1.0f);
  let x_480 : f32 = u_xlat0.x;
  u_xlat25 = (-(x_480) + 1.0f);
  let x_483 : f32 = u_xlat24;
  let x_484 : f32 = u_xlat25;
  let x_487 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_483 * x_484) + x_487);
  let x_491 : f32 = u_xlat0.x;
  let x_497 : f32 = x_495.unity_LightData.z;
  u_xlat0.x = (x_491 * x_497);
  let x_500 : vec4<f32> = u_xlat0;
  let x_503 : vec4<f32> = x_27.x_MainLightColor;
  let x_505 : vec3<f32> = (vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec3<f32> = u_xlat2;
  let x_510 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_508, vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_515 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_515, 0.0f, 1.0f);
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = u_xlat3;
  let x_522 : vec3<f32> = (vec3<f32>(x_518.x, x_518.x, x_518.x) * vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat1;
  let x_527 : vec4<f32> = u_xlat3;
  let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_533 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_535 : f32 = x_495.unity_LightData.y;
  u_xlat0.x = min(x_533, x_535);
  let x_539 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_539));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_551 : u32 = u_xlatu_loop_1;
    let x_552 : u32 = u_xlatu0;
    if ((x_551 < x_552)) {
    } else {
      break;
    }
    let x_555 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_555 >> 2u);
    let x_558 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_558 & 3u));
    let x_562 : u32 = u_xlatu25;
    let x_565 : vec4<f32> = x_495.unity_LightIndices[bitcast<i32>(x_562)];
    let x_575 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_580 : vec4<u32> = indexable[x_575];
    u_xlat25 = dot(x_565, bitcast<vec4<f32>>(x_580));
    let x_584 : f32 = u_xlat25;
    u_xlati25 = i32(x_584);
    let x_586 : vec4<f32> = vs_TEXCOORD2;
    let x_599 : i32 = u_xlati25;
    let x_601 : vec4<f32> = x_598.x_AdditionalLightsPosition[x_599];
    let x_604 : i32 = u_xlati25;
    let x_606 : vec4<f32> = x_598.x_AdditionalLightsPosition[x_604];
    u_xlat6 = ((-(vec3<f32>(x_586.x, x_586.y, x_586.z)) * vec3<f32>(x_601.w, x_601.w, x_601.w)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
    let x_610 : vec3<f32> = u_xlat6;
    let x_611 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_610, x_611);
    let x_613 : f32 = u_xlat26;
    u_xlat26 = max(x_613, 6.10351562e-05f);
    let x_617 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_617);
    let x_619 : f32 = u_xlat27;
    let x_621 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_619, x_619, x_619) * x_621);
    let x_623 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_623);
    let x_625 : f32 = u_xlat26;
    let x_626 : i32 = u_xlati25;
    let x_628 : f32 = x_598.x_AdditionalLightsAttenuation[x_626].x;
    u_xlat26 = (x_625 * x_628);
    let x_630 : f32 = u_xlat26;
    let x_632 : f32 = u_xlat26;
    u_xlat26 = ((-(x_630) * x_632) + 1.0f);
    let x_635 : f32 = u_xlat26;
    u_xlat26 = max(x_635, 0.0f);
    let x_637 : f32 = u_xlat26;
    let x_638 : f32 = u_xlat26;
    u_xlat26 = (x_637 * x_638);
    let x_640 : f32 = u_xlat26;
    let x_641 : f32 = u_xlat27;
    u_xlat26 = (x_640 * x_641);
    let x_643 : i32 = u_xlati25;
    let x_645 : vec4<f32> = x_598.x_AdditionalLightsSpotDir[x_643];
    let x_647 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), x_647);
    let x_649 : f32 = u_xlat27;
    let x_650 : i32 = u_xlati25;
    let x_652 : f32 = x_598.x_AdditionalLightsAttenuation[x_650].z;
    let x_654 : i32 = u_xlati25;
    let x_656 : f32 = x_598.x_AdditionalLightsAttenuation[x_654].w;
    u_xlat27 = ((x_649 * x_652) + x_656);
    let x_658 : f32 = u_xlat27;
    u_xlat27 = clamp(x_658, 0.0f, 1.0f);
    let x_660 : f32 = u_xlat27;
    let x_661 : f32 = u_xlat27;
    u_xlat27 = (x_660 * x_661);
    let x_663 : f32 = u_xlat26;
    let x_664 : f32 = u_xlat27;
    u_xlat26 = (x_663 * x_664);
    let x_667 : f32 = u_xlat26;
    let x_669 : i32 = u_xlati25;
    let x_671 : vec4<f32> = x_598.x_AdditionalLightsColor[x_669];
    u_xlat7 = (vec3<f32>(x_667, x_667, x_667) * vec3<f32>(x_671.x, x_671.y, x_671.z));
    let x_674 : vec3<f32> = u_xlat2;
    let x_675 : vec3<f32> = u_xlat6;
    u_xlat25 = dot(x_674, x_675);
    let x_677 : f32 = u_xlat25;
    u_xlat25 = clamp(x_677, 0.0f, 1.0f);
    let x_679 : f32 = u_xlat25;
    let x_681 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_679, x_679, x_679) * x_681);
    let x_683 : vec3<f32> = u_xlat6;
    let x_684 : vec4<f32> = u_xlat1;
    let x_687 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_683 * vec3<f32>(x_684.x, x_684.y, x_684.z)) + x_687);

    continuing {
      let x_689 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_689 + bitcast<u32>(1i));
    }
  }
  let x_691 : vec4<f32> = u_xlat4;
  let x_693 : vec4<f32> = u_xlat1;
  let x_696 : vec4<f32> = u_xlat3;
  let x_698 : vec3<f32> = ((vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_693.x, x_693.y, x_693.z)) + vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_703 : vec3<f32> = u_xlat5;
  let x_704 : vec4<f32> = u_xlat1;
  let x_706 : vec3<f32> = (x_703 + vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : bool = u_xlatb16;
  let x_710 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_710, x_709);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

