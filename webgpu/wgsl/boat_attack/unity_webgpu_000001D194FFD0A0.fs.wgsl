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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(4) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_496 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1171 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb1 : bool;
  var x_408 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat34 : f32;
  var u_xlatb23 : bool;
  var x_457 : f32;
  var u_xlatb12 : vec3<bool>;
  var x_600 : f32;
  var x_613 : f32;
  var x_625 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati40 : i32;
  var u_xlat36 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var x_1370 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_30, x_31);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_37);
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_41);
  let x_44 : vec3<f32> = u_xlat0;
  let x_46 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_44.x, x_44.x, x_44.x) * x_46);
  let x_61 : vec4<f32> = vs_INTERP3;
  let x_71 : f32 = x_66.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_61.x, x_61.y), x_71);
  u_xlat1 = x_72;
  let x_74 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = x_78.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_90 : vec4<f32> = vs_INTERP3;
  let x_93 : f32 = x_66.x_GlobalMipBias.x;
  let x_94 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_90.x, x_90.y), x_93);
  u_xlat3 = vec4<f32>(x_94.w, x_94.x, x_94.y, x_94.z);
  let x_97 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_97.y, x_97.z, x_97.w, x_97.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_106 : vec4<f32> = u_xlat4;
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat33;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat33 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat33;
  u_xlat33 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat33;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_133 : vec3<f32> = vs_INTERP0;
  let x_140 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres0;
  let x_143 : vec3<f32> = (x_133 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_INTERP0;
  let x_150 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres1;
  let x_153 : vec3<f32> = (x_147 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_INTERP0;
  let x_160 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_165 : vec3<f32> = vs_INTERP0;
  let x_168 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres3;
  let x_171 : vec3<f32> = (x_165 + -(vec3<f32>(x_168.x, x_168.y, x_168.z)));
  let x_172 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat4;
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat5;
  let x_182 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : vec3<f32> = u_xlat6;
  let x_187 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_186, x_187);
  let x_191 : vec4<f32> = u_xlat7;
  let x_193 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = x_138.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_201 < x_204);
  let x_208 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_208);
  let x_213 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_213);
  let x_217 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_225);
  let x_230 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_230);
  let x_234 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_234);
  let x_237 : vec4<f32> = u_xlat4;
  let x_239 : vec4<f32> = u_xlat5;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) + vec3<f32>(x_239.y, x_239.z, x_239.w));
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat4;
  let x_247 : vec3<f32> = max(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_248 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_248.x, x_247.x, x_247.y, x_247.z);
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_250, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_255 : f32 = u_xlat33;
  u_xlat33 = (-(x_255) + 4.0f);
  let x_260 : f32 = u_xlat33;
  u_xlatu33 = u32(x_260);
  let x_264 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_264) << bitcast<u32>(2i));
  let x_267 : vec3<f32> = vs_INTERP0;
  let x_270 : i32 = u_xlati33;
  let x_273 : i32 = u_xlati33;
  let x_277 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_270 + 1i) / 4i)][((x_273 + 1i) % 4i)];
  let x_279 : vec3<f32> = (vec3<f32>(x_267.y, x_267.y, x_267.y) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : i32 = u_xlati33;
  let x_284 : i32 = u_xlati33;
  let x_287 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_282 / 4i)][(x_284 % 4i)];
  let x_289 : vec3<f32> = vs_INTERP0;
  let x_292 : vec4<f32> = u_xlat4;
  let x_294 : vec3<f32> = ((vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(x_289.x, x_289.x, x_289.x)) + vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : i32 = u_xlati33;
  let x_300 : i32 = u_xlati33;
  let x_304 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_297 + 2i) / 4i)][((x_300 + 2i) % 4i)];
  let x_306 : vec3<f32> = vs_INTERP0;
  let x_309 : vec4<f32> = u_xlat4;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.z, x_306.z, x_306.z)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : i32 = u_xlati33;
  let x_319 : i32 = u_xlati33;
  let x_323 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_316 + 3i) / 4i)][((x_319 + 3i) % 4i)];
  let x_325 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_330 : vec2<f32> = vec2<f32>(x_329.x, x_329.y);
  let x_332 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_330.x, x_330.y, x_332);
  let x_344 : vec3<f32> = txVec0;
  let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_344.xy, x_344.z);
  u_xlat33 = x_346;
  let x_350 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_350) + 1.0f);
  let x_353 : f32 = u_xlat33;
  let x_355 : f32 = x_138.x_MainLightShadowParams.x;
  let x_357 : f32 = u_xlat35;
  u_xlat33 = ((x_353 * x_355) + x_357);
  let x_361 : f32 = u_xlat4.z;
  u_xlatb35 = (0.0f >= x_361);
  let x_364 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_364 >= 1.0f);
  let x_367 : bool = u_xlatb35;
  let x_369 : bool = u_xlatb4.x;
  u_xlatb35 = (x_367 | x_369);
  let x_371 : bool = u_xlatb35;
  let x_372 : f32 = u_xlat33;
  u_xlat33 = select(x_372, 1.0f, x_371);
  let x_374 : vec3<f32> = u_xlat0;
  let x_376 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_374, -(vec3<f32>(x_376.x, x_376.y, x_376.z)));
  let x_382 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_382, 0.0f, 1.0f);
  let x_385 : f32 = u_xlat33;
  let x_388 : vec4<f32> = x_66.x_MainLightColor;
  let x_390 : vec3<f32> = (vec3<f32>(x_385, x_385, x_385) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec3<f32> = u_xlat0;
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_393.x, x_393.x, x_393.x) * vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec3<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_398 * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_404 : f32 = u_xlat1.w;
  u_xlatb1 = (x_404 >= 0.400000006f);
  let x_407 : bool = u_xlatb1;
  if (x_407) {
    let x_412 : f32 = u_xlat1.w;
    x_408 = x_412;
  } else {
    x_408 = 0.0f;
  }
  let x_414 : f32 = x_408;
  u_xlat1.x = x_414;
  let x_418 : f32 = u_xlat1.w;
  u_xlat12.x = (x_418 + -0.400000006f);
  let x_424 : f32 = u_xlat1.w;
  u_xlat23 = dpdxCoarse(x_424);
  let x_428 : f32 = u_xlat1.w;
  u_xlat34 = dpdyCoarse(x_428);
  let x_430 : f32 = u_xlat34;
  let x_432 : f32 = u_xlat23;
  u_xlat23 = (abs(x_430) + abs(x_432));
  let x_435 : f32 = u_xlat23;
  u_xlat23 = max(x_435, 0.0001f);
  let x_439 : f32 = u_xlat12.x;
  let x_440 : f32 = u_xlat23;
  u_xlat12.x = (x_439 / x_440);
  let x_444 : f32 = u_xlat12.x;
  u_xlat12.x = (x_444 + 0.5f);
  let x_449 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_449, 0.0f, 1.0f);
  let x_454 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb23 = !((x_454 == 0.0f));
  let x_456 : bool = u_xlatb23;
  if (x_456) {
    let x_461 : f32 = u_xlat12.x;
    x_457 = x_461;
  } else {
    let x_464 : f32 = u_xlat1.x;
    x_457 = x_464;
  }
  let x_465 : f32 = x_457;
  u_xlat1.x = x_465;
  let x_468 : f32 = u_xlat1.x;
  u_xlat12.x = (x_468 + -0.0001f);
  let x_476 : f32 = u_xlat12.x;
  u_xlatb12.x = (x_476 < 0.0f);
  let x_480 : bool = u_xlatb12.x;
  if (((select(0i, 1i, x_480) * -1i) != 0i)) {
    discard;
  }
  let x_490 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_490);
  let x_498 : f32 = x_496.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_498 >= 0.0f);
  let x_502 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_502);
  let x_506 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_506);
  let x_510 : f32 = u_xlat12.z;
  let x_512 : f32 = u_xlat12.x;
  u_xlat12.x = (x_510 * x_512);
  let x_515 : vec3<f32> = vs_INTERP1;
  let x_517 : vec4<f32> = vs_INTERP2;
  let x_519 : vec3<f32> = (vec3<f32>(x_515.z, x_515.x, x_515.y) * vec3<f32>(x_517.y, x_517.z, x_517.x));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec3<f32> = vs_INTERP1;
  let x_524 : vec4<f32> = vs_INTERP2;
  let x_527 : vec4<f32> = u_xlat4;
  let x_530 : vec3<f32> = ((vec3<f32>(x_522.y, x_522.z, x_522.x) * vec3<f32>(x_524.z, x_524.x, x_524.y)) + -(vec3<f32>(x_527.x, x_527.y, x_527.z)));
  let x_531 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec3<f32> = u_xlat12;
  let x_535 : vec4<f32> = u_xlat4;
  let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.x, x_533.x) * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec3<f32> = u_xlat14;
  let x_542 : vec4<f32> = u_xlat4;
  let x_544 : vec3<f32> = (vec3<f32>(x_540.y, x_540.y, x_540.y) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec3<f32> = u_xlat14;
  let x_549 : vec4<f32> = vs_INTERP2;
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec3<f32> = u_xlat14;
  let x_559 : vec3<f32> = vs_INTERP1;
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat14 = ((vec3<f32>(x_557.z, x_557.z, x_557.z) * x_559) + vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec3<f32> = u_xlat14;
  let x_565 : vec3<f32> = u_xlat14;
  u_xlat12.x = dot(x_564, x_565);
  let x_569 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_569);
  let x_572 : vec3<f32> = u_xlat12;
  let x_574 : vec3<f32> = u_xlat14;
  let x_575 : vec3<f32> = (vec3<f32>(x_572.x, x_572.x, x_572.x) * x_574);
  let x_576 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_579 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb12.x = (x_579 == 0.0f);
  let x_582 : vec3<f32> = vs_INTERP0;
  let x_587 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat14 = (-(x_582) + x_587);
  let x_589 : vec3<f32> = u_xlat14;
  let x_590 : vec3<f32> = u_xlat14;
  u_xlat34 = dot(x_589, x_590);
  let x_592 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_592);
  let x_594 : f32 = u_xlat34;
  let x_596 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_594, x_594, x_594) * x_596);
  let x_599 : bool = u_xlatb12.x;
  if (x_599) {
    let x_604 : f32 = u_xlat14.x;
    x_600 = x_604;
  } else {
    let x_608 : f32 = x_66.unity_MatrixV[0i].z;
    x_600 = x_608;
  }
  let x_609 : f32 = x_600;
  u_xlat5.x = x_609;
  let x_612 : bool = u_xlatb12.x;
  if (x_612) {
    let x_617 : f32 = u_xlat14.y;
    x_613 = x_617;
  } else {
    let x_620 : f32 = x_66.unity_MatrixV[1i].z;
    x_613 = x_620;
  }
  let x_621 : f32 = x_613;
  u_xlat5.y = x_621;
  let x_624 : bool = u_xlatb12.x;
  if (x_624) {
    let x_629 : f32 = u_xlat14.z;
    x_625 = x_629;
  } else {
    let x_632 : f32 = x_66.unity_MatrixV[2i].z;
    x_625 = x_632;
  }
  let x_633 : f32 = x_625;
  u_xlat5.z = x_633;
  u_xlat4.w = 1.0f;
  let x_638 : vec4<f32> = x_496.unity_SHAr;
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_638, x_639);
  let x_644 : vec4<f32> = x_496.unity_SHAg;
  let x_645 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_644, x_645);
  let x_650 : vec4<f32> = x_496.unity_SHAb;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_650, x_651);
  let x_654 : vec4<f32> = u_xlat4;
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_654.y, x_654.z, x_654.z, x_654.x) * vec4<f32>(x_656.x, x_656.y, x_656.z, x_656.z));
  let x_662 : vec4<f32> = x_496.unity_SHBr;
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_662, x_663);
  let x_668 : vec4<f32> = x_496.unity_SHBg;
  let x_669 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_668, x_669);
  let x_674 : vec4<f32> = x_496.unity_SHBb;
  let x_675 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_674, x_675);
  let x_679 : f32 = u_xlat4.y;
  let x_681 : f32 = u_xlat4.y;
  u_xlat12.x = (x_679 * x_681);
  let x_685 : f32 = u_xlat4.x;
  let x_687 : f32 = u_xlat4.x;
  let x_690 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_685 * x_687) + -(x_690));
  let x_696 : vec4<f32> = x_496.unity_SHC;
  let x_698 : vec3<f32> = u_xlat12;
  let x_701 : vec4<f32> = u_xlat8;
  u_xlat14 = ((vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_698.x, x_698.x, x_698.x)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec3<f32> = u_xlat14;
  let x_705 : vec3<f32> = u_xlat6;
  u_xlat14 = (x_704 + x_705);
  let x_707 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_707, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_711 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
  let x_716 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_712.x, x_712.y));
  let x_717 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_716.x, x_717.y, x_716.y);
  let x_719 : vec3<f32> = u_xlat12;
  let x_721 : vec4<f32> = hlslcc_FragCoord;
  let x_723 : vec2<f32> = (vec2<f32>(x_719.x, x_719.z) * vec2<f32>(x_721.x, x_721.y));
  let x_724 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_723.x, x_723.y, x_724.z);
  let x_727 : f32 = u_xlat6.y;
  let x_730 : f32 = x_66.x_ScaleBiasRt.x;
  let x_733 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat12.x = ((x_727 * x_730) + x_733);
  let x_737 : f32 = u_xlat12.x;
  u_xlat6.z = (-(x_737) + 1.0f);
  let x_742 : f32 = u_xlat3.x;
  u_xlat3.x = x_742;
  let x_745 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_745, 0.0f, 1.0f);
  let x_749 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_749, 1.0f);
  let x_752 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_752 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_757 : f32 = u_xlat3.x;
  u_xlat12.x = (-(x_757) + 1.0f);
  let x_762 : f32 = u_xlat12.x;
  let x_764 : f32 = u_xlat12.x;
  u_xlat34 = (x_762 * x_764);
  let x_766 : f32 = u_xlat34;
  u_xlat34 = max(x_766, 0.0078125f);
  let x_769 : f32 = u_xlat34;
  let x_770 : f32 = u_xlat34;
  u_xlat35 = (x_769 * x_770);
  let x_773 : f32 = u_xlat3.x;
  u_xlat3.x = (x_773 + 0.040000021f);
  let x_778 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_778, 1.0f);
  let x_782 : f32 = u_xlat34;
  u_xlat37 = ((x_782 * 4.0f) + 2.0f);
  let x_791 : vec3<f32> = u_xlat6;
  let x_794 : f32 = x_66.x_GlobalMipBias.x;
  let x_795 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_791.x, x_791.z), x_794);
  u_xlat38 = x_795.x;
  let x_797 : f32 = u_xlat38;
  u_xlat6.x = (x_797 + -1.0f);
  let x_801 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_803 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_801 * x_803) + 1.0f);
  let x_807 : f32 = u_xlat38;
  let x_809 : f32 = vs_INTERP4.w;
  u_xlat38 = min(x_807, x_809);
  let x_812 : vec3<f32> = vs_INTERP0;
  let x_814 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (x_812 + -(x_814));
  let x_817 : vec3<f32> = u_xlat17;
  let x_818 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_817, x_818);
  let x_822 : f32 = u_xlat17.x;
  let x_824 : f32 = x_138.x_MainLightShadowParams.z;
  let x_827 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_822 * x_824) + x_827);
  let x_831 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_831, 0.0f, 1.0f);
  let x_835 : f32 = u_xlat33;
  u_xlat28 = (-(x_835) + 1.0f);
  let x_839 : f32 = u_xlat17.x;
  let x_840 : f32 = u_xlat28;
  let x_842 : f32 = u_xlat33;
  u_xlat33 = ((x_839 * x_840) + x_842);
  let x_844 : vec3<f32> = u_xlat6;
  let x_847 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_844.x, x_844.x, x_844.x) * vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec4<f32> = u_xlat5;
  let x_853 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(vec3<f32>(x_850.x, x_850.y, x_850.z)), vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_858 : f32 = u_xlat7.x;
  let x_860 : f32 = u_xlat7.x;
  u_xlat7.x = (x_858 + x_860);
  let x_863 : vec4<f32> = u_xlat4;
  let x_865 : vec4<f32> = u_xlat7;
  let x_869 : vec4<f32> = u_xlat5;
  let x_872 : vec3<f32> = ((vec3<f32>(x_863.x, x_863.y, x_863.z) * -(vec3<f32>(x_865.x, x_865.x, x_865.x))) + -(vec3<f32>(x_869.x, x_869.y, x_869.z)));
  let x_873 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_876 : vec4<f32> = u_xlat4;
  let x_878 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_876.x, x_876.y, x_876.z), vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : f32 = u_xlat40;
  u_xlat40 = clamp(x_881, 0.0f, 1.0f);
  let x_883 : f32 = u_xlat40;
  u_xlat40 = (-(x_883) + 1.0f);
  let x_886 : f32 = u_xlat40;
  let x_887 : f32 = u_xlat40;
  u_xlat40 = (x_886 * x_887);
  let x_889 : f32 = u_xlat40;
  let x_890 : f32 = u_xlat40;
  u_xlat40 = (x_889 * x_890);
  let x_893 : f32 = u_xlat12.x;
  u_xlat8.x = ((-(x_893) * 0.699999988f) + 1.700000048f);
  let x_901 : f32 = u_xlat12.x;
  let x_903 : f32 = u_xlat8.x;
  u_xlat12.x = (x_901 * x_903);
  let x_907 : f32 = u_xlat12.x;
  u_xlat12.x = (x_907 * 6.0f);
  let x_919 : vec4<f32> = u_xlat7;
  let x_922 : f32 = u_xlat12.x;
  let x_923 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_919.x, x_919.y, x_919.z), x_922);
  u_xlat8 = x_923;
  let x_925 : f32 = u_xlat8.w;
  u_xlat12.x = (x_925 + -1.0f);
  let x_929 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_931 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_929 * x_931) + 1.0f);
  let x_936 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_936, 0.0f);
  let x_940 : f32 = u_xlat12.x;
  u_xlat12.x = log2(x_940);
  let x_944 : f32 = u_xlat12.x;
  let x_946 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat12.x = (x_944 * x_946);
  let x_950 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_950);
  let x_954 : f32 = u_xlat12.x;
  let x_956 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat12.x = (x_954 * x_956);
  let x_959 : vec4<f32> = u_xlat8;
  let x_961 : vec3<f32> = u_xlat12;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) * vec3<f32>(x_961.x, x_961.x, x_961.x));
  let x_964 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : f32 = u_xlat34;
  let x_968 : f32 = u_xlat34;
  let x_972 : vec2<f32> = ((vec2<f32>(x_966, x_966) * vec2<f32>(x_968, x_968)) + vec2<f32>(-1.0f, 1.0f));
  let x_973 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_972.x, x_973.y, x_972.y);
  let x_976 : f32 = u_xlat12.z;
  u_xlat34 = (1.0f / x_976);
  let x_979 : f32 = u_xlat3.x;
  u_xlat3.x = (x_979 + -0.039999999f);
  let x_983 : f32 = u_xlat40;
  let x_985 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_983 * x_985) + 0.039999999f);
  let x_990 : f32 = u_xlat34;
  let x_992 : f32 = u_xlat3.x;
  u_xlat34 = (x_990 * x_992);
  let x_994 : f32 = u_xlat34;
  let x_996 : vec4<f32> = u_xlat7;
  let x_998 : vec3<f32> = (vec3<f32>(x_994, x_994, x_994) * vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec3<f32> = u_xlat14;
  let x_1002 : vec3<f32> = u_xlat2;
  let x_1004 : vec4<f32> = u_xlat7;
  let x_1006 : vec3<f32> = ((x_1001 * x_1002) + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : f32 = u_xlat33;
  let x_1011 : f32 = x_496.unity_LightData.z;
  u_xlat33 = (x_1009 * x_1011);
  let x_1013 : vec4<f32> = u_xlat4;
  let x_1016 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1013.x, x_1013.y, x_1013.z), vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1019, 0.0f, 1.0f);
  let x_1021 : f32 = u_xlat33;
  let x_1022 : f32 = u_xlat34;
  u_xlat33 = (x_1021 * x_1022);
  let x_1024 : f32 = u_xlat33;
  let x_1026 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1024, x_1024, x_1024) * x_1026);
  let x_1028 : vec4<f32> = u_xlat5;
  let x_1031 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1033 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) + vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec4<f32> = u_xlat7;
  let x_1038 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1036.x, x_1036.y, x_1036.z), vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : f32 = u_xlat33;
  u_xlat33 = max(x_1041, 1.17549435e-37f);
  let x_1044 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1044);
  let x_1046 : f32 = u_xlat33;
  let x_1048 : vec4<f32> = u_xlat7;
  let x_1050 : vec3<f32> = (vec3<f32>(x_1046, x_1046, x_1046) * vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1053 : vec4<f32> = u_xlat4;
  let x_1055 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1053.x, x_1053.y, x_1053.z), vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1058, 0.0f, 1.0f);
  let x_1061 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1063 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1061.x, x_1061.y, x_1061.z), vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1066, 0.0f, 1.0f);
  let x_1068 : f32 = u_xlat33;
  let x_1069 : f32 = u_xlat33;
  u_xlat33 = (x_1068 * x_1069);
  let x_1071 : f32 = u_xlat33;
  let x_1073 : f32 = u_xlat12.x;
  u_xlat33 = ((x_1071 * x_1073) + 1.000010014f);
  let x_1077 : f32 = u_xlat34;
  let x_1078 : f32 = u_xlat34;
  u_xlat34 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat33;
  let x_1081 : f32 = u_xlat33;
  u_xlat33 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat34;
  u_xlat34 = max(x_1083, 0.100000001f);
  let x_1086 : f32 = u_xlat33;
  let x_1087 : f32 = u_xlat34;
  u_xlat33 = (x_1086 * x_1087);
  let x_1089 : f32 = u_xlat37;
  let x_1090 : f32 = u_xlat33;
  u_xlat33 = (x_1089 * x_1090);
  let x_1092 : f32 = u_xlat35;
  let x_1093 : f32 = u_xlat33;
  u_xlat33 = (x_1092 / x_1093);
  let x_1095 : f32 = u_xlat33;
  let x_1099 : vec3<f32> = u_xlat2;
  let x_1100 : vec3<f32> = ((vec3<f32>(x_1095, x_1095, x_1095) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1099);
  let x_1101 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec3<f32> = u_xlat17;
  let x_1104 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1103 * vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1109 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1111 : f32 = x_496.unity_LightData.y;
  u_xlat33 = min(x_1109, x_1111);
  let x_1113 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1113));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1125 : u32 = u_xlatu_loop_1;
    let x_1126 : u32 = u_xlatu33;
    if ((x_1125 < x_1126)) {
    } else {
      break;
    }
    let x_1129 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1129 >> 2u);
    let x_1132 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1132 & 3u));
    let x_1136 : u32 = u_xlatu36;
    let x_1139 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1136)];
    let x_1149 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1154 : vec4<u32> = indexable[x_1149];
    u_xlat36 = dot(x_1139, bitcast<vec4<f32>>(x_1154));
    let x_1158 : f32 = u_xlat36;
    u_xlati36 = i32(x_1158);
    let x_1160 : vec3<f32> = vs_INTERP0;
    let x_1172 : i32 = u_xlati36;
    let x_1174 : vec4<f32> = x_1171.x_AdditionalLightsPosition[x_1172];
    let x_1177 : i32 = u_xlati36;
    let x_1179 : vec4<f32> = x_1171.x_AdditionalLightsPosition[x_1177];
    let x_1181 : vec3<f32> = ((-(x_1160) * vec3<f32>(x_1174.w, x_1174.w, x_1174.w)) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
    let x_1182 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
    let x_1184 : vec4<f32> = u_xlat8;
    let x_1186 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : f32 = u_xlat40;
    u_xlat40 = max(x_1189, 6.10351562e-05f);
    let x_1193 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1193);
    let x_1196 : f32 = u_xlat41;
    let x_1198 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1196, x_1196, x_1196) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
    let x_1202 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1202);
    let x_1204 : f32 = u_xlat40;
    let x_1205 : i32 = u_xlati36;
    let x_1207 : f32 = x_1171.x_AdditionalLightsAttenuation[x_1205].x;
    u_xlat40 = (x_1204 * x_1207);
    let x_1209 : f32 = u_xlat40;
    let x_1211 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1209) * x_1211) + 1.0f);
    let x_1214 : f32 = u_xlat40;
    u_xlat40 = max(x_1214, 0.0f);
    let x_1216 : f32 = u_xlat40;
    let x_1217 : f32 = u_xlat40;
    u_xlat40 = (x_1216 * x_1217);
    let x_1219 : f32 = u_xlat40;
    let x_1220 : f32 = u_xlat42;
    u_xlat40 = (x_1219 * x_1220);
    let x_1222 : i32 = u_xlati36;
    let x_1224 : vec4<f32> = x_1171.x_AdditionalLightsSpotDir[x_1222];
    let x_1226 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), x_1226);
    let x_1228 : f32 = u_xlat42;
    let x_1229 : i32 = u_xlati36;
    let x_1231 : f32 = x_1171.x_AdditionalLightsAttenuation[x_1229].z;
    let x_1233 : i32 = u_xlati36;
    let x_1235 : f32 = x_1171.x_AdditionalLightsAttenuation[x_1233].w;
    u_xlat42 = ((x_1228 * x_1231) + x_1235);
    let x_1237 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1237, 0.0f, 1.0f);
    let x_1239 : f32 = u_xlat42;
    let x_1240 : f32 = u_xlat42;
    u_xlat42 = (x_1239 * x_1240);
    let x_1242 : f32 = u_xlat40;
    let x_1243 : f32 = u_xlat42;
    u_xlat40 = (x_1242 * x_1243);
    let x_1246 : vec3<f32> = u_xlat6;
    let x_1248 : i32 = u_xlati36;
    let x_1250 : vec4<f32> = x_1171.x_AdditionalLightsColor[x_1248];
    u_xlat10 = (vec3<f32>(x_1246.x, x_1246.x, x_1246.x) * vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
    let x_1253 : vec4<f32> = u_xlat4;
    let x_1255 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1253.x, x_1253.y, x_1253.z), x_1255);
    let x_1257 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1257, 0.0f, 1.0f);
    let x_1259 : f32 = u_xlat36;
    let x_1260 : f32 = u_xlat40;
    u_xlat36 = (x_1259 * x_1260);
    let x_1262 : f32 = u_xlat36;
    let x_1264 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1262, x_1262, x_1262) * x_1264);
    let x_1266 : vec4<f32> = u_xlat8;
    let x_1268 : f32 = u_xlat41;
    let x_1271 : vec4<f32> = u_xlat5;
    let x_1273 : vec3<f32> = ((vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(x_1268, x_1268, x_1268)) + vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
    let x_1274 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
    let x_1276 : vec4<f32> = u_xlat8;
    let x_1278 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1276.x, x_1276.y, x_1276.z), vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
    let x_1281 : f32 = u_xlat36;
    u_xlat36 = max(x_1281, 1.17549435e-37f);
    let x_1283 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1283);
    let x_1285 : f32 = u_xlat36;
    let x_1287 : vec4<f32> = u_xlat8;
    let x_1289 : vec3<f32> = (vec3<f32>(x_1285, x_1285, x_1285) * vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
    let x_1290 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
    let x_1292 : vec4<f32> = u_xlat4;
    let x_1294 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1292.x, x_1292.y, x_1292.z), vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
    let x_1297 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1297, 0.0f, 1.0f);
    let x_1299 : vec3<f32> = u_xlat9;
    let x_1300 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1299, vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
    let x_1303 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1303, 0.0f, 1.0f);
    let x_1305 : f32 = u_xlat36;
    let x_1306 : f32 = u_xlat36;
    u_xlat36 = (x_1305 * x_1306);
    let x_1308 : f32 = u_xlat36;
    let x_1310 : f32 = u_xlat12.x;
    u_xlat36 = ((x_1308 * x_1310) + 1.000010014f);
    let x_1313 : f32 = u_xlat40;
    let x_1314 : f32 = u_xlat40;
    u_xlat40 = (x_1313 * x_1314);
    let x_1316 : f32 = u_xlat36;
    let x_1317 : f32 = u_xlat36;
    u_xlat36 = (x_1316 * x_1317);
    let x_1319 : f32 = u_xlat40;
    u_xlat40 = max(x_1319, 0.100000001f);
    let x_1321 : f32 = u_xlat36;
    let x_1322 : f32 = u_xlat40;
    u_xlat36 = (x_1321 * x_1322);
    let x_1324 : f32 = u_xlat37;
    let x_1325 : f32 = u_xlat36;
    u_xlat36 = (x_1324 * x_1325);
    let x_1327 : f32 = u_xlat35;
    let x_1328 : f32 = u_xlat36;
    u_xlat36 = (x_1327 / x_1328);
    let x_1330 : f32 = u_xlat36;
    let x_1333 : vec3<f32> = u_xlat2;
    let x_1334 : vec3<f32> = ((vec3<f32>(x_1330, x_1330, x_1330) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1333);
    let x_1335 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
    let x_1337 : vec4<f32> = u_xlat8;
    let x_1339 : vec3<f32> = u_xlat10;
    let x_1341 : vec4<f32> = u_xlat7;
    let x_1343 : vec3<f32> = ((vec3<f32>(x_1337.x, x_1337.y, x_1337.z) * x_1339) + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);

    continuing {
      let x_1346 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1346 + bitcast<u32>(1i));
    }
  }
  let x_1348 : vec4<f32> = u_xlat3;
  let x_1350 : f32 = u_xlat38;
  let x_1353 : vec3<f32> = u_xlat17;
  u_xlat2 = ((vec3<f32>(x_1348.x, x_1348.y, x_1348.z) * vec3<f32>(x_1350, x_1350, x_1350)) + x_1353);
  let x_1355 : vec4<f32> = u_xlat7;
  let x_1357 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1355.x, x_1355.y, x_1355.z) + x_1357);
  let x_1361 : vec4<f32> = vs_INTERP4;
  let x_1363 : vec3<f32> = u_xlat0;
  let x_1365 : vec3<f32> = u_xlat2;
  let x_1366 : vec3<f32> = ((vec3<f32>(x_1361.w, x_1361.w, x_1361.w) * x_1363) + x_1365);
  let x_1367 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
  let x_1369 : bool = u_xlatb23;
  if (x_1369) {
    let x_1374 : f32 = u_xlat1.x;
    x_1370 = x_1374;
  } else {
    x_1370 = 1.0f;
  }
  let x_1376 : f32 = x_1370;
  SV_Target0.w = x_1376;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0);
}

