struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_338 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_859 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat30 : f32;
  var u_xlatb20 : bool;
  var x_130 : f32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu30 : u32;
  var u_xlati30 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlat33 : f32;
  var u_xlatb33 : bool;
  var u_xlatu32 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu34 : u32;
  var u_xlati35 : i32;
  var u_xlat34 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati34 : i32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var x_1023 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat10.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat30;
  let x_104 : f32 = u_xlat20;
  u_xlat20 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat20;
  u_xlat20 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat10.x;
  let x_112 : f32 = u_xlat20;
  u_xlat10.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat10.x;
  u_xlat10.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb20;
  if (x_129) {
    let x_134 : f32 = u_xlat10.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat10.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat10.x;
  u_xlatb10 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb10;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_43.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_164, x_166);
  u_xlat2 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_170 : f32 = u_xlat2.x;
  let x_173 : f32 = u_xlat2.z;
  u_xlat2.x = (x_170 * x_173);
  let x_176 : vec3<f32> = u_xlat2;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat10;
  let x_188 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec4<f32> = hlslcc_FragCoord;
  let x_214 : f32 = x_43.x_DitheringTextureInvSize;
  let x_216 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_214, x_214));
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_224 : vec3<f32> = u_xlat2;
  let x_227 : f32 = x_43.x_GlobalMipBias.x;
  let x_228 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_224.x, x_224.y), x_227);
  u_xlat2.x = x_228.w;
  let x_238 : f32 = x_236.unity_LODFade.x;
  u_xlatb12 = (x_238 >= 0.0f);
  let x_240 : bool = u_xlatb12;
  if (x_240) {
    let x_245 : f32 = u_xlat2.x;
    x_241 = abs(x_245);
  } else {
    let x_249 : f32 = u_xlat2.x;
    x_241 = -(abs(x_249));
  }
  let x_252 : f32 = x_241;
  u_xlat2.x = x_252;
  let x_255 : f32 = u_xlat2.x;
  let x_258 : f32 = x_236.unity_LODFade.x;
  u_xlat2.x = (-(x_255) + x_258);
  let x_263 : f32 = u_xlat2.x;
  u_xlatb2 = (x_263 < 0.0f);
  let x_265 : bool = u_xlatb2;
  if (((select(0i, 1i, x_265) * -1i) != 0i)) {
    discard;
  }
  let x_272 : vec3<f32> = u_xlat10;
  let x_275 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat10;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_299);
  let x_302 : vec3<f32> = u_xlat10;
  let x_304 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_308 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_308;
  let x_311 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_311;
  let x_315 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_315;
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_322, 1.17549435e-37f);
  let x_327 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_327);
  let x_333 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres0;
  let x_343 : vec3<f32> = (x_333 + -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres1;
  let x_352 : vec3<f32> = (x_347 + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_359 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_356 + -(vec3<f32>(x_359.x, x_359.y, x_359.z)));
  let x_364 : vec3<f32> = vs_TEXCOORD1;
  let x_366 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_364 + -(vec3<f32>(x_366.x, x_366.y, x_366.z)));
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_382 : vec3<f32> = u_xlat6;
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_382, x_383);
  let x_386 : vec3<f32> = u_xlat7;
  let x_387 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_386, x_387);
  let x_393 : vec4<f32> = u_xlat4;
  let x_396 : vec4<f32> = x_338.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_393 < x_396);
  let x_399 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_399);
  let x_403 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_403);
  let x_407 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_407);
  let x_411 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_411);
  let x_415 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_415);
  let x_420 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_420);
  let x_424 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_424);
  let x_427 : vec4<f32> = u_xlat4;
  let x_429 : vec4<f32> = u_xlat5;
  let x_431 : vec3<f32> = (vec3<f32>(x_427.x, x_427.y, x_427.z) + vec3<f32>(x_429.y, x_429.z, x_429.w));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat4;
  let x_437 : vec3<f32> = max(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_438.x, x_437.x, x_437.y, x_437.z);
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat30 = dot(x_440, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_445 : f32 = u_xlat30;
  u_xlat30 = (-(x_445) + 4.0f);
  let x_450 : f32 = u_xlat30;
  u_xlatu30 = u32(x_450);
  let x_454 : u32 = u_xlatu30;
  u_xlati30 = (bitcast<i32>(x_454) << bitcast<u32>(2i));
  let x_457 : vec3<f32> = vs_TEXCOORD1;
  let x_459 : i32 = u_xlati30;
  let x_462 : i32 = u_xlati30;
  let x_466 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_459 + 1i) / 4i)][((x_462 + 1i) % 4i)];
  let x_468 : vec3<f32> = (vec3<f32>(x_457.y, x_457.y, x_457.y) * vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : i32 = u_xlati30;
  let x_473 : i32 = u_xlati30;
  let x_476 : vec4<f32> = x_338.x_MainLightWorldToShadow[(x_471 / 4i)][(x_473 % 4i)];
  let x_478 : vec3<f32> = vs_TEXCOORD1;
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_478.x, x_478.x, x_478.x)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : i32 = u_xlati30;
  let x_489 : i32 = u_xlati30;
  let x_493 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_486 + 2i) / 4i)][((x_489 + 2i) % 4i)];
  let x_495 : vec3<f32> = vs_TEXCOORD1;
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec3<f32> = ((vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_495.z, x_495.z, x_495.z)) + vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : i32 = u_xlati30;
  let x_508 : i32 = u_xlati30;
  let x_512 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_505 + 3i) / 4i)][((x_508 + 3i) % 4i)];
  let x_514 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_523 : vec2<f32> = vs_TEXCOORD7;
  let x_525 : f32 = x_43.x_GlobalMipBias.x;
  let x_526 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_523, x_525);
  u_xlat5 = x_526;
  let x_531 : vec2<f32> = vs_TEXCOORD7;
  let x_533 : f32 = x_43.x_GlobalMipBias.x;
  let x_534 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_531, x_533);
  u_xlat6 = vec3<f32>(x_534.x, x_534.y, x_534.z);
  let x_536 : vec4<f32> = u_xlat5;
  let x_540 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_541 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec3<f32> = u_xlat2;
  let x_544 : vec4<f32> = u_xlat5;
  u_xlat30 = dot(x_543, vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : f32 = u_xlat30;
  u_xlat30 = (x_547 + 0.5f);
  let x_549 : f32 = u_xlat30;
  let x_551 : vec3<f32> = u_xlat6;
  let x_552 : vec3<f32> = (vec3<f32>(x_549, x_549, x_549) * x_551);
  let x_553 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_556 : f32 = u_xlat5.w;
  u_xlat30 = max(x_556, 0.0001f);
  let x_558 : vec4<f32> = u_xlat5;
  let x_560 : f32 = u_xlat30;
  let x_562 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) / vec3<f32>(x_560, x_560, x_560));
  let x_563 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_567 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_568 : vec2<f32> = vec2<f32>(x_567.x, x_567.y);
  let x_572 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_568.x, x_568.y));
  let x_573 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_572.x, x_572.y, x_573.z);
  let x_575 : vec3<f32> = u_xlat6;
  let x_577 : vec4<f32> = hlslcc_FragCoord;
  let x_579 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_577.x, x_577.y));
  let x_580 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_579.x, x_579.y, x_580.z);
  let x_583 : f32 = u_xlat6.y;
  let x_586 : f32 = x_43.x_ScaleBiasRt.x;
  let x_589 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat30 = ((x_583 * x_586) + x_589);
  let x_591 : f32 = u_xlat30;
  u_xlat6.z = (-(x_591) + 1.0f);
  let x_600 : vec3<f32> = u_xlat6;
  let x_603 : f32 = x_43.x_GlobalMipBias.x;
  let x_604 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_600.x, x_600.z), x_603);
  u_xlat30 = x_604.x;
  let x_606 : f32 = u_xlat30;
  u_xlat1.x = (x_606 + -1.0f);
  let x_610 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_612 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_610 * x_612) + 1.0f);
  let x_616 : f32 = u_xlat30;
  u_xlat30 = min(x_616, 1.0f);
  let x_619 : vec4<f32> = u_xlat4;
  let x_620 : vec2<f32> = vec2<f32>(x_619.x, x_619.y);
  let x_622 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_620.x, x_620.y, x_622);
  let x_635 : vec3<f32> = txVec0;
  let x_637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_635.xy, x_635.z);
  u_xlat32 = x_637;
  let x_640 : f32 = x_338.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_640) + 1.0f);
  let x_643 : f32 = u_xlat32;
  let x_645 : f32 = x_338.x_MainLightShadowParams.x;
  let x_647 : f32 = u_xlat33;
  u_xlat32 = ((x_643 * x_645) + x_647);
  let x_651 : f32 = u_xlat4.z;
  u_xlatb33 = (0.0f >= x_651);
  let x_654 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_654 >= 1.0f);
  let x_657 : bool = u_xlatb33;
  let x_659 : bool = u_xlatb4.x;
  u_xlatb33 = (x_657 | x_659);
  let x_661 : bool = u_xlatb33;
  let x_662 : f32 = u_xlat32;
  u_xlat32 = select(x_662, 1.0f, x_661);
  let x_664 : vec3<f32> = vs_TEXCOORD1;
  let x_668 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_670 : vec3<f32> = (x_664 + -(x_668));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_673.x, x_673.y, x_673.z), vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : f32 = u_xlat33;
  let x_680 : f32 = x_338.x_MainLightShadowParams.z;
  let x_683 : f32 = x_338.x_MainLightShadowParams.w;
  u_xlat33 = ((x_678 * x_680) + x_683);
  let x_685 : f32 = u_xlat33;
  u_xlat33 = clamp(x_685, 0.0f, 1.0f);
  let x_687 : f32 = u_xlat32;
  u_xlat4.x = (-(x_687) + 1.0f);
  let x_691 : f32 = u_xlat33;
  let x_693 : f32 = u_xlat4.x;
  let x_695 : f32 = u_xlat32;
  u_xlat32 = ((x_691 * x_693) + x_695);
  let x_697 : vec4<f32> = u_xlat1;
  let x_700 : vec4<f32> = x_43.x_MainLightColor;
  let x_702 : vec3<f32> = (vec3<f32>(x_697.x, x_697.x, x_697.x) * vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : f32 = u_xlat30;
  let x_707 : vec4<f32> = u_xlat5;
  let x_709 : vec3<f32> = (vec3<f32>(x_705, x_705, x_705) * vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : f32 = u_xlat32;
  let x_714 : f32 = x_236.unity_LightData.z;
  u_xlat30 = (x_712 * x_714);
  let x_716 : f32 = u_xlat30;
  let x_718 : vec4<f32> = u_xlat4;
  let x_720 : vec3<f32> = (vec3<f32>(x_716, x_716, x_716) * vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec3<f32> = u_xlat2;
  let x_725 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat30 = dot(x_723, vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : f32 = u_xlat30;
  u_xlat30 = clamp(x_728, 0.0f, 1.0f);
  let x_730 : f32 = u_xlat30;
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_730, x_730, x_730) * vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_736 : f32 = x_56.x_SpecColor.w;
  u_xlat30 = ((x_736 * 10.0f) + 1.0f);
  let x_740 : f32 = u_xlat30;
  u_xlat30 = exp2(x_740);
  let x_742 : vec3<f32> = u_xlat3;
  let x_743 : vec3<f32> = u_xlat10;
  let x_747 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat7 = ((x_742 * vec3<f32>(x_743.x, x_743.x, x_743.x)) + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec3<f32> = u_xlat7;
  let x_751 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_750, x_751);
  let x_753 : f32 = u_xlat32;
  u_xlat32 = max(x_753, 1.17549435e-37f);
  let x_755 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_755);
  let x_757 : f32 = u_xlat32;
  let x_759 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_757, x_757, x_757) * x_759);
  let x_761 : vec3<f32> = u_xlat2;
  let x_762 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_761, x_762);
  let x_764 : f32 = u_xlat32;
  u_xlat32 = clamp(x_764, 0.0f, 1.0f);
  let x_766 : f32 = u_xlat32;
  u_xlat32 = log2(x_766);
  let x_768 : f32 = u_xlat30;
  let x_769 : f32 = u_xlat32;
  u_xlat32 = (x_768 * x_769);
  let x_771 : f32 = u_xlat32;
  u_xlat32 = exp2(x_771);
  let x_773 : f32 = u_xlat32;
  let x_776 : vec4<f32> = x_56.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_773, x_773, x_773) * vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat4;
  let x_781 : vec3<f32> = u_xlat7;
  let x_782 : vec3<f32> = (vec3<f32>(x_779.x, x_779.y, x_779.z) * x_781);
  let x_783 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec3<f32> = u_xlat6;
  let x_786 : vec4<f32> = u_xlat1;
  let x_789 : vec4<f32> = u_xlat4;
  let x_791 : vec3<f32> = ((x_785 * vec3<f32>(x_786.y, x_786.z, x_786.w)) + vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_796 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_798 : f32 = x_236.unity_LightData.y;
  u_xlat32 = min(x_796, x_798);
  let x_801 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_801));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_813 : u32 = u_xlatu_loop_1;
    let x_814 : u32 = u_xlatu32;
    if ((x_813 < x_814)) {
    } else {
      break;
    }
    let x_817 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_817 >> 2u);
    let x_820 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_820 & 3u));
    let x_824 : u32 = u_xlatu34;
    let x_827 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_824)];
    let x_837 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_842 : vec4<u32> = indexable[x_837];
    u_xlat34 = dot(x_827, bitcast<vec4<f32>>(x_842));
    let x_846 : f32 = u_xlat34;
    u_xlati34 = i32(x_846);
    let x_848 : vec3<f32> = vs_TEXCOORD1;
    let x_860 : i32 = u_xlati34;
    let x_862 : vec4<f32> = x_859.x_AdditionalLightsPosition[x_860];
    let x_865 : i32 = u_xlati34;
    let x_867 : vec4<f32> = x_859.x_AdditionalLightsPosition[x_865];
    u_xlat7 = ((-(x_848) * vec3<f32>(x_862.w, x_862.w, x_862.w)) + vec3<f32>(x_867.x, x_867.y, x_867.z));
    let x_871 : vec3<f32> = u_xlat7;
    let x_872 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_871, x_872);
    let x_874 : f32 = u_xlat35;
    u_xlat35 = max(x_874, 6.10351562e-05f);
    let x_878 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_878);
    let x_880 : f32 = u_xlat36;
    let x_882 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_880, x_880, x_880) * x_882);
    let x_884 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_884);
    let x_886 : f32 = u_xlat35;
    let x_887 : i32 = u_xlati34;
    let x_889 : f32 = x_859.x_AdditionalLightsAttenuation[x_887].x;
    u_xlat35 = (x_886 * x_889);
    let x_891 : f32 = u_xlat35;
    let x_893 : f32 = u_xlat35;
    u_xlat35 = ((-(x_891) * x_893) + 1.0f);
    let x_896 : f32 = u_xlat35;
    u_xlat35 = max(x_896, 0.0f);
    let x_898 : f32 = u_xlat35;
    let x_899 : f32 = u_xlat35;
    u_xlat35 = (x_898 * x_899);
    let x_901 : f32 = u_xlat35;
    let x_902 : f32 = u_xlat36;
    u_xlat35 = (x_901 * x_902);
    let x_904 : i32 = u_xlati34;
    let x_906 : vec4<f32> = x_859.x_AdditionalLightsSpotDir[x_904];
    let x_908 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), x_908);
    let x_910 : f32 = u_xlat36;
    let x_911 : i32 = u_xlati34;
    let x_913 : f32 = x_859.x_AdditionalLightsAttenuation[x_911].z;
    let x_915 : i32 = u_xlati34;
    let x_917 : f32 = x_859.x_AdditionalLightsAttenuation[x_915].w;
    u_xlat36 = ((x_910 * x_913) + x_917);
    let x_919 : f32 = u_xlat36;
    u_xlat36 = clamp(x_919, 0.0f, 1.0f);
    let x_921 : f32 = u_xlat36;
    let x_922 : f32 = u_xlat36;
    u_xlat36 = (x_921 * x_922);
    let x_924 : f32 = u_xlat35;
    let x_925 : f32 = u_xlat36;
    u_xlat35 = (x_924 * x_925);
    let x_928 : vec4<f32> = u_xlat1;
    let x_930 : i32 = u_xlati34;
    let x_932 : vec4<f32> = x_859.x_AdditionalLightsColor[x_930];
    u_xlat8 = (vec3<f32>(x_928.x, x_928.x, x_928.x) * vec3<f32>(x_932.x, x_932.y, x_932.z));
    let x_935 : f32 = u_xlat35;
    let x_937 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_935, x_935, x_935) * x_937);
    let x_939 : vec3<f32> = u_xlat2;
    let x_940 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_939, x_940);
    let x_942 : f32 = u_xlat34;
    u_xlat34 = clamp(x_942, 0.0f, 1.0f);
    let x_945 : f32 = u_xlat34;
    let x_947 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_945, x_945, x_945) * x_947);
    let x_949 : vec3<f32> = u_xlat3;
    let x_950 : vec3<f32> = u_xlat10;
    let x_953 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_949 * vec3<f32>(x_950.x, x_950.x, x_950.x)) + x_953);
    let x_955 : vec3<f32> = u_xlat7;
    let x_956 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_955, x_956);
    let x_958 : f32 = u_xlat34;
    u_xlat34 = max(x_958, 1.17549435e-37f);
    let x_960 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_960);
    let x_962 : f32 = u_xlat34;
    let x_964 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_962, x_962, x_962) * x_964);
    let x_966 : vec3<f32> = u_xlat2;
    let x_967 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_966, x_967);
    let x_969 : f32 = u_xlat34;
    u_xlat34 = clamp(x_969, 0.0f, 1.0f);
    let x_971 : f32 = u_xlat34;
    u_xlat34 = log2(x_971);
    let x_973 : f32 = u_xlat30;
    let x_974 : f32 = u_xlat34;
    u_xlat34 = (x_973 * x_974);
    let x_976 : f32 = u_xlat34;
    u_xlat34 = exp2(x_976);
    let x_978 : f32 = u_xlat34;
    let x_981 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_978, x_978, x_978) * vec3<f32>(x_981.x, x_981.y, x_981.z));
    let x_984 : vec3<f32> = u_xlat7;
    let x_985 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_984 * x_985);
    let x_987 : vec3<f32> = u_xlat9;
    let x_988 : vec4<f32> = u_xlat1;
    let x_991 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_987 * vec3<f32>(x_988.y, x_988.z, x_988.w)) + x_991);
    let x_993 : vec3<f32> = u_xlat6;
    let x_994 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_993 + x_994);

    continuing {
      let x_996 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_996 + bitcast<u32>(1i));
    }
  }
  let x_998 : vec4<f32> = u_xlat5;
  let x_1000 : vec4<f32> = u_xlat1;
  let x_1003 : vec4<f32> = u_xlat4;
  let x_1005 : vec3<f32> = ((vec3<f32>(x_998.x, x_998.y, x_998.z) * vec3<f32>(x_1000.y, x_1000.z, x_1000.w)) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1010 : vec3<f32> = u_xlat6;
  let x_1011 : vec4<f32> = u_xlat1;
  let x_1013 : vec3<f32> = (x_1010 + vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1017 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_1017 == 1.0f);
  let x_1019 : bool = u_xlatb10;
  let x_1020 : bool = u_xlatb20;
  u_xlatb10 = (x_1019 | x_1020);
  let x_1022 : bool = u_xlatb10;
  if (x_1022) {
    let x_1027 : f32 = u_xlat0.x;
    x_1023 = x_1027;
  } else {
    x_1023 = 1.0f;
  }
  let x_1029 : f32 = x_1023;
  SV_Target0.w = x_1029;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

