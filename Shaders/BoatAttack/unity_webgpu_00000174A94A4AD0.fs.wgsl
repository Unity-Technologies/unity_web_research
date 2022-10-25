struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_512 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_615 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_110 : f32;
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
  var u_xlatb1 : bool;
  var u_xlatb26 : bool;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_763 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_42.x_BaseColor.w;
  let x_77 : f32 = x_42.x_Cutoff;
  u_xlat8 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat24;
  let x_90 : f32 = u_xlat16;
  u_xlat16 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat16;
  u_xlat16 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat8;
  let x_97 : f32 = u_xlat16;
  u_xlat8 = (x_96 / x_97);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat8;
  u_xlat8 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb16;
  if (x_109) {
    let x_113 : f32 = u_xlat8;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat8 = (x_120 + -0.0001f);
  let x_124 : f32 = u_xlat8;
  u_xlatb8 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb8;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat8;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_149 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
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
  let x_340 : f32 = vs_TEXCOORD1.y;
  let x_343 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat8 = (x_340 * x_343);
  let x_346 : f32 = x_28.unity_MatrixV[0i].z;
  let x_348 : f32 = vs_TEXCOORD1.x;
  let x_350 : f32 = u_xlat8;
  u_xlat8 = ((x_346 * x_348) + x_350);
  let x_353 : f32 = x_28.unity_MatrixV[2i].z;
  let x_355 : f32 = vs_TEXCOORD1.z;
  let x_357 : f32 = u_xlat8;
  u_xlat8 = ((x_353 * x_355) + x_357);
  let x_359 : f32 = u_xlat8;
  let x_361 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat8 = (x_359 + x_361);
  let x_363 : f32 = u_xlat8;
  let x_367 : f32 = x_28.x_ProjectionParams.y;
  u_xlat8 = (-(x_363) + -(x_367));
  let x_370 : f32 = u_xlat8;
  u_xlat8 = max(x_370, 0.0f);
  let x_372 : f32 = u_xlat8;
  let x_375 : f32 = x_28.unity_FogParams.x;
  u_xlat8 = (x_372 * x_375);
  let x_383 : vec2<f32> = vs_TEXCOORD7;
  let x_385 : f32 = x_28.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_383, x_385);
  u_xlat4 = x_386;
  let x_391 : vec2<f32> = vs_TEXCOORD7;
  let x_393 : f32 = x_28.x_GlobalMipBias.x;
  let x_394 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_391, x_393);
  u_xlat5 = vec3<f32>(x_394.x, x_394.y, x_394.z);
  let x_396 : vec4<f32> = u_xlat4;
  let x_400 : vec3<f32> = (vec3<f32>(x_396.x, x_396.y, x_396.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_401 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec3<f32> = u_xlat2;
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(x_403, vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : f32 = u_xlat24;
  u_xlat24 = (x_407 + 0.5f);
  let x_409 : f32 = u_xlat24;
  let x_411 : vec3<f32> = u_xlat5;
  let x_412 : vec3<f32> = (vec3<f32>(x_409, x_409, x_409) * x_411);
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat4.w;
  u_xlat24 = max(x_416, 0.0001f);
  let x_418 : vec4<f32> = u_xlat4;
  let x_420 : f32 = u_xlat24;
  let x_422 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) / vec3<f32>(x_420, x_420, x_420));
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_426 : vec4<f32> = u_xlat3;
  let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
  let x_429 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_427.x, x_427.y, x_429);
  let x_441 : vec3<f32> = txVec0;
  let x_443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_441.xy, x_441.z);
  u_xlat24 = x_443;
  let x_446 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_446) + 1.0f);
  let x_450 : f32 = u_xlat24;
  let x_452 : f32 = x_154.x_MainLightShadowParams.x;
  let x_455 : f32 = u_xlat1.x;
  u_xlat24 = ((x_450 * x_452) + x_455);
  let x_459 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_459);
  let x_463 : f32 = u_xlat3.z;
  u_xlatb26 = (x_463 >= 1.0f);
  let x_465 : bool = u_xlatb1;
  let x_466 : bool = u_xlatb26;
  u_xlatb1 = (x_465 | x_466);
  let x_468 : bool = u_xlatb1;
  let x_469 : f32 = u_xlat24;
  u_xlat24 = select(x_469, 1.0f, x_468);
  let x_471 : vec3<f32> = vs_TEXCOORD1;
  let x_474 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_476 : vec3<f32> = (x_471 + -(x_474));
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat3;
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_486 : f32 = u_xlat1.x;
  let x_488 : f32 = x_154.x_MainLightShadowParams.z;
  let x_491 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_486 * x_488) + x_491);
  let x_495 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_495, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat24;
  u_xlat26 = (-(x_499) + 1.0f);
  let x_503 : f32 = u_xlat1.x;
  let x_504 : f32 = u_xlat26;
  let x_506 : f32 = u_xlat24;
  u_xlat24 = ((x_503 * x_504) + x_506);
  let x_508 : f32 = u_xlat24;
  let x_514 : f32 = x_512.unity_LightData.z;
  u_xlat24 = (x_508 * x_514);
  let x_516 : f32 = u_xlat24;
  let x_519 : vec4<f32> = x_28.x_MainLightColor;
  let x_521 : vec3<f32> = (vec3<f32>(x_516, x_516, x_516) * vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec3<f32> = u_xlat2;
  let x_526 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat24 = dot(x_524, vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : f32 = u_xlat24;
  u_xlat24 = clamp(x_529, 0.0f, 1.0f);
  let x_531 : f32 = u_xlat24;
  let x_533 : vec4<f32> = u_xlat3;
  let x_535 : vec3<f32> = (vec3<f32>(x_531, x_531, x_531) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat3;
  let x_542 : vec3<f32> = (vec3<f32>(x_538.y, x_538.z, x_538.w) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat0;
  let x_547 : vec4<f32> = u_xlat3;
  let x_549 : vec3<f32> = (vec3<f32>(x_545.x, x_545.x, x_545.x) * vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_553 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_555 : f32 = x_512.unity_LightData.y;
  u_xlat24 = min(x_553, x_555);
  let x_558 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_558));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_570 : u32 = u_xlatu_loop_1;
    let x_571 : u32 = u_xlatu24;
    if ((x_570 < x_571)) {
    } else {
      break;
    }
    let x_574 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_574 >> 2u);
    let x_577 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_577 & 3u));
    let x_580 : u32 = u_xlatu26;
    let x_583 : vec4<f32> = x_512.unity_LightIndices[bitcast<i32>(x_580)];
    let x_593 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_598 : vec4<u32> = indexable[x_593];
    u_xlat26 = dot(x_583, bitcast<vec4<f32>>(x_598));
    let x_602 : f32 = u_xlat26;
    u_xlati26 = i32(x_602);
    let x_604 : vec3<f32> = vs_TEXCOORD1;
    let x_616 : i32 = u_xlati26;
    let x_618 : vec4<f32> = x_615.x_AdditionalLightsPosition[x_616];
    let x_621 : i32 = u_xlati26;
    let x_623 : vec4<f32> = x_615.x_AdditionalLightsPosition[x_621];
    u_xlat6 = ((-(x_604) * vec3<f32>(x_618.w, x_618.w, x_618.w)) + vec3<f32>(x_623.x, x_623.y, x_623.z));
    let x_627 : vec3<f32> = u_xlat6;
    let x_628 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_627, x_628);
    let x_630 : f32 = u_xlat27;
    u_xlat27 = max(x_630, 6.10351562e-05f);
    let x_634 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_634);
    let x_636 : f32 = u_xlat28;
    let x_638 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_636, x_636, x_636) * x_638);
    let x_640 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_640);
    let x_642 : f32 = u_xlat27;
    let x_643 : i32 = u_xlati26;
    let x_645 : f32 = x_615.x_AdditionalLightsAttenuation[x_643].x;
    u_xlat27 = (x_642 * x_645);
    let x_647 : f32 = u_xlat27;
    let x_649 : f32 = u_xlat27;
    u_xlat27 = ((-(x_647) * x_649) + 1.0f);
    let x_652 : f32 = u_xlat27;
    u_xlat27 = max(x_652, 0.0f);
    let x_654 : f32 = u_xlat27;
    let x_655 : f32 = u_xlat27;
    u_xlat27 = (x_654 * x_655);
    let x_657 : f32 = u_xlat27;
    let x_658 : f32 = u_xlat28;
    u_xlat27 = (x_657 * x_658);
    let x_660 : i32 = u_xlati26;
    let x_662 : vec4<f32> = x_615.x_AdditionalLightsSpotDir[x_660];
    let x_664 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), x_664);
    let x_666 : f32 = u_xlat28;
    let x_667 : i32 = u_xlati26;
    let x_669 : f32 = x_615.x_AdditionalLightsAttenuation[x_667].z;
    let x_671 : i32 = u_xlati26;
    let x_673 : f32 = x_615.x_AdditionalLightsAttenuation[x_671].w;
    u_xlat28 = ((x_666 * x_669) + x_673);
    let x_675 : f32 = u_xlat28;
    u_xlat28 = clamp(x_675, 0.0f, 1.0f);
    let x_677 : f32 = u_xlat28;
    let x_678 : f32 = u_xlat28;
    u_xlat28 = (x_677 * x_678);
    let x_680 : f32 = u_xlat27;
    let x_681 : f32 = u_xlat28;
    u_xlat27 = (x_680 * x_681);
    let x_684 : f32 = u_xlat27;
    let x_686 : i32 = u_xlati26;
    let x_688 : vec4<f32> = x_615.x_AdditionalLightsColor[x_686];
    u_xlat7 = (vec3<f32>(x_684, x_684, x_684) * vec3<f32>(x_688.x, x_688.y, x_688.z));
    let x_691 : vec3<f32> = u_xlat2;
    let x_692 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_691, x_692);
    let x_694 : f32 = u_xlat26;
    u_xlat26 = clamp(x_694, 0.0f, 1.0f);
    let x_696 : f32 = u_xlat26;
    let x_698 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_696, x_696, x_696) * x_698);
    let x_700 : vec4<f32> = u_xlat1;
    let x_702 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_700.y, x_700.z, x_700.w) * x_702);
    let x_704 : vec3<f32> = u_xlat6;
    let x_705 : vec4<f32> = u_xlat0;
    let x_708 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_704 * vec3<f32>(x_705.x, x_705.x, x_705.x)) + x_708);

    continuing {
      let x_710 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_710 + bitcast<u32>(1i));
    }
  }
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec4<f32> = u_xlat1;
  let x_717 : vec4<f32> = u_xlat3;
  let x_719 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_714.y, x_714.z, x_714.w)) + vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec3<f32> = u_xlat5;
  let x_723 : vec4<f32> = u_xlat1;
  let x_725 : vec3<f32> = (x_722 + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : f32 = u_xlat8;
  let x_729 : f32 = u_xlat8;
  u_xlat8 = (x_728 * -(x_729));
  let x_732 : f32 = u_xlat8;
  u_xlat8 = exp2(x_732);
  let x_734 : vec4<f32> = u_xlat1;
  let x_737 : vec4<f32> = x_28.unity_FogColor;
  let x_740 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) + -(vec3<f32>(x_737.x, x_737.y, x_737.z)));
  let x_741 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_745 : f32 = u_xlat8;
  let x_747 : vec4<f32> = u_xlat1;
  let x_751 : vec4<f32> = x_28.unity_FogColor;
  let x_753 : vec3<f32> = ((vec3<f32>(x_745, x_745, x_745) * vec3<f32>(x_747.x, x_747.y, x_747.z)) + vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_757 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_757 == 1.0f);
  let x_759 : bool = u_xlatb8;
  let x_760 : bool = u_xlatb16;
  u_xlatb8 = (x_759 | x_760);
  let x_762 : bool = u_xlatb8;
  if (x_762) {
    let x_767 : f32 = u_xlat0.x;
    x_763 = x_767;
  } else {
    x_763 = 1.0f;
  }
  let x_769 : f32 = x_763;
  SV_Target0.w = x_769;
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

