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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_197 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_413 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_776 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var x_118 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var u_xlat26 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat9 : vec3<f32>;
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
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb12 = (x_70 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat23 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat23;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_106 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_106;
  let x_109 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_109;
  let x_114 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_114;
  let x_117 : bool = u_xlatb12;
  if (x_117) {
    let x_121 : vec4<f32> = u_xlat2;
    x_118 = vec3<f32>(x_121.x, x_121.y, x_121.z);
  } else {
    let x_124 : vec3<f32> = u_xlat3;
    x_118 = x_124;
  }
  let x_125 : vec3<f32> = x_118;
  u_xlat12 = x_125;
  let x_127 : vec3<f32> = vs_TEXCOORD3;
  let x_128 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_127, x_128);
  let x_132 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_132);
  let x_135 : vec4<f32> = u_xlat2;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  let x_138 : vec3<f32> = (vec3<f32>(x_135.x, x_135.x, x_135.x) * x_137);
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : f32 = vs_TEXCOORD7.y;
  let x_144 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.x = (x_142 * x_144);
  let x_148 : f32 = x_44.unity_MatrixV[0i].z;
  let x_150 : f32 = vs_TEXCOORD7.x;
  let x_153 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_148 * x_150) + x_153);
  let x_157 : f32 = x_44.unity_MatrixV[2i].z;
  let x_159 : f32 = vs_TEXCOORD7.z;
  let x_162 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_157 * x_159) + x_162);
  let x_166 : f32 = u_xlat3.x;
  let x_169 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat3.x = (x_166 + x_169);
  let x_173 : f32 = u_xlat3.x;
  let x_177 : f32 = x_44.x_ProjectionParams.y;
  u_xlat3.x = (-(x_173) + -(x_177));
  let x_182 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_182, 0.0f);
  let x_186 : f32 = u_xlat3.x;
  let x_189 : f32 = x_44.unity_FogParams.x;
  u_xlat3.x = (x_186 * x_189);
  u_xlat2.w = 1.0f;
  let x_201 : vec4<f32> = x_197.unity_SHAr;
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_197.unity_SHAg;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_197.unity_SHAb;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_213, x_214);
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_218.y, x_218.z, x_218.z, x_218.x) * vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.z));
  let x_226 : vec4<f32> = x_197.unity_SHBr;
  let x_227 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_226, x_227);
  let x_232 : vec4<f32> = x_197.unity_SHBg;
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_232, x_233);
  let x_238 : vec4<f32> = x_197.unity_SHBb;
  let x_239 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_238, x_239);
  let x_244 : f32 = u_xlat2.y;
  let x_246 : f32 = u_xlat2.y;
  u_xlat35 = (x_244 * x_246);
  let x_249 : f32 = u_xlat2.x;
  let x_251 : f32 = u_xlat2.x;
  let x_253 : f32 = u_xlat35;
  u_xlat35 = ((x_249 * x_251) + -(x_253));
  let x_259 : vec4<f32> = x_197.unity_SHC;
  let x_261 : f32 = u_xlat35;
  let x_264 : vec3<f32> = u_xlat6;
  u_xlat14 = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261, x_261, x_261)) + x_264);
  let x_266 : vec3<f32> = u_xlat14;
  let x_267 : vec3<f32> = u_xlat4;
  u_xlat14 = (x_266 + x_267);
  let x_269 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_269, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_274 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_275 : vec2<f32> = vec2<f32>(x_274.x, x_274.y);
  let x_279 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_275.x, x_275.y));
  let x_280 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_279.x, x_279.y, x_280.z);
  let x_282 : vec3<f32> = u_xlat4;
  let x_284 : vec4<f32> = hlslcc_FragCoord;
  let x_286 : vec2<f32> = (vec2<f32>(x_282.x, x_282.y) * vec2<f32>(x_284.x, x_284.y));
  let x_287 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_286.x, x_286.y, x_287.z);
  let x_290 : f32 = u_xlat4.y;
  let x_293 : f32 = x_44.x_ScaleBiasRt.x;
  let x_296 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_290 * x_293) + x_296);
  let x_298 : f32 = u_xlat35;
  u_xlat4.z = (-(x_298) + 1.0f);
  let x_302 : f32 = u_xlat1;
  u_xlat35 = ((-(x_302) * 0.959999979f) + 0.959999979f);
  let x_308 : f32 = u_xlat35;
  u_xlat15 = (-(x_308) + 1.0f);
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : f32 = u_xlat35;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313, x_313, x_313));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : f32 = u_xlat1;
  let x_327 : vec4<f32> = u_xlat0;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325, x_325, x_325) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_336 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_336) + 1.0f);
  let x_339 : f32 = u_xlat1;
  let x_340 : f32 = u_xlat1;
  u_xlat35 = (x_339 * x_340);
  let x_342 : f32 = u_xlat35;
  u_xlat35 = max(x_342, 0.0078125f);
  let x_346 : f32 = u_xlat35;
  let x_347 : f32 = u_xlat35;
  u_xlat37 = (x_346 * x_347);
  let x_351 : f32 = u_xlat0.w;
  let x_352 : f32 = u_xlat15;
  u_xlat33 = (x_351 + x_352);
  let x_354 : f32 = u_xlat33;
  u_xlat33 = clamp(x_354, 0.0f, 1.0f);
  let x_356 : f32 = u_xlat35;
  u_xlat15 = ((x_356 * 4.0f) + 2.0f);
  let x_366 : vec3<f32> = u_xlat4;
  let x_369 : f32 = x_44.x_GlobalMipBias.x;
  let x_370 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_366.x, x_366.z), x_369);
  u_xlat4.x = x_370.x;
  let x_375 : f32 = u_xlat4.x;
  u_xlat26 = (x_375 + -1.0f);
  let x_380 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_381 : f32 = u_xlat26;
  u_xlat26 = ((x_380 * x_381) + 1.0f);
  let x_385 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_385, 1.0f);
  let x_390 : vec4<f32> = vs_TEXCOORD8;
  let x_391 : vec2<f32> = vec2<f32>(x_390.x, x_390.y);
  let x_393 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_391.x, x_391.y, x_393);
  let x_406 : vec3<f32> = txVec0;
  let x_408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_406.xy, x_406.z);
  u_xlat38 = x_408;
  let x_415 : f32 = x_413.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_415) + 1.0f);
  let x_419 : f32 = u_xlat38;
  let x_421 : f32 = x_413.x_MainLightShadowParams.x;
  let x_424 : f32 = u_xlat6.x;
  u_xlat38 = ((x_419 * x_421) + x_424);
  let x_428 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_428);
  let x_432 : f32 = vs_TEXCOORD8.z;
  u_xlatb17 = (x_432 >= 1.0f);
  let x_434 : bool = u_xlatb17;
  let x_435 : bool = u_xlatb6;
  u_xlatb6 = (x_434 | x_435);
  let x_437 : bool = u_xlatb6;
  let x_438 : f32 = u_xlat38;
  u_xlat38 = select(x_438, 1.0f, x_437);
  let x_440 : vec3<f32> = vs_TEXCOORD7;
  let x_442 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_440 + -(x_442));
  let x_445 : vec3<f32> = u_xlat6;
  let x_446 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_445, x_446);
  let x_450 : f32 = u_xlat6.x;
  let x_452 : f32 = x_413.x_MainLightShadowParams.z;
  let x_455 : f32 = x_413.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_450 * x_452) + x_455);
  let x_459 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_459, 0.0f, 1.0f);
  let x_463 : f32 = u_xlat38;
  u_xlat17 = (-(x_463) + 1.0f);
  let x_467 : f32 = u_xlat6.x;
  let x_468 : f32 = u_xlat17;
  let x_470 : f32 = u_xlat38;
  u_xlat38 = ((x_467 * x_468) + x_470);
  let x_472 : f32 = u_xlat26;
  let x_475 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_479 : vec3<f32> = u_xlat12;
  let x_481 : vec4<f32> = u_xlat2;
  u_xlat39 = dot(-(x_479), vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : f32 = u_xlat39;
  let x_485 : f32 = u_xlat39;
  u_xlat39 = (x_484 + x_485);
  let x_488 : vec4<f32> = u_xlat2;
  let x_490 : f32 = u_xlat39;
  let x_494 : vec3<f32> = u_xlat12;
  let x_496 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.y, x_488.z) * -(vec3<f32>(x_490, x_490, x_490))) + -(x_494));
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat2;
  let x_501 : vec3<f32> = u_xlat12;
  u_xlat39 = dot(vec3<f32>(x_499.x, x_499.y, x_499.z), x_501);
  let x_503 : f32 = u_xlat39;
  u_xlat39 = clamp(x_503, 0.0f, 1.0f);
  let x_505 : f32 = u_xlat39;
  u_xlat39 = (-(x_505) + 1.0f);
  let x_508 : f32 = u_xlat39;
  let x_509 : f32 = u_xlat39;
  u_xlat39 = (x_508 * x_509);
  let x_511 : f32 = u_xlat39;
  let x_512 : f32 = u_xlat39;
  u_xlat39 = (x_511 * x_512);
  let x_515 : f32 = u_xlat1;
  u_xlat40 = ((-(x_515) * 0.699999988f) + 1.700000048f);
  let x_521 : f32 = u_xlat1;
  let x_522 : f32 = u_xlat40;
  u_xlat1 = (x_521 * x_522);
  let x_524 : f32 = u_xlat1;
  u_xlat1 = (x_524 * 6.0f);
  let x_535 : vec4<f32> = u_xlat7;
  let x_537 : f32 = u_xlat1;
  let x_538 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_535.x, x_535.y, x_535.z), x_537);
  u_xlat7 = x_538;
  let x_540 : f32 = u_xlat7.w;
  u_xlat1 = (x_540 + -1.0f);
  let x_543 : f32 = x_197.unity_SpecCube0_HDR.w;
  let x_544 : f32 = u_xlat1;
  u_xlat1 = ((x_543 * x_544) + 1.0f);
  let x_547 : f32 = u_xlat1;
  u_xlat1 = max(x_547, 0.0f);
  let x_549 : f32 = u_xlat1;
  u_xlat1 = log2(x_549);
  let x_551 : f32 = u_xlat1;
  let x_553 : f32 = x_197.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_551 * x_553);
  let x_555 : f32 = u_xlat1;
  u_xlat1 = exp2(x_555);
  let x_557 : f32 = u_xlat1;
  let x_559 : f32 = x_197.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_557 * x_559);
  let x_561 : vec4<f32> = u_xlat7;
  let x_563 : f32 = u_xlat1;
  let x_565 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_563, x_563, x_563));
  let x_566 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : f32 = u_xlat35;
  let x_572 : f32 = u_xlat35;
  u_xlat8 = ((vec2<f32>(x_570, x_570) * vec2<f32>(x_572, x_572)) + vec2<f32>(-1.0f, 1.0f));
  let x_578 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_578);
  let x_581 : vec4<f32> = u_xlat0;
  let x_584 : f32 = u_xlat33;
  u_xlat19 = (-(vec3<f32>(x_581.x, x_581.y, x_581.z)) + vec3<f32>(x_584, x_584, x_584));
  let x_587 : f32 = u_xlat39;
  let x_589 : vec3<f32> = u_xlat19;
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_587, x_587, x_587) * x_589) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : f32 = u_xlat1;
  let x_596 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_594, x_594, x_594) * x_596);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : vec3<f32> = u_xlat19;
  let x_601 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * x_600);
  let x_602 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec3<f32> = u_xlat14;
  let x_605 : vec4<f32> = u_xlat5;
  let x_608 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_604 * vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : f32 = u_xlat38;
  let x_614 : f32 = x_197.unity_LightData.z;
  u_xlat33 = (x_611 * x_614);
  let x_616 : vec4<f32> = u_xlat2;
  let x_619 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : f32 = u_xlat1;
  u_xlat1 = clamp(x_622, 0.0f, 1.0f);
  let x_624 : f32 = u_xlat33;
  let x_625 : f32 = u_xlat1;
  u_xlat33 = (x_624 * x_625);
  let x_627 : f32 = u_xlat33;
  let x_629 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_627, x_627, x_627) * x_629);
  let x_631 : vec3<f32> = u_xlat12;
  let x_633 : vec4<f32> = x_44.x_MainLightPosition;
  let x_635 : vec3<f32> = (x_631 + vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat7;
  let x_640 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : f32 = u_xlat33;
  u_xlat33 = max(x_643, 1.17549435e-37f);
  let x_646 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat33;
  let x_650 : vec4<f32> = u_xlat7;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat2;
  let x_657 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : f32 = u_xlat33;
  u_xlat33 = clamp(x_660, 0.0f, 1.0f);
  let x_663 : vec4<f32> = x_44.x_MainLightPosition;
  let x_665 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_663.x, x_663.y, x_663.z), vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : f32 = u_xlat1;
  u_xlat1 = clamp(x_668, 0.0f, 1.0f);
  let x_670 : f32 = u_xlat33;
  let x_671 : f32 = u_xlat33;
  u_xlat33 = (x_670 * x_671);
  let x_673 : f32 = u_xlat33;
  let x_675 : f32 = u_xlat8.x;
  u_xlat33 = ((x_673 * x_675) + 1.000010014f);
  let x_679 : f32 = u_xlat1;
  let x_680 : f32 = u_xlat1;
  u_xlat1 = (x_679 * x_680);
  let x_682 : f32 = u_xlat33;
  let x_683 : f32 = u_xlat33;
  u_xlat33 = (x_682 * x_683);
  let x_685 : f32 = u_xlat1;
  u_xlat1 = max(x_685, 0.100000001f);
  let x_688 : f32 = u_xlat33;
  let x_689 : f32 = u_xlat1;
  u_xlat33 = (x_688 * x_689);
  let x_691 : f32 = u_xlat15;
  let x_692 : f32 = u_xlat33;
  u_xlat33 = (x_691 * x_692);
  let x_694 : f32 = u_xlat37;
  let x_695 : f32 = u_xlat33;
  u_xlat33 = (x_694 / x_695);
  let x_697 : vec4<f32> = u_xlat0;
  let x_699 : f32 = u_xlat33;
  let x_702 : vec4<f32> = u_xlat5;
  let x_704 : vec3<f32> = ((vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_699, x_699, x_699)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec3<f32> = u_xlat6;
  let x_708 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_707 * vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_712 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_714 : f32 = x_197.unity_LightData.y;
  u_xlat33 = min(x_712, x_714);
  let x_718 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_718));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_730 : u32 = u_xlatu_loop_1;
    let x_731 : u32 = u_xlatu33;
    if ((x_730 < x_731)) {
    } else {
      break;
    }
    let x_734 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_734 >> 2u);
    let x_738 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_738 & 3u));
    let x_741 : u32 = u_xlatu35;
    let x_744 : vec4<f32> = x_197.unity_LightIndices[bitcast<i32>(x_741)];
    let x_754 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_759 : vec4<u32> = indexable[x_754];
    u_xlat35 = dot(x_744, bitcast<vec4<f32>>(x_759));
    let x_763 : f32 = u_xlat35;
    u_xlati35 = i32(x_763);
    let x_765 : vec3<f32> = vs_TEXCOORD7;
    let x_777 : i32 = u_xlati35;
    let x_779 : vec4<f32> = x_776.x_AdditionalLightsPosition[x_777];
    let x_782 : i32 = u_xlati35;
    let x_784 : vec4<f32> = x_776.x_AdditionalLightsPosition[x_782];
    u_xlat19 = ((-(x_765) * vec3<f32>(x_779.w, x_779.w, x_779.w)) + vec3<f32>(x_784.x, x_784.y, x_784.z));
    let x_787 : vec3<f32> = u_xlat19;
    let x_788 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_787, x_788);
    let x_790 : f32 = u_xlat38;
    u_xlat38 = max(x_790, 6.10351562e-05f);
    let x_793 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_793);
    let x_796 : f32 = u_xlat39;
    let x_798 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_796, x_796, x_796) * x_798);
    let x_800 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_800);
    let x_802 : f32 = u_xlat38;
    let x_803 : i32 = u_xlati35;
    let x_805 : f32 = x_776.x_AdditionalLightsAttenuation[x_803].x;
    u_xlat38 = (x_802 * x_805);
    let x_807 : f32 = u_xlat38;
    let x_809 : f32 = u_xlat38;
    u_xlat38 = ((-(x_807) * x_809) + 1.0f);
    let x_812 : f32 = u_xlat38;
    u_xlat38 = max(x_812, 0.0f);
    let x_814 : f32 = u_xlat38;
    let x_815 : f32 = u_xlat38;
    u_xlat38 = (x_814 * x_815);
    let x_817 : f32 = u_xlat38;
    let x_818 : f32 = u_xlat40;
    u_xlat38 = (x_817 * x_818);
    let x_820 : i32 = u_xlati35;
    let x_822 : vec4<f32> = x_776.x_AdditionalLightsSpotDir[x_820];
    let x_824 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_822.x, x_822.y, x_822.z), x_824);
    let x_826 : f32 = u_xlat40;
    let x_827 : i32 = u_xlati35;
    let x_829 : f32 = x_776.x_AdditionalLightsAttenuation[x_827].z;
    let x_831 : i32 = u_xlati35;
    let x_833 : f32 = x_776.x_AdditionalLightsAttenuation[x_831].w;
    u_xlat40 = ((x_826 * x_829) + x_833);
    let x_835 : f32 = u_xlat40;
    u_xlat40 = clamp(x_835, 0.0f, 1.0f);
    let x_837 : f32 = u_xlat40;
    let x_838 : f32 = u_xlat40;
    u_xlat40 = (x_837 * x_838);
    let x_840 : f32 = u_xlat38;
    let x_841 : f32 = u_xlat40;
    u_xlat38 = (x_840 * x_841);
    let x_844 : f32 = u_xlat26;
    let x_846 : i32 = u_xlati35;
    let x_848 : vec4<f32> = x_776.x_AdditionalLightsColor[x_846];
    u_xlat10 = (vec3<f32>(x_844, x_844, x_844) * vec3<f32>(x_848.x, x_848.y, x_848.z));
    let x_851 : vec4<f32> = u_xlat2;
    let x_853 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), x_853);
    let x_855 : f32 = u_xlat35;
    u_xlat35 = clamp(x_855, 0.0f, 1.0f);
    let x_857 : f32 = u_xlat35;
    let x_858 : f32 = u_xlat38;
    u_xlat35 = (x_857 * x_858);
    let x_860 : f32 = u_xlat35;
    let x_862 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_860, x_860, x_860) * x_862);
    let x_864 : vec3<f32> = u_xlat19;
    let x_865 : f32 = u_xlat39;
    let x_868 : vec3<f32> = u_xlat12;
    u_xlat19 = ((x_864 * vec3<f32>(x_865, x_865, x_865)) + x_868);
    let x_870 : vec3<f32> = u_xlat19;
    let x_871 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_870, x_871);
    let x_873 : f32 = u_xlat35;
    u_xlat35 = max(x_873, 1.17549435e-37f);
    let x_875 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_875);
    let x_877 : f32 = u_xlat35;
    let x_879 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_877, x_877, x_877) * x_879);
    let x_881 : vec4<f32> = u_xlat2;
    let x_883 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(vec3<f32>(x_881.x, x_881.y, x_881.z), x_883);
    let x_885 : f32 = u_xlat35;
    u_xlat35 = clamp(x_885, 0.0f, 1.0f);
    let x_887 : vec3<f32> = u_xlat9;
    let x_888 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_887, x_888);
    let x_890 : f32 = u_xlat38;
    u_xlat38 = clamp(x_890, 0.0f, 1.0f);
    let x_892 : f32 = u_xlat35;
    let x_893 : f32 = u_xlat35;
    u_xlat35 = (x_892 * x_893);
    let x_895 : f32 = u_xlat35;
    let x_897 : f32 = u_xlat8.x;
    u_xlat35 = ((x_895 * x_897) + 1.000010014f);
    let x_900 : f32 = u_xlat38;
    let x_901 : f32 = u_xlat38;
    u_xlat38 = (x_900 * x_901);
    let x_903 : f32 = u_xlat35;
    let x_904 : f32 = u_xlat35;
    u_xlat35 = (x_903 * x_904);
    let x_906 : f32 = u_xlat38;
    u_xlat38 = max(x_906, 0.100000001f);
    let x_908 : f32 = u_xlat35;
    let x_909 : f32 = u_xlat38;
    u_xlat35 = (x_908 * x_909);
    let x_911 : f32 = u_xlat15;
    let x_912 : f32 = u_xlat35;
    u_xlat35 = (x_911 * x_912);
    let x_914 : f32 = u_xlat37;
    let x_915 : f32 = u_xlat35;
    u_xlat35 = (x_914 / x_915);
    let x_917 : vec4<f32> = u_xlat0;
    let x_919 : f32 = u_xlat35;
    let x_922 : vec4<f32> = u_xlat5;
    u_xlat19 = ((vec3<f32>(x_917.x, x_917.y, x_917.z) * vec3<f32>(x_919, x_919, x_919)) + vec3<f32>(x_922.x, x_922.y, x_922.z));
    let x_925 : vec3<f32> = u_xlat19;
    let x_926 : vec3<f32> = u_xlat10;
    let x_928 : vec4<f32> = u_xlat7;
    let x_930 : vec3<f32> = ((x_925 * x_926) + vec3<f32>(x_928.x, x_928.y, x_928.z));
    let x_931 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);

    continuing {
      let x_933 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_933 + bitcast<u32>(1i));
    }
  }
  let x_935 : vec3<f32> = u_xlat14;
  let x_936 : vec3<f32> = u_xlat4;
  let x_939 : vec3<f32> = u_xlat6;
  let x_940 : vec3<f32> = ((x_935 * vec3<f32>(x_936.x, x_936.x, x_936.x)) + x_939);
  let x_941 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat7;
  let x_945 : vec4<f32> = u_xlat0;
  let x_947 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_951 : f32 = u_xlat3.x;
  let x_953 : f32 = u_xlat3.x;
  u_xlat33 = (x_951 * -(x_953));
  let x_956 : f32 = u_xlat33;
  u_xlat33 = exp2(x_956);
  let x_958 : vec4<f32> = u_xlat0;
  let x_962 : vec4<f32> = x_44.unity_FogColor;
  let x_965 : vec3<f32> = (vec3<f32>(x_958.x, x_958.y, x_958.z) + -(vec3<f32>(x_962.x, x_962.y, x_962.z)));
  let x_966 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_970 : f32 = u_xlat33;
  let x_972 : vec4<f32> = u_xlat0;
  let x_976 : vec4<f32> = x_44.unity_FogColor;
  let x_978 : vec3<f32> = ((vec3<f32>(x_970, x_970, x_970) * vec3<f32>(x_972.x, x_972.y, x_972.z)) + vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

