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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_466 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_571 : AdditionalLights;

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
  var x_696 : f32;
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
  let x_347 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_344, x_346);
  u_xlat4 = x_347;
  let x_352 : vec2<f32> = vs_TEXCOORD7;
  let x_354 : f32 = x_27.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_352, x_354);
  u_xlat5 = vec3<f32>(x_355.x, x_355.y, x_355.z);
  let x_357 : vec4<f32> = u_xlat4;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec3<f32> = u_xlat2;
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat8 = dot(x_364, vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : f32 = u_xlat8;
  u_xlat8 = (x_368 + 0.5f);
  let x_370 : f32 = u_xlat8;
  let x_372 : vec3<f32> = u_xlat5;
  let x_373 : vec3<f32> = (vec3<f32>(x_370, x_370, x_370) * x_372);
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : f32 = u_xlat4.w;
  u_xlat8 = max(x_377, 0.0001f);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : f32 = u_xlat8;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) / vec3<f32>(x_381, x_381, x_381));
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : vec4<f32> = u_xlat3;
  let x_388 : vec2<f32> = vec2<f32>(x_387.x, x_387.y);
  let x_390 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_388.x, x_388.y, x_390);
  let x_402 : vec3<f32> = txVec0;
  let x_404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_402.xy, x_402.z);
  u_xlat8 = x_404;
  let x_407 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_407) + 1.0f);
  let x_410 : f32 = u_xlat8;
  let x_412 : f32 = x_154.x_MainLightShadowParams.x;
  let x_414 : f32 = u_xlat24;
  u_xlat8 = ((x_410 * x_412) + x_414);
  let x_418 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_418);
  let x_422 : f32 = u_xlat3.z;
  u_xlatb1 = (x_422 >= 1.0f);
  let x_424 : bool = u_xlatb24;
  let x_425 : bool = u_xlatb1;
  u_xlatb24 = (x_424 | x_425);
  let x_427 : bool = u_xlatb24;
  let x_428 : f32 = u_xlat8;
  u_xlat8 = select(x_428, 1.0f, x_427);
  let x_430 : vec3<f32> = vs_TEXCOORD1;
  let x_433 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_435 : vec3<f32> = (x_430 + -(x_433));
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat3;
  let x_440 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_438.x, x_438.y, x_438.z), vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : f32 = u_xlat24;
  let x_445 : f32 = x_154.x_MainLightShadowParams.z;
  let x_448 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat24 = ((x_443 * x_445) + x_448);
  let x_450 : f32 = u_xlat24;
  u_xlat24 = clamp(x_450, 0.0f, 1.0f);
  let x_452 : f32 = u_xlat8;
  u_xlat1.x = (-(x_452) + 1.0f);
  let x_456 : f32 = u_xlat24;
  let x_458 : f32 = u_xlat1.x;
  let x_460 : f32 = u_xlat8;
  u_xlat8 = ((x_456 * x_458) + x_460);
  let x_462 : f32 = u_xlat8;
  let x_468 : f32 = x_466.unity_LightData.z;
  u_xlat8 = (x_462 * x_468);
  let x_470 : f32 = u_xlat8;
  let x_473 : vec4<f32> = x_27.x_MainLightColor;
  let x_475 : vec3<f32> = (vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec3<f32> = u_xlat2;
  let x_480 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat8 = dot(x_478, vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : f32 = u_xlat8;
  u_xlat8 = clamp(x_483, 0.0f, 1.0f);
  let x_485 : f32 = u_xlat8;
  let x_487 : vec4<f32> = u_xlat3;
  let x_489 : vec3<f32> = (vec3<f32>(x_485, x_485, x_485) * vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat1;
  let x_494 : vec4<f32> = u_xlat3;
  let x_496 : vec3<f32> = (vec3<f32>(x_492.y, x_492.z, x_492.w) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat0;
  let x_501 : vec4<f32> = u_xlat3;
  let x_503 : vec3<f32> = (vec3<f32>(x_499.x, x_499.x, x_499.x) * vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_509 : f32 = x_466.unity_LightData.y;
  u_xlat8 = min(x_507, x_509);
  let x_511 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_511));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_523 : u32 = u_xlatu_loop_1;
    let x_524 : u32 = u_xlatu8;
    if ((x_523 < x_524)) {
    } else {
      break;
    }
    let x_527 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_527 >> 2u);
    let x_530 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_530 & 3u));
    let x_534 : u32 = u_xlatu1;
    let x_537 : vec4<f32> = x_466.unity_LightIndices[bitcast<i32>(x_534)];
    let x_547 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_552 : vec4<u32> = indexable[x_547];
    u_xlat1.x = dot(x_537, bitcast<vec4<f32>>(x_552));
    let x_558 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_558);
    let x_560 : vec3<f32> = vs_TEXCOORD1;
    let x_572 : i32 = u_xlati1;
    let x_574 : vec4<f32> = x_571.x_AdditionalLightsPosition[x_572];
    let x_577 : i32 = u_xlati1;
    let x_579 : vec4<f32> = x_571.x_AdditionalLightsPosition[x_577];
    u_xlat6 = ((-(x_560) * vec3<f32>(x_574.w, x_574.w, x_574.w)) + vec3<f32>(x_579.x, x_579.y, x_579.z));
    let x_583 : vec3<f32> = u_xlat6;
    let x_584 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_583, x_584);
    let x_586 : f32 = u_xlat26;
    u_xlat26 = max(x_586, 6.10351562e-05f);
    let x_590 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_590);
    let x_592 : f32 = u_xlat27;
    let x_594 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_592, x_592, x_592) * x_594);
    let x_596 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_596);
    let x_598 : f32 = u_xlat26;
    let x_599 : i32 = u_xlati1;
    let x_601 : f32 = x_571.x_AdditionalLightsAttenuation[x_599].x;
    u_xlat26 = (x_598 * x_601);
    let x_603 : f32 = u_xlat26;
    let x_605 : f32 = u_xlat26;
    u_xlat26 = ((-(x_603) * x_605) + 1.0f);
    let x_608 : f32 = u_xlat26;
    u_xlat26 = max(x_608, 0.0f);
    let x_610 : f32 = u_xlat26;
    let x_611 : f32 = u_xlat26;
    u_xlat26 = (x_610 * x_611);
    let x_613 : f32 = u_xlat26;
    let x_614 : f32 = u_xlat27;
    u_xlat26 = (x_613 * x_614);
    let x_616 : i32 = u_xlati1;
    let x_618 : vec4<f32> = x_571.x_AdditionalLightsSpotDir[x_616];
    let x_620 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_618.x, x_618.y, x_618.z), x_620);
    let x_622 : f32 = u_xlat27;
    let x_623 : i32 = u_xlati1;
    let x_625 : f32 = x_571.x_AdditionalLightsAttenuation[x_623].z;
    let x_627 : i32 = u_xlati1;
    let x_629 : f32 = x_571.x_AdditionalLightsAttenuation[x_627].w;
    u_xlat27 = ((x_622 * x_625) + x_629);
    let x_631 : f32 = u_xlat27;
    u_xlat27 = clamp(x_631, 0.0f, 1.0f);
    let x_633 : f32 = u_xlat27;
    let x_634 : f32 = u_xlat27;
    u_xlat27 = (x_633 * x_634);
    let x_636 : f32 = u_xlat26;
    let x_637 : f32 = u_xlat27;
    u_xlat26 = (x_636 * x_637);
    let x_640 : f32 = u_xlat26;
    let x_642 : i32 = u_xlati1;
    let x_644 : vec4<f32> = x_571.x_AdditionalLightsColor[x_642];
    u_xlat7 = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_644.x, x_644.y, x_644.z));
    let x_647 : vec3<f32> = u_xlat2;
    let x_648 : vec3<f32> = u_xlat6;
    u_xlat1.x = dot(x_647, x_648);
    let x_652 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_652, 0.0f, 1.0f);
    let x_655 : vec4<f32> = u_xlat1;
    let x_657 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_655.x, x_655.x, x_655.x) * x_657);
    let x_659 : vec4<f32> = u_xlat1;
    let x_661 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_659.y, x_659.z, x_659.w) * x_661);
    let x_663 : vec3<f32> = u_xlat6;
    let x_664 : vec4<f32> = u_xlat0;
    let x_667 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_663 * vec3<f32>(x_664.x, x_664.x, x_664.x)) + x_667);

    continuing {
      let x_669 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_669 + bitcast<u32>(1i));
    }
  }
  let x_671 : vec4<f32> = u_xlat4;
  let x_673 : vec4<f32> = u_xlat1;
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_673.y, x_673.z, x_673.w)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_683 : vec3<f32> = u_xlat5;
  let x_684 : vec4<f32> = u_xlat1;
  let x_686 : vec3<f32> = (x_683 + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_690 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_690 == 1.0f);
  let x_692 : bool = u_xlatb8;
  let x_693 : bool = u_xlatb16;
  u_xlatb8 = (x_692 | x_693);
  let x_695 : bool = u_xlatb8;
  if (x_695) {
    let x_700 : f32 = u_xlat0.x;
    x_696 = x_700;
  } else {
    x_696 = 1.0f;
  }
  let x_702 : f32 = x_696;
  SV_Target0.w = x_702;
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

