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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_159 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_360 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_634 : AdditionalLights;

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
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb25 : bool;
  var x_486 : f32;
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
  let x_144 : vec4<f32> = u_xlat0;
  let x_146 : vec3<f32> = vs_TEXCOORD3;
  let x_147 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_162 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = vs_TEXCOORD2;
  let x_173 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_176 : vec3<f32> = (vec3<f32>(x_169.x, x_169.y, x_169.z) + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  let x_187 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_192 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_192.x, x_192.y, x_192.z) + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_212 : vec4<f32> = u_xlat5;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_219 : vec3<f32> = u_xlat6;
  let x_220 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_219, x_220);
  let x_226 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_226 < x_229);
  let x_232 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_240);
  let x_244 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_248);
  let x_254 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_254);
  let x_258 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_258);
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = u_xlat4;
  let x_265 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) + vec3<f32>(x_263.y, x_263.z, x_263.w));
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat3;
  let x_271 : vec3<f32> = max(vec3<f32>(x_268.x, x_268.y, x_268.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_272.x, x_271.x, x_271.y, x_271.z);
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_274, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_282 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_282) + 4.0f);
  let x_289 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_289);
  let x_293 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_293) << bitcast<u32>(2i));
  let x_296 : vec4<f32> = vs_TEXCOORD2;
  let x_298 : i32 = u_xlati0;
  let x_301 : i32 = u_xlati0;
  let x_305 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_298 + 1i) / 4i)][((x_301 + 1i) % 4i)];
  let x_307 : vec3<f32> = (vec3<f32>(x_296.y, x_296.y, x_296.y) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : i32 = u_xlati0;
  let x_312 : i32 = u_xlati0;
  let x_315 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_310 / 4i)][(x_312 % 4i)];
  let x_317 : vec4<f32> = vs_TEXCOORD2;
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : i32 = u_xlati0;
  let x_328 : i32 = u_xlati0;
  let x_332 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_325 + 2i) / 4i)][((x_328 + 2i) % 4i)];
  let x_334 : vec4<f32> = vs_TEXCOORD2;
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.z, x_334.z, x_334.z)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : i32 = u_xlati0;
  let x_347 : i32 = u_xlati0;
  let x_351 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_344 + 3i) / 4i)][((x_347 + 3i) % 4i)];
  let x_353 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  u_xlat2.w = 1.0f;
  let x_363 : vec4<f32> = x_360.unity_SHAr;
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_363, x_364);
  let x_369 : vec4<f32> = x_360.unity_SHAg;
  let x_370 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_369, x_370);
  let x_375 : vec4<f32> = x_360.unity_SHAb;
  let x_376 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_375, x_376);
  let x_379 : vec4<f32> = u_xlat2;
  let x_381 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_379.y, x_379.z, x_379.z, x_379.x) * vec4<f32>(x_381.x, x_381.y, x_381.z, x_381.z));
  let x_386 : vec4<f32> = x_360.unity_SHBr;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_386, x_387);
  let x_392 : vec4<f32> = x_360.unity_SHBg;
  let x_393 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_392, x_393);
  let x_398 : vec4<f32> = x_360.unity_SHBb;
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_398, x_399);
  let x_403 : f32 = u_xlat2.y;
  let x_405 : f32 = u_xlat2.y;
  u_xlat0.x = (x_403 * x_405);
  let x_409 : f32 = u_xlat2.x;
  let x_411 : f32 = u_xlat2.x;
  let x_414 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_409 * x_411) + -(x_414));
  let x_420 : vec4<f32> = x_360.unity_SHC;
  let x_422 : vec4<f32> = u_xlat0;
  let x_425 : vec3<f32> = u_xlat6;
  let x_426 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422.x, x_422.x, x_422.x)) + x_425);
  let x_427 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat4;
  let x_431 : vec4<f32> = u_xlat5;
  let x_433 : vec3<f32> = (vec3<f32>(x_429.x, x_429.y, x_429.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat4;
  let x_438 : vec3<f32> = max(vec3<f32>(x_436.x, x_436.y, x_436.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_439 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_442 : vec4<f32> = u_xlat3;
  let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
  let x_445 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_443.x, x_443.y, x_445);
  let x_457 : vec3<f32> = txVec0;
  let x_459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_457.xy, x_457.z);
  u_xlat0.x = x_459;
  let x_463 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_463) + 1.0f);
  let x_467 : f32 = u_xlat0.x;
  let x_469 : f32 = x_159.x_MainLightShadowParams.x;
  let x_471 : f32 = u_xlat24;
  u_xlat0.x = ((x_467 * x_469) + x_471);
  let x_476 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_476);
  let x_480 : f32 = u_xlat3.z;
  u_xlatb25 = (x_480 >= 1.0f);
  let x_482 : bool = u_xlatb24;
  let x_483 : bool = u_xlatb25;
  u_xlatb24 = (x_482 | x_483);
  let x_485 : bool = u_xlatb24;
  if (x_485) {
    x_486 = 1.0f;
  } else {
    let x_491 : f32 = u_xlat0.x;
    x_486 = x_491;
  }
  let x_492 : f32 = x_486;
  u_xlat0.x = x_492;
  let x_494 : vec4<f32> = vs_TEXCOORD2;
  let x_498 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_500 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) + -(x_498));
  let x_501 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat3;
  let x_505 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_503.x, x_503.y, x_503.z), vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : f32 = u_xlat24;
  let x_510 : f32 = x_159.x_MainLightShadowParams.z;
  let x_513 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat24 = ((x_508 * x_510) + x_513);
  let x_515 : f32 = u_xlat24;
  u_xlat24 = clamp(x_515, 0.0f, 1.0f);
  let x_519 : f32 = u_xlat0.x;
  u_xlat25 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat24;
  let x_523 : f32 = u_xlat25;
  let x_526 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_522 * x_523) + x_526);
  let x_530 : f32 = u_xlat0.x;
  let x_532 : f32 = x_360.unity_LightData.z;
  u_xlat0.x = (x_530 * x_532);
  let x_535 : vec4<f32> = u_xlat0;
  let x_538 : vec4<f32> = x_27.x_MainLightColor;
  let x_540 : vec3<f32> = (vec3<f32>(x_535.x, x_535.x, x_535.x) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat2;
  let x_546 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_543.x, x_543.y, x_543.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_551 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_551, 0.0f, 1.0f);
  let x_554 : vec4<f32> = u_xlat0;
  let x_556 : vec4<f32> = u_xlat3;
  let x_558 : vec3<f32> = (vec3<f32>(x_554.x, x_554.x, x_554.x) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat1;
  let x_563 : vec4<f32> = u_xlat3;
  let x_565 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_571 : f32 = x_360.unity_LightData.y;
  u_xlat0.x = min(x_569, x_571);
  let x_575 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_575));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_587 : u32 = u_xlatu_loop_1;
    let x_588 : u32 = u_xlatu0;
    if ((x_587 < x_588)) {
    } else {
      break;
    }
    let x_591 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_591 >> 2u);
    let x_594 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_594 & 3u));
    let x_598 : u32 = u_xlatu25;
    let x_601 : vec4<f32> = x_360.unity_LightIndices[bitcast<i32>(x_598)];
    let x_611 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_616 : vec4<u32> = indexable[x_611];
    u_xlat25 = dot(x_601, bitcast<vec4<f32>>(x_616));
    let x_620 : f32 = u_xlat25;
    u_xlati25 = i32(x_620);
    let x_622 : vec4<f32> = vs_TEXCOORD2;
    let x_635 : i32 = u_xlati25;
    let x_637 : vec4<f32> = x_634.x_AdditionalLightsPosition[x_635];
    let x_640 : i32 = u_xlati25;
    let x_642 : vec4<f32> = x_634.x_AdditionalLightsPosition[x_640];
    u_xlat6 = ((-(vec3<f32>(x_622.x, x_622.y, x_622.z)) * vec3<f32>(x_637.w, x_637.w, x_637.w)) + vec3<f32>(x_642.x, x_642.y, x_642.z));
    let x_646 : vec3<f32> = u_xlat6;
    let x_647 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_646, x_647);
    let x_649 : f32 = u_xlat26;
    u_xlat26 = max(x_649, 6.10351562e-05f);
    let x_653 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_653);
    let x_655 : f32 = u_xlat27;
    let x_657 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_655, x_655, x_655) * x_657);
    let x_659 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_659);
    let x_661 : f32 = u_xlat26;
    let x_662 : i32 = u_xlati25;
    let x_664 : f32 = x_634.x_AdditionalLightsAttenuation[x_662].x;
    u_xlat26 = (x_661 * x_664);
    let x_666 : f32 = u_xlat26;
    let x_668 : f32 = u_xlat26;
    u_xlat26 = ((-(x_666) * x_668) + 1.0f);
    let x_671 : f32 = u_xlat26;
    u_xlat26 = max(x_671, 0.0f);
    let x_673 : f32 = u_xlat26;
    let x_674 : f32 = u_xlat26;
    u_xlat26 = (x_673 * x_674);
    let x_676 : f32 = u_xlat26;
    let x_677 : f32 = u_xlat27;
    u_xlat26 = (x_676 * x_677);
    let x_679 : i32 = u_xlati25;
    let x_681 : vec4<f32> = x_634.x_AdditionalLightsSpotDir[x_679];
    let x_683 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_681.x, x_681.y, x_681.z), x_683);
    let x_685 : f32 = u_xlat27;
    let x_686 : i32 = u_xlati25;
    let x_688 : f32 = x_634.x_AdditionalLightsAttenuation[x_686].z;
    let x_690 : i32 = u_xlati25;
    let x_692 : f32 = x_634.x_AdditionalLightsAttenuation[x_690].w;
    u_xlat27 = ((x_685 * x_688) + x_692);
    let x_694 : f32 = u_xlat27;
    u_xlat27 = clamp(x_694, 0.0f, 1.0f);
    let x_696 : f32 = u_xlat27;
    let x_697 : f32 = u_xlat27;
    u_xlat27 = (x_696 * x_697);
    let x_699 : f32 = u_xlat26;
    let x_700 : f32 = u_xlat27;
    u_xlat26 = (x_699 * x_700);
    let x_703 : f32 = u_xlat26;
    let x_705 : i32 = u_xlati25;
    let x_707 : vec4<f32> = x_634.x_AdditionalLightsColor[x_705];
    u_xlat7 = (vec3<f32>(x_703, x_703, x_703) * vec3<f32>(x_707.x, x_707.y, x_707.z));
    let x_710 : vec4<f32> = u_xlat2;
    let x_712 : vec3<f32> = u_xlat6;
    u_xlat25 = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), x_712);
    let x_714 : f32 = u_xlat25;
    u_xlat25 = clamp(x_714, 0.0f, 1.0f);
    let x_716 : f32 = u_xlat25;
    let x_718 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_716, x_716, x_716) * x_718);
    let x_720 : vec3<f32> = u_xlat6;
    let x_721 : vec4<f32> = u_xlat1;
    let x_724 : vec4<f32> = u_xlat5;
    let x_726 : vec3<f32> = ((x_720 * vec3<f32>(x_721.x, x_721.y, x_721.z)) + vec3<f32>(x_724.x, x_724.y, x_724.z));
    let x_727 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);

    continuing {
      let x_729 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_729 + bitcast<u32>(1i));
    }
  }
  let x_731 : vec4<f32> = u_xlat4;
  let x_733 : vec4<f32> = u_xlat1;
  let x_736 : vec4<f32> = u_xlat3;
  let x_738 : vec3<f32> = ((vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(x_733.x, x_733.y, x_733.z)) + vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_743 : vec4<f32> = u_xlat5;
  let x_745 : vec4<f32> = u_xlat1;
  let x_747 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) + vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : bool = u_xlatb16;
  let x_751 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_751, x_750);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

