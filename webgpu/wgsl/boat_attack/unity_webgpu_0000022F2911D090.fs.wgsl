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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_648 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlat22 : f32;
  var u_xlatu22 : u32;
  var u_xlati22 : i32;
  var u_xlat23 : f32;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var u_xlatb16 : bool;
  var x_488 : f32;
  var u_xlat16 : f32;
  var u_xlatu2 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati12 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_822 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb8 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb8;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_149 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_168 : vec3<f32> = (x_163 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD1;
  let x_175 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_172 + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_180 : vec3<f32> = vs_TEXCOORD1;
  let x_183 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_180 + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : vec3<f32> = u_xlat4;
  let x_201 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_200, x_201);
  let x_204 : vec3<f32> = u_xlat5;
  let x_205 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_204, x_205);
  let x_211 : vec4<f32> = u_xlat2;
  let x_214 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_211 < x_214);
  let x_217 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_233);
  let x_239 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_239);
  let x_243 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_243);
  let x_246 : vec4<f32> = u_xlat2;
  let x_248 : vec4<f32> = u_xlat3;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + vec3<f32>(x_248.y, x_248.z, x_248.w));
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat2;
  let x_256 : vec3<f32> = max(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_257.x, x_256.x, x_256.y, x_256.z);
  let x_260 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(x_260, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_266 : f32 = u_xlat22;
  u_xlat22 = (-(x_266) + 4.0f);
  let x_271 : f32 = u_xlat22;
  u_xlatu22 = u32(x_271);
  let x_275 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_275) << bitcast<u32>(2i));
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_280 : i32 = u_xlati22;
  let x_283 : i32 = u_xlati22;
  let x_287 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_280 + 1i) / 4i)][((x_283 + 1i) % 4i)];
  let x_289 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : i32 = u_xlati22;
  let x_294 : i32 = u_xlati22;
  let x_297 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_292 / 4i)][(x_294 % 4i)];
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.x, x_299.x, x_299.x)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : i32 = u_xlati22;
  let x_310 : i32 = u_xlati22;
  let x_314 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_307 + 2i) / 4i)][((x_310 + 2i) % 4i)];
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat2;
  let x_326 : i32 = u_xlati22;
  let x_329 : i32 = u_xlati22;
  let x_333 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_326 + 3i) / 4i)][((x_329 + 3i) % 4i)];
  let x_335 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_339 : f32 = vs_TEXCOORD1.y;
  let x_342 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat22 = (x_339 * x_342);
  let x_345 : f32 = x_44.unity_MatrixV[0i].z;
  let x_347 : f32 = vs_TEXCOORD1.x;
  let x_349 : f32 = u_xlat22;
  u_xlat22 = ((x_345 * x_347) + x_349);
  let x_352 : f32 = x_44.unity_MatrixV[2i].z;
  let x_354 : f32 = vs_TEXCOORD1.z;
  let x_356 : f32 = u_xlat22;
  u_xlat22 = ((x_352 * x_354) + x_356);
  let x_358 : f32 = u_xlat22;
  let x_360 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat22 = (x_358 + x_360);
  let x_362 : f32 = u_xlat22;
  let x_366 : f32 = x_44.x_ProjectionParams.y;
  u_xlat22 = (-(x_362) + -(x_366));
  let x_369 : f32 = u_xlat22;
  u_xlat22 = max(x_369, 0.0f);
  let x_371 : f32 = u_xlat22;
  let x_374 : f32 = x_44.unity_FogParams.x;
  u_xlat22 = (x_371 * x_374);
  let x_382 : vec2<f32> = vs_TEXCOORD7;
  let x_384 : f32 = x_44.x_GlobalMipBias.x;
  let x_385 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_382, x_384);
  let x_386 : vec3<f32> = vec3<f32>(x_385.x, x_385.y, x_385.z);
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_391 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  let x_396 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_392.x, x_392.y));
  let x_397 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_396.x, x_396.y, x_397.z);
  let x_399 : vec3<f32> = u_xlat4;
  let x_401 : vec4<f32> = hlslcc_FragCoord;
  let x_403 : vec2<f32> = (vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_401.x, x_401.y));
  let x_404 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_403.x, x_403.y, x_404.z);
  let x_408 : f32 = u_xlat4.y;
  let x_411 : f32 = x_44.x_ScaleBiasRt.x;
  let x_414 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23 = ((x_408 * x_411) + x_414);
  let x_416 : f32 = u_xlat23;
  u_xlat4.z = (-(x_416) + 1.0f);
  let x_425 : vec3<f32> = u_xlat4;
  let x_428 : f32 = x_44.x_GlobalMipBias.x;
  let x_429 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_425.x, x_425.z), x_428);
  u_xlat23 = x_429.x;
  let x_432 : f32 = u_xlat23;
  u_xlat24 = (x_432 + -1.0f);
  let x_435 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_436 : f32 = u_xlat24;
  u_xlat24 = ((x_435 * x_436) + 1.0f);
  let x_439 : f32 = u_xlat23;
  u_xlat23 = min(x_439, 1.0f);
  let x_442 : vec4<f32> = u_xlat2;
  let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
  let x_445 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_443.x, x_443.y, x_445);
  let x_457 : vec3<f32> = txVec0;
  let x_459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_457.xy, x_457.z);
  u_xlat2.x = x_459;
  let x_463 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat9.x = (-(x_463) + 1.0f);
  let x_468 : f32 = u_xlat2.x;
  let x_470 : f32 = x_154.x_MainLightShadowParams.x;
  let x_473 : f32 = u_xlat9.x;
  u_xlat2.x = ((x_468 * x_470) + x_473);
  let x_478 : f32 = u_xlat2.z;
  u_xlatb9 = (0.0f >= x_478);
  let x_482 : f32 = u_xlat2.z;
  u_xlatb16 = (x_482 >= 1.0f);
  let x_484 : bool = u_xlatb16;
  let x_485 : bool = u_xlatb9;
  u_xlatb9 = (x_484 | x_485);
  let x_487 : bool = u_xlatb9;
  if (x_487) {
    x_488 = 1.0f;
  } else {
    let x_493 : f32 = u_xlat2.x;
    x_488 = x_493;
  }
  let x_494 : f32 = x_488;
  u_xlat2.x = x_494;
  let x_496 : vec3<f32> = vs_TEXCOORD1;
  let x_500 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_496 + -(x_500));
  let x_503 : vec3<f32> = u_xlat4;
  let x_504 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(x_503, x_504);
  let x_508 : f32 = u_xlat9.x;
  let x_510 : f32 = x_154.x_MainLightShadowParams.z;
  let x_513 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat9.x = ((x_508 * x_510) + x_513);
  let x_517 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_517, 0.0f, 1.0f);
  let x_522 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_522) + 1.0f);
  let x_526 : f32 = u_xlat9.x;
  let x_527 : f32 = u_xlat16;
  let x_530 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_526 * x_527) + x_530);
  let x_533 : f32 = u_xlat24;
  let x_536 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_533, x_533, x_533) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : f32 = u_xlat23;
  let x_541 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_539, x_539, x_539) * vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_545 : f32 = u_xlat2.x;
  let x_547 : f32 = x_93.unity_LightData.z;
  u_xlat2.x = (x_545 * x_547);
  let x_550 : vec4<f32> = u_xlat2;
  let x_552 : vec3<f32> = u_xlat4;
  let x_553 : vec3<f32> = (vec3<f32>(x_550.x, x_550.x, x_550.x) * x_552);
  let x_554 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec3<f32> = u_xlat1;
  let x_558 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(x_556, vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_563 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_563, 0.0f, 1.0f);
  let x_566 : vec4<f32> = u_xlat2;
  let x_568 : vec4<f32> = u_xlat3;
  let x_570 : vec3<f32> = (vec3<f32>(x_566.x, x_566.x, x_566.x) * vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat0;
  let x_575 : vec4<f32> = u_xlat3;
  let x_577 : vec3<f32> = (vec3<f32>(x_573.y, x_573.z, x_573.w) * vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_581 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_583 : f32 = x_93.unity_LightData.y;
  u_xlat2.x = min(x_581, x_583);
  let x_588 : f32 = u_xlat2.x;
  u_xlatu2 = bitcast<u32>(i32(x_588));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_600 : u32 = u_xlatu_loop_1;
    let x_601 : u32 = u_xlatu2;
    if ((x_600 < x_601)) {
    } else {
      break;
    }
    let x_604 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_604 >> 2u);
    let x_607 : u32 = u_xlatu_loop_1;
    u_xlati12 = bitcast<i32>((x_607 & 3u));
    let x_610 : u32 = u_xlatu5;
    let x_613 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_610)];
    let x_623 : i32 = u_xlati12;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_628 : vec4<u32> = indexable[x_623];
    u_xlat5.x = dot(x_613, bitcast<vec4<f32>>(x_628));
    let x_634 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_634);
    let x_637 : vec3<f32> = vs_TEXCOORD1;
    let x_649 : i32 = u_xlati5;
    let x_651 : vec4<f32> = x_648.x_AdditionalLightsPosition[x_649];
    let x_654 : i32 = u_xlati5;
    let x_656 : vec4<f32> = x_648.x_AdditionalLightsPosition[x_654];
    u_xlat12 = ((-(x_637) * vec3<f32>(x_651.w, x_651.w, x_651.w)) + vec3<f32>(x_656.x, x_656.y, x_656.z));
    let x_660 : vec3<f32> = u_xlat12;
    let x_661 : vec3<f32> = u_xlat12;
    u_xlat6.x = dot(x_660, x_661);
    let x_665 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_665, 6.10351562e-05f);
    let x_671 : f32 = u_xlat6.x;
    u_xlat13.x = inverseSqrt(x_671);
    let x_674 : vec3<f32> = u_xlat12;
    let x_675 : vec3<f32> = u_xlat13;
    u_xlat12 = (x_674 * vec3<f32>(x_675.x, x_675.x, x_675.x));
    let x_679 : f32 = u_xlat6.x;
    u_xlat13.x = (1.0f / x_679);
    let x_683 : f32 = u_xlat6.x;
    let x_684 : i32 = u_xlati5;
    let x_686 : f32 = x_648.x_AdditionalLightsAttenuation[x_684].x;
    u_xlat6.x = (x_683 * x_686);
    let x_690 : f32 = u_xlat6.x;
    let x_693 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_690) * x_693) + 1.0f);
    let x_698 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_698, 0.0f);
    let x_702 : f32 = u_xlat6.x;
    let x_704 : f32 = u_xlat6.x;
    u_xlat6.x = (x_702 * x_704);
    let x_708 : f32 = u_xlat6.x;
    let x_710 : f32 = u_xlat13.x;
    u_xlat6.x = (x_708 * x_710);
    let x_713 : i32 = u_xlati5;
    let x_715 : vec4<f32> = x_648.x_AdditionalLightsSpotDir[x_713];
    let x_717 : vec3<f32> = u_xlat12;
    u_xlat13.x = dot(vec3<f32>(x_715.x, x_715.y, x_715.z), x_717);
    let x_721 : f32 = u_xlat13.x;
    let x_722 : i32 = u_xlati5;
    let x_724 : f32 = x_648.x_AdditionalLightsAttenuation[x_722].z;
    let x_726 : i32 = u_xlati5;
    let x_728 : f32 = x_648.x_AdditionalLightsAttenuation[x_726].w;
    u_xlat13.x = ((x_721 * x_724) + x_728);
    let x_732 : f32 = u_xlat13.x;
    u_xlat13.x = clamp(x_732, 0.0f, 1.0f);
    let x_736 : f32 = u_xlat13.x;
    let x_738 : f32 = u_xlat13.x;
    u_xlat13.x = (x_736 * x_738);
    let x_742 : f32 = u_xlat13.x;
    let x_744 : f32 = u_xlat6.x;
    u_xlat6.x = (x_742 * x_744);
    let x_747 : f32 = u_xlat24;
    let x_749 : i32 = u_xlati5;
    let x_751 : vec4<f32> = x_648.x_AdditionalLightsColor[x_749];
    u_xlat13 = (vec3<f32>(x_747, x_747, x_747) * vec3<f32>(x_751.x, x_751.y, x_751.z));
    let x_754 : vec3<f32> = u_xlat6;
    let x_756 : vec3<f32> = u_xlat13;
    u_xlat6 = (vec3<f32>(x_754.x, x_754.x, x_754.x) * x_756);
    let x_758 : vec3<f32> = u_xlat1;
    let x_759 : vec3<f32> = u_xlat12;
    u_xlat5.x = dot(x_758, x_759);
    let x_763 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_763, 0.0f, 1.0f);
    let x_766 : vec3<f32> = u_xlat5;
    let x_768 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_766.x, x_766.x, x_766.x) * x_768);
    let x_770 : vec3<f32> = u_xlat5;
    let x_771 : vec4<f32> = u_xlat0;
    let x_774 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_770 * vec3<f32>(x_771.y, x_771.z, x_771.w)) + x_774);

    continuing {
      let x_776 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_776 + bitcast<u32>(1i));
    }
  }
  let x_779 : vec3<f32> = u_xlat9;
  let x_780 : vec4<f32> = u_xlat0;
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat7 = ((x_779 * vec3<f32>(x_780.y, x_780.z, x_780.w)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec3<f32> = u_xlat4;
  let x_787 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_786 + x_787);
  let x_789 : f32 = u_xlat22;
  let x_790 : f32 = u_xlat22;
  u_xlat1.x = (x_789 * -(x_790));
  let x_795 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_795);
  let x_798 : vec3<f32> = u_xlat7;
  let x_801 : vec4<f32> = x_44.unity_FogColor;
  u_xlat7 = (x_798 + -(vec3<f32>(x_801.x, x_801.y, x_801.z)));
  let x_807 : vec3<f32> = u_xlat1;
  let x_809 : vec3<f32> = u_xlat7;
  let x_812 : vec4<f32> = x_44.unity_FogColor;
  let x_814 : vec3<f32> = ((vec3<f32>(x_807.x, x_807.x, x_807.x) * x_809) + vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_819 : f32 = x_56.x_Surface;
  u_xlatb7 = (x_819 == 1.0f);
  let x_821 : bool = u_xlatb7;
  if (x_821) {
    let x_826 : f32 = u_xlat0.x;
    x_822 = x_826;
  } else {
    x_822 = 1.0f;
  }
  let x_828 : f32 = x_822;
  SV_Target0.w = x_828;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

