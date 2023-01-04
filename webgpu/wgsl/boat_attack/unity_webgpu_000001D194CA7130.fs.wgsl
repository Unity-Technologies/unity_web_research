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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(1) @binding(1) var<uniform> x_1172 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_601 : f32;
  var x_614 : f32;
  var x_626 : f32;
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
  var x_1371 : f32;
  var u_xlatu0 : u32;
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
  let x_580 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb12.x = (x_580 == 0.0f);
  let x_583 : vec3<f32> = vs_INTERP0;
  let x_588 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat14 = (-(x_583) + x_588);
  let x_590 : vec3<f32> = u_xlat14;
  let x_591 : vec3<f32> = u_xlat14;
  u_xlat34 = dot(x_590, x_591);
  let x_593 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_593);
  let x_595 : f32 = u_xlat34;
  let x_597 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_595, x_595, x_595) * x_597);
  let x_600 : bool = u_xlatb12.x;
  if (x_600) {
    let x_605 : f32 = u_xlat14.x;
    x_601 = x_605;
  } else {
    let x_609 : f32 = x_66.unity_MatrixV[0i].z;
    x_601 = x_609;
  }
  let x_610 : f32 = x_601;
  u_xlat5.x = x_610;
  let x_613 : bool = u_xlatb12.x;
  if (x_613) {
    let x_618 : f32 = u_xlat14.y;
    x_614 = x_618;
  } else {
    let x_621 : f32 = x_66.unity_MatrixV[1i].z;
    x_614 = x_621;
  }
  let x_622 : f32 = x_614;
  u_xlat5.y = x_622;
  let x_625 : bool = u_xlatb12.x;
  if (x_625) {
    let x_630 : f32 = u_xlat14.z;
    x_626 = x_630;
  } else {
    let x_633 : f32 = x_66.unity_MatrixV[2i].z;
    x_626 = x_633;
  }
  let x_634 : f32 = x_626;
  u_xlat5.z = x_634;
  u_xlat4.w = 1.0f;
  let x_639 : vec4<f32> = x_496.unity_SHAr;
  let x_640 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_639, x_640);
  let x_645 : vec4<f32> = x_496.unity_SHAg;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_645, x_646);
  let x_651 : vec4<f32> = x_496.unity_SHAb;
  let x_652 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_651, x_652);
  let x_655 : vec4<f32> = u_xlat4;
  let x_657 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_655.y, x_655.z, x_655.z, x_655.x) * vec4<f32>(x_657.x, x_657.y, x_657.z, x_657.z));
  let x_663 : vec4<f32> = x_496.unity_SHBr;
  let x_664 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_663, x_664);
  let x_669 : vec4<f32> = x_496.unity_SHBg;
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_669, x_670);
  let x_675 : vec4<f32> = x_496.unity_SHBb;
  let x_676 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_675, x_676);
  let x_680 : f32 = u_xlat4.y;
  let x_682 : f32 = u_xlat4.y;
  u_xlat12.x = (x_680 * x_682);
  let x_686 : f32 = u_xlat4.x;
  let x_688 : f32 = u_xlat4.x;
  let x_691 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_686 * x_688) + -(x_691));
  let x_697 : vec4<f32> = x_496.unity_SHC;
  let x_699 : vec3<f32> = u_xlat12;
  let x_702 : vec4<f32> = u_xlat8;
  u_xlat14 = ((vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_699.x, x_699.x, x_699.x)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec3<f32> = u_xlat14;
  let x_706 : vec3<f32> = u_xlat6;
  u_xlat14 = (x_705 + x_706);
  let x_708 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_708, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_712 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
  let x_717 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_713.x, x_713.y));
  let x_718 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_717.x, x_718.y, x_717.y);
  let x_720 : vec3<f32> = u_xlat12;
  let x_722 : vec4<f32> = hlslcc_FragCoord;
  let x_724 : vec2<f32> = (vec2<f32>(x_720.x, x_720.z) * vec2<f32>(x_722.x, x_722.y));
  let x_725 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_724.x, x_724.y, x_725.z);
  let x_728 : f32 = u_xlat6.y;
  let x_731 : f32 = x_66.x_ScaleBiasRt.x;
  let x_734 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat12.x = ((x_728 * x_731) + x_734);
  let x_738 : f32 = u_xlat12.x;
  u_xlat6.z = (-(x_738) + 1.0f);
  let x_743 : f32 = u_xlat3.x;
  u_xlat3.x = x_743;
  let x_746 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_746, 0.0f, 1.0f);
  let x_750 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_750, 1.0f);
  let x_753 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_753 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_758 : f32 = u_xlat3.x;
  u_xlat12.x = (-(x_758) + 1.0f);
  let x_763 : f32 = u_xlat12.x;
  let x_765 : f32 = u_xlat12.x;
  u_xlat34 = (x_763 * x_765);
  let x_767 : f32 = u_xlat34;
  u_xlat34 = max(x_767, 0.0078125f);
  let x_770 : f32 = u_xlat34;
  let x_771 : f32 = u_xlat34;
  u_xlat35 = (x_770 * x_771);
  let x_774 : f32 = u_xlat3.x;
  u_xlat3.x = (x_774 + 0.040000021f);
  let x_779 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_779, 1.0f);
  let x_783 : f32 = u_xlat34;
  u_xlat37 = ((x_783 * 4.0f) + 2.0f);
  let x_792 : vec3<f32> = u_xlat6;
  let x_795 : f32 = x_66.x_GlobalMipBias.x;
  let x_796 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_792.x, x_792.z), x_795);
  u_xlat38 = x_796.x;
  let x_798 : f32 = u_xlat38;
  u_xlat6.x = (x_798 + -1.0f);
  let x_802 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_804 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_802 * x_804) + 1.0f);
  let x_808 : f32 = u_xlat38;
  let x_810 : f32 = vs_INTERP4.w;
  u_xlat38 = min(x_808, x_810);
  let x_813 : vec3<f32> = vs_INTERP0;
  let x_815 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (x_813 + -(x_815));
  let x_818 : vec3<f32> = u_xlat17;
  let x_819 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_818, x_819);
  let x_823 : f32 = u_xlat17.x;
  let x_825 : f32 = x_138.x_MainLightShadowParams.z;
  let x_828 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_823 * x_825) + x_828);
  let x_832 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_832, 0.0f, 1.0f);
  let x_836 : f32 = u_xlat33;
  u_xlat28 = (-(x_836) + 1.0f);
  let x_840 : f32 = u_xlat17.x;
  let x_841 : f32 = u_xlat28;
  let x_843 : f32 = u_xlat33;
  u_xlat33 = ((x_840 * x_841) + x_843);
  let x_845 : vec3<f32> = u_xlat6;
  let x_848 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_845.x, x_845.x, x_845.x) * vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : vec4<f32> = u_xlat5;
  let x_854 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(vec3<f32>(x_851.x, x_851.y, x_851.z)), vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_859 : f32 = u_xlat7.x;
  let x_861 : f32 = u_xlat7.x;
  u_xlat7.x = (x_859 + x_861);
  let x_864 : vec4<f32> = u_xlat4;
  let x_866 : vec4<f32> = u_xlat7;
  let x_870 : vec4<f32> = u_xlat5;
  let x_873 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * -(vec3<f32>(x_866.x, x_866.x, x_866.x))) + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : f32 = u_xlat40;
  u_xlat40 = clamp(x_882, 0.0f, 1.0f);
  let x_884 : f32 = u_xlat40;
  u_xlat40 = (-(x_884) + 1.0f);
  let x_887 : f32 = u_xlat40;
  let x_888 : f32 = u_xlat40;
  u_xlat40 = (x_887 * x_888);
  let x_890 : f32 = u_xlat40;
  let x_891 : f32 = u_xlat40;
  u_xlat40 = (x_890 * x_891);
  let x_894 : f32 = u_xlat12.x;
  u_xlat8.x = ((-(x_894) * 0.699999988f) + 1.700000048f);
  let x_902 : f32 = u_xlat12.x;
  let x_904 : f32 = u_xlat8.x;
  u_xlat12.x = (x_902 * x_904);
  let x_908 : f32 = u_xlat12.x;
  u_xlat12.x = (x_908 * 6.0f);
  let x_920 : vec4<f32> = u_xlat7;
  let x_923 : f32 = u_xlat12.x;
  let x_924 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_920.x, x_920.y, x_920.z), x_923);
  u_xlat8 = x_924;
  let x_926 : f32 = u_xlat8.w;
  u_xlat12.x = (x_926 + -1.0f);
  let x_930 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_932 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_930 * x_932) + 1.0f);
  let x_937 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_937, 0.0f);
  let x_941 : f32 = u_xlat12.x;
  u_xlat12.x = log2(x_941);
  let x_945 : f32 = u_xlat12.x;
  let x_947 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat12.x = (x_945 * x_947);
  let x_951 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_951);
  let x_955 : f32 = u_xlat12.x;
  let x_957 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat12.x = (x_955 * x_957);
  let x_960 : vec4<f32> = u_xlat8;
  let x_962 : vec3<f32> = u_xlat12;
  let x_964 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) * vec3<f32>(x_962.x, x_962.x, x_962.x));
  let x_965 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : f32 = u_xlat34;
  let x_969 : f32 = u_xlat34;
  let x_973 : vec2<f32> = ((vec2<f32>(x_967, x_967) * vec2<f32>(x_969, x_969)) + vec2<f32>(-1.0f, 1.0f));
  let x_974 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_973.x, x_974.y, x_973.y);
  let x_977 : f32 = u_xlat12.z;
  u_xlat34 = (1.0f / x_977);
  let x_980 : f32 = u_xlat3.x;
  u_xlat3.x = (x_980 + -0.039999999f);
  let x_984 : f32 = u_xlat40;
  let x_986 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_984 * x_986) + 0.039999999f);
  let x_991 : f32 = u_xlat34;
  let x_993 : f32 = u_xlat3.x;
  u_xlat34 = (x_991 * x_993);
  let x_995 : f32 = u_xlat34;
  let x_997 : vec4<f32> = u_xlat7;
  let x_999 : vec3<f32> = (vec3<f32>(x_995, x_995, x_995) * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec3<f32> = u_xlat14;
  let x_1003 : vec3<f32> = u_xlat2;
  let x_1005 : vec4<f32> = u_xlat7;
  let x_1007 : vec3<f32> = ((x_1002 * x_1003) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1010 : f32 = u_xlat33;
  let x_1012 : f32 = x_496.unity_LightData.z;
  u_xlat33 = (x_1010 * x_1012);
  let x_1014 : vec4<f32> = u_xlat4;
  let x_1017 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1014.x, x_1014.y, x_1014.z), vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1020 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1020, 0.0f, 1.0f);
  let x_1022 : f32 = u_xlat33;
  let x_1023 : f32 = u_xlat34;
  u_xlat33 = (x_1022 * x_1023);
  let x_1025 : f32 = u_xlat33;
  let x_1027 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1025, x_1025, x_1025) * x_1027);
  let x_1029 : vec4<f32> = u_xlat5;
  let x_1032 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1034 : vec3<f32> = (vec3<f32>(x_1029.x, x_1029.y, x_1029.z) + vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat7;
  let x_1039 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1037.x, x_1037.y, x_1037.z), vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : f32 = u_xlat33;
  u_xlat33 = max(x_1042, 1.17549435e-37f);
  let x_1045 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1045);
  let x_1047 : f32 = u_xlat33;
  let x_1049 : vec4<f32> = u_xlat7;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047, x_1047, x_1047) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat4;
  let x_1056 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1059, 0.0f, 1.0f);
  let x_1062 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1064 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1062.x, x_1062.y, x_1062.z), vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1067, 0.0f, 1.0f);
  let x_1069 : f32 = u_xlat33;
  let x_1070 : f32 = u_xlat33;
  u_xlat33 = (x_1069 * x_1070);
  let x_1072 : f32 = u_xlat33;
  let x_1074 : f32 = u_xlat12.x;
  u_xlat33 = ((x_1072 * x_1074) + 1.000010014f);
  let x_1078 : f32 = u_xlat34;
  let x_1079 : f32 = u_xlat34;
  u_xlat34 = (x_1078 * x_1079);
  let x_1081 : f32 = u_xlat33;
  let x_1082 : f32 = u_xlat33;
  u_xlat33 = (x_1081 * x_1082);
  let x_1084 : f32 = u_xlat34;
  u_xlat34 = max(x_1084, 0.100000001f);
  let x_1087 : f32 = u_xlat33;
  let x_1088 : f32 = u_xlat34;
  u_xlat33 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat37;
  let x_1091 : f32 = u_xlat33;
  u_xlat33 = (x_1090 * x_1091);
  let x_1093 : f32 = u_xlat35;
  let x_1094 : f32 = u_xlat33;
  u_xlat33 = (x_1093 / x_1094);
  let x_1096 : f32 = u_xlat33;
  let x_1100 : vec3<f32> = u_xlat2;
  let x_1101 : vec3<f32> = ((vec3<f32>(x_1096, x_1096, x_1096) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1100);
  let x_1102 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : vec3<f32> = u_xlat17;
  let x_1105 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1104 * vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1110 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1112 : f32 = x_496.unity_LightData.y;
  u_xlat33 = min(x_1110, x_1112);
  let x_1114 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1114));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1126 : u32 = u_xlatu_loop_1;
    let x_1127 : u32 = u_xlatu33;
    if ((x_1126 < x_1127)) {
    } else {
      break;
    }
    let x_1130 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1130 >> 2u);
    let x_1133 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1133 & 3u));
    let x_1137 : u32 = u_xlatu36;
    let x_1140 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1137)];
    let x_1150 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1155 : vec4<u32> = indexable[x_1150];
    u_xlat36 = dot(x_1140, bitcast<vec4<f32>>(x_1155));
    let x_1159 : f32 = u_xlat36;
    u_xlati36 = i32(x_1159);
    let x_1161 : vec3<f32> = vs_INTERP0;
    let x_1173 : i32 = u_xlati36;
    let x_1175 : vec4<f32> = x_1172.x_AdditionalLightsPosition[x_1173];
    let x_1178 : i32 = u_xlati36;
    let x_1180 : vec4<f32> = x_1172.x_AdditionalLightsPosition[x_1178];
    let x_1182 : vec3<f32> = ((-(x_1161) * vec3<f32>(x_1175.w, x_1175.w, x_1175.w)) + vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
    let x_1183 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
    let x_1185 : vec4<f32> = u_xlat8;
    let x_1187 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1185.x, x_1185.y, x_1185.z), vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
    let x_1190 : f32 = u_xlat40;
    u_xlat40 = max(x_1190, 6.10351562e-05f);
    let x_1194 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1194);
    let x_1197 : f32 = u_xlat41;
    let x_1199 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1197, x_1197, x_1197) * vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
    let x_1203 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1203);
    let x_1205 : f32 = u_xlat40;
    let x_1206 : i32 = u_xlati36;
    let x_1208 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1206].x;
    u_xlat40 = (x_1205 * x_1208);
    let x_1210 : f32 = u_xlat40;
    let x_1212 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1210) * x_1212) + 1.0f);
    let x_1215 : f32 = u_xlat40;
    u_xlat40 = max(x_1215, 0.0f);
    let x_1217 : f32 = u_xlat40;
    let x_1218 : f32 = u_xlat40;
    u_xlat40 = (x_1217 * x_1218);
    let x_1220 : f32 = u_xlat40;
    let x_1221 : f32 = u_xlat42;
    u_xlat40 = (x_1220 * x_1221);
    let x_1223 : i32 = u_xlati36;
    let x_1225 : vec4<f32> = x_1172.x_AdditionalLightsSpotDir[x_1223];
    let x_1227 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1225.x, x_1225.y, x_1225.z), x_1227);
    let x_1229 : f32 = u_xlat42;
    let x_1230 : i32 = u_xlati36;
    let x_1232 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1230].z;
    let x_1234 : i32 = u_xlati36;
    let x_1236 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1234].w;
    u_xlat42 = ((x_1229 * x_1232) + x_1236);
    let x_1238 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1238, 0.0f, 1.0f);
    let x_1240 : f32 = u_xlat42;
    let x_1241 : f32 = u_xlat42;
    u_xlat42 = (x_1240 * x_1241);
    let x_1243 : f32 = u_xlat40;
    let x_1244 : f32 = u_xlat42;
    u_xlat40 = (x_1243 * x_1244);
    let x_1247 : vec3<f32> = u_xlat6;
    let x_1249 : i32 = u_xlati36;
    let x_1251 : vec4<f32> = x_1172.x_AdditionalLightsColor[x_1249];
    u_xlat10 = (vec3<f32>(x_1247.x, x_1247.x, x_1247.x) * vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
    let x_1254 : vec4<f32> = u_xlat4;
    let x_1256 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1254.x, x_1254.y, x_1254.z), x_1256);
    let x_1258 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1258, 0.0f, 1.0f);
    let x_1260 : f32 = u_xlat36;
    let x_1261 : f32 = u_xlat40;
    u_xlat36 = (x_1260 * x_1261);
    let x_1263 : f32 = u_xlat36;
    let x_1265 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1263, x_1263, x_1263) * x_1265);
    let x_1267 : vec4<f32> = u_xlat8;
    let x_1269 : f32 = u_xlat41;
    let x_1272 : vec4<f32> = u_xlat5;
    let x_1274 : vec3<f32> = ((vec3<f32>(x_1267.x, x_1267.y, x_1267.z) * vec3<f32>(x_1269, x_1269, x_1269)) + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
    let x_1275 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
    let x_1277 : vec4<f32> = u_xlat8;
    let x_1279 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1277.x, x_1277.y, x_1277.z), vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
    let x_1282 : f32 = u_xlat36;
    u_xlat36 = max(x_1282, 1.17549435e-37f);
    let x_1284 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1284);
    let x_1286 : f32 = u_xlat36;
    let x_1288 : vec4<f32> = u_xlat8;
    let x_1290 : vec3<f32> = (vec3<f32>(x_1286, x_1286, x_1286) * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
    let x_1291 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
    let x_1293 : vec4<f32> = u_xlat4;
    let x_1295 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1293.x, x_1293.y, x_1293.z), vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
    let x_1298 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1298, 0.0f, 1.0f);
    let x_1300 : vec3<f32> = u_xlat9;
    let x_1301 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1300, vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
    let x_1304 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1304, 0.0f, 1.0f);
    let x_1306 : f32 = u_xlat36;
    let x_1307 : f32 = u_xlat36;
    u_xlat36 = (x_1306 * x_1307);
    let x_1309 : f32 = u_xlat36;
    let x_1311 : f32 = u_xlat12.x;
    u_xlat36 = ((x_1309 * x_1311) + 1.000010014f);
    let x_1314 : f32 = u_xlat40;
    let x_1315 : f32 = u_xlat40;
    u_xlat40 = (x_1314 * x_1315);
    let x_1317 : f32 = u_xlat36;
    let x_1318 : f32 = u_xlat36;
    u_xlat36 = (x_1317 * x_1318);
    let x_1320 : f32 = u_xlat40;
    u_xlat40 = max(x_1320, 0.100000001f);
    let x_1322 : f32 = u_xlat36;
    let x_1323 : f32 = u_xlat40;
    u_xlat36 = (x_1322 * x_1323);
    let x_1325 : f32 = u_xlat37;
    let x_1326 : f32 = u_xlat36;
    u_xlat36 = (x_1325 * x_1326);
    let x_1328 : f32 = u_xlat35;
    let x_1329 : f32 = u_xlat36;
    u_xlat36 = (x_1328 / x_1329);
    let x_1331 : f32 = u_xlat36;
    let x_1334 : vec3<f32> = u_xlat2;
    let x_1335 : vec3<f32> = ((vec3<f32>(x_1331, x_1331, x_1331) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1334);
    let x_1336 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
    let x_1338 : vec4<f32> = u_xlat8;
    let x_1340 : vec3<f32> = u_xlat10;
    let x_1342 : vec4<f32> = u_xlat7;
    let x_1344 : vec3<f32> = ((vec3<f32>(x_1338.x, x_1338.y, x_1338.z) * x_1340) + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
    let x_1345 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);

    continuing {
      let x_1347 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1347 + bitcast<u32>(1i));
    }
  }
  let x_1349 : vec4<f32> = u_xlat3;
  let x_1351 : f32 = u_xlat38;
  let x_1354 : vec3<f32> = u_xlat17;
  u_xlat2 = ((vec3<f32>(x_1349.x, x_1349.y, x_1349.z) * vec3<f32>(x_1351, x_1351, x_1351)) + x_1354);
  let x_1356 : vec4<f32> = u_xlat7;
  let x_1358 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1356.x, x_1356.y, x_1356.z) + x_1358);
  let x_1362 : vec4<f32> = vs_INTERP4;
  let x_1364 : vec3<f32> = u_xlat0;
  let x_1366 : vec3<f32> = u_xlat2;
  let x_1367 : vec3<f32> = ((vec3<f32>(x_1362.w, x_1362.w, x_1362.w) * x_1364) + x_1366);
  let x_1368 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : bool = u_xlatb23;
  if (x_1370) {
    let x_1375 : f32 = u_xlat1.x;
    x_1371 = x_1375;
  } else {
    x_1371 = 1.0f;
  }
  let x_1377 : f32 = x_1371;
  SV_Target0.w = x_1377;
  let x_1384 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1386 : f32 = x_496.unity_RenderingLayer.x;
  u_xlatu0 = (x_1384 & bitcast<u32>(x_1386));
  let x_1389 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1389);
  let x_1394 : f32 = u_xlat0.x;
  let x_1396 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1394 * x_1396);
  let x_1400 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1400, 0.0f, 1.0f);
  let x_1403 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1403.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

