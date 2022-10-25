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
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_431 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_536 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_59 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_109 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu8 : u32;
  var u_xlati8 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb1 : bool;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati26 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati1 : i32;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlat7 : vec3<f32>;
  var x_661 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_63 : f32 = u_xlat1.x;
    x_59 = x_63;
  } else {
    x_59 = 0.0f;
  }
  let x_66 : f32 = x_59;
  u_xlat0.x = x_66;
  let x_71 : f32 = u_xlat0.w;
  let x_73 : f32 = x_41.x_BaseColor.w;
  let x_76 : f32 = x_41.x_Cutoff;
  u_xlat8 = ((x_71 * x_73) + -(x_76));
  let x_81 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_81);
  let x_85 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_85);
  let x_87 : f32 = u_xlat24;
  let x_89 : f32 = u_xlat16;
  u_xlat16 = (abs(x_87) + abs(x_89));
  let x_92 : f32 = u_xlat16;
  u_xlat16 = max(x_92, 0.0001f);
  let x_95 : f32 = u_xlat8;
  let x_96 : f32 = u_xlat16;
  u_xlat8 = (x_95 / x_96);
  let x_98 : f32 = u_xlat8;
  u_xlat8 = (x_98 + 0.5f);
  let x_101 : f32 = u_xlat8;
  u_xlat8 = clamp(x_101, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb16;
  if (x_108) {
    let x_112 : f32 = u_xlat8;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat8 = (x_119 + -0.0001f);
  let x_123 : f32 = u_xlat8;
  u_xlatb8 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb8;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_138);
  let x_142 : f32 = u_xlat8;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_148 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_148 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_169 : vec3<f32> = (x_163 + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec3<f32> = vs_TEXCOORD1;
  let x_176 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_173 + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_181 : vec3<f32> = vs_TEXCOORD1;
  let x_183 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_181 + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : vec3<f32> = u_xlat5;
  let x_201 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_200, x_201);
  let x_205 : vec3<f32> = u_xlat6;
  let x_206 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_205, x_206);
  let x_212 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_212 < x_215);
  let x_218 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_234);
  let x_240 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_240);
  let x_244 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_244);
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) + vec3<f32>(x_249.y, x_249.z, x_249.w));
  let x_252 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat3;
  let x_257 : vec3<f32> = max(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_257.x, x_257.y, x_257.z);
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat8 = dot(x_260, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_266 : f32 = u_xlat8;
  u_xlat8 = (-(x_266) + 4.0f);
  let x_271 : f32 = u_xlat8;
  u_xlatu8 = u32(x_271);
  let x_275 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_275) << bitcast<u32>(2i));
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_280 : i32 = u_xlati8;
  let x_283 : i32 = u_xlati8;
  let x_287 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_280 + 1i) / 4i)][((x_283 + 1i) % 4i)];
  let x_289 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : i32 = u_xlati8;
  let x_294 : i32 = u_xlati8;
  let x_297 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_292 / 4i)][(x_294 % 4i)];
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.x, x_299.x, x_299.x)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : i32 = u_xlati8;
  let x_310 : i32 = u_xlati8;
  let x_314 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_307 + 2i) / 4i)][((x_310 + 2i) % 4i)];
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : i32 = u_xlati8;
  let x_329 : i32 = u_xlati8;
  let x_333 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_326 + 3i) / 4i)][((x_329 + 3i) % 4i)];
  let x_335 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_344 : vec2<f32> = vs_TEXCOORD7;
  let x_346 : f32 = x_27.x_GlobalMipBias.x;
  let x_347 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_344, x_346);
  let x_348 : vec3<f32> = vec3<f32>(x_347.x, x_347.y, x_347.z);
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec4<f32> = u_xlat3;
  let x_353 : vec2<f32> = vec2<f32>(x_352.x, x_352.y);
  let x_355 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_353.x, x_353.y, x_355);
  let x_367 : vec3<f32> = txVec0;
  let x_369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_367.xy, x_367.z);
  u_xlat8 = x_369;
  let x_372 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_372) + 1.0f);
  let x_375 : f32 = u_xlat8;
  let x_377 : f32 = x_154.x_MainLightShadowParams.x;
  let x_379 : f32 = u_xlat24;
  u_xlat8 = ((x_375 * x_377) + x_379);
  let x_383 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_383);
  let x_387 : f32 = u_xlat3.z;
  u_xlatb1 = (x_387 >= 1.0f);
  let x_389 : bool = u_xlatb24;
  let x_390 : bool = u_xlatb1;
  u_xlatb24 = (x_389 | x_390);
  let x_392 : bool = u_xlatb24;
  let x_393 : f32 = u_xlat8;
  u_xlat8 = select(x_393, 1.0f, x_392);
  let x_395 : vec3<f32> = vs_TEXCOORD1;
  let x_398 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_400 : vec3<f32> = (x_395 + -(x_398));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_403.x, x_403.y, x_403.z), vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : f32 = u_xlat24;
  let x_410 : f32 = x_154.x_MainLightShadowParams.z;
  let x_413 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat24 = ((x_408 * x_410) + x_413);
  let x_415 : f32 = u_xlat24;
  u_xlat24 = clamp(x_415, 0.0f, 1.0f);
  let x_417 : f32 = u_xlat8;
  u_xlat1.x = (-(x_417) + 1.0f);
  let x_421 : f32 = u_xlat24;
  let x_423 : f32 = u_xlat1.x;
  let x_425 : f32 = u_xlat8;
  u_xlat8 = ((x_421 * x_423) + x_425);
  let x_427 : f32 = u_xlat8;
  let x_433 : f32 = x_431.unity_LightData.z;
  u_xlat8 = (x_427 * x_433);
  let x_435 : f32 = u_xlat8;
  let x_438 : vec4<f32> = x_27.x_MainLightColor;
  let x_440 : vec3<f32> = (vec3<f32>(x_435, x_435, x_435) * vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec3<f32> = u_xlat2;
  let x_445 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat8 = dot(x_443, vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : f32 = u_xlat8;
  u_xlat8 = clamp(x_448, 0.0f, 1.0f);
  let x_450 : f32 = u_xlat8;
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : vec3<f32> = (vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.y, x_457.z, x_457.w) * vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = u_xlat3;
  let x_468 : vec3<f32> = (vec3<f32>(x_464.x, x_464.x, x_464.x) * vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_474 : f32 = x_431.unity_LightData.y;
  u_xlat8 = min(x_472, x_474);
  let x_476 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_476));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_488 : u32 = u_xlatu_loop_1;
    let x_489 : u32 = u_xlatu8;
    if ((x_488 < x_489)) {
    } else {
      break;
    }
    let x_492 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_492 >> 2u);
    let x_495 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_495 & 3u));
    let x_499 : u32 = u_xlatu1;
    let x_502 : vec4<f32> = x_431.unity_LightIndices[bitcast<i32>(x_499)];
    let x_512 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_517 : vec4<u32> = indexable[x_512];
    u_xlat1.x = dot(x_502, bitcast<vec4<f32>>(x_517));
    let x_523 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_523);
    let x_525 : vec3<f32> = vs_TEXCOORD1;
    let x_537 : i32 = u_xlati1;
    let x_539 : vec4<f32> = x_536.x_AdditionalLightsPosition[x_537];
    let x_542 : i32 = u_xlati1;
    let x_544 : vec4<f32> = x_536.x_AdditionalLightsPosition[x_542];
    u_xlat6 = ((-(x_525) * vec3<f32>(x_539.w, x_539.w, x_539.w)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
    let x_548 : vec3<f32> = u_xlat6;
    let x_549 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_548, x_549);
    let x_551 : f32 = u_xlat26;
    u_xlat26 = max(x_551, 6.10351562e-05f);
    let x_555 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_555);
    let x_557 : f32 = u_xlat27;
    let x_559 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_557, x_557, x_557) * x_559);
    let x_561 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_561);
    let x_563 : f32 = u_xlat26;
    let x_564 : i32 = u_xlati1;
    let x_566 : f32 = x_536.x_AdditionalLightsAttenuation[x_564].x;
    u_xlat26 = (x_563 * x_566);
    let x_568 : f32 = u_xlat26;
    let x_570 : f32 = u_xlat26;
    u_xlat26 = ((-(x_568) * x_570) + 1.0f);
    let x_573 : f32 = u_xlat26;
    u_xlat26 = max(x_573, 0.0f);
    let x_575 : f32 = u_xlat26;
    let x_576 : f32 = u_xlat26;
    u_xlat26 = (x_575 * x_576);
    let x_578 : f32 = u_xlat26;
    let x_579 : f32 = u_xlat27;
    u_xlat26 = (x_578 * x_579);
    let x_581 : i32 = u_xlati1;
    let x_583 : vec4<f32> = x_536.x_AdditionalLightsSpotDir[x_581];
    let x_585 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), x_585);
    let x_587 : f32 = u_xlat27;
    let x_588 : i32 = u_xlati1;
    let x_590 : f32 = x_536.x_AdditionalLightsAttenuation[x_588].z;
    let x_592 : i32 = u_xlati1;
    let x_594 : f32 = x_536.x_AdditionalLightsAttenuation[x_592].w;
    u_xlat27 = ((x_587 * x_590) + x_594);
    let x_596 : f32 = u_xlat27;
    u_xlat27 = clamp(x_596, 0.0f, 1.0f);
    let x_598 : f32 = u_xlat27;
    let x_599 : f32 = u_xlat27;
    u_xlat27 = (x_598 * x_599);
    let x_601 : f32 = u_xlat26;
    let x_602 : f32 = u_xlat27;
    u_xlat26 = (x_601 * x_602);
    let x_605 : f32 = u_xlat26;
    let x_607 : i32 = u_xlati1;
    let x_609 : vec4<f32> = x_536.x_AdditionalLightsColor[x_607];
    u_xlat7 = (vec3<f32>(x_605, x_605, x_605) * vec3<f32>(x_609.x, x_609.y, x_609.z));
    let x_612 : vec3<f32> = u_xlat2;
    let x_613 : vec3<f32> = u_xlat6;
    u_xlat1.x = dot(x_612, x_613);
    let x_617 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_617, 0.0f, 1.0f);
    let x_620 : vec4<f32> = u_xlat1;
    let x_622 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_620.x, x_620.x, x_620.x) * x_622);
    let x_624 : vec4<f32> = u_xlat1;
    let x_626 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_624.y, x_624.z, x_624.w) * x_626);
    let x_628 : vec3<f32> = u_xlat6;
    let x_629 : vec4<f32> = u_xlat0;
    let x_632 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_628 * vec3<f32>(x_629.x, x_629.x, x_629.x)) + x_632);

    continuing {
      let x_634 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_634 + bitcast<u32>(1i));
    }
  }
  let x_636 : vec4<f32> = u_xlat4;
  let x_638 : vec4<f32> = u_xlat1;
  let x_641 : vec4<f32> = u_xlat3;
  let x_643 : vec3<f32> = ((vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(x_638.y, x_638.z, x_638.w)) + vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_648 : vec3<f32> = u_xlat5;
  let x_649 : vec4<f32> = u_xlat1;
  let x_651 : vec3<f32> = (x_648 + vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_655 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_655 == 1.0f);
  let x_657 : bool = u_xlatb8;
  let x_658 : bool = u_xlatb16;
  u_xlatb8 = (x_657 | x_658);
  let x_660 : bool = u_xlatb8;
  if (x_660) {
    let x_665 : f32 = u_xlat0.x;
    x_661 = x_665;
  } else {
    x_661 = 1.0f;
  }
  let x_667 : f32 = x_661;
  SV_Target0.w = x_667;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

