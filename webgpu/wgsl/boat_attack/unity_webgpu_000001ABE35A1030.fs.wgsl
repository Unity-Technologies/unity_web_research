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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(1) var<uniform> x_1167 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatb38 : bool;
  var u_xlatb1 : bool;
  var x_408 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat37 : f32;
  var u_xlatb25 : bool;
  var x_457 : f32;
  var u_xlatb13 : vec3<bool>;
  var x_611 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati3 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat21 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var x_1397 : f32;
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
  u_xlat36 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat36;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat36 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat36;
  u_xlat36 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat36;
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
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_INTERP0;
  let x_170 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat4;
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat5;
  let x_182 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : vec4<f32> = u_xlat6;
  let x_188 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_186.x, x_186.y, x_186.z), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_193 : vec3<f32> = u_xlat7;
  let x_194 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_193, x_194);
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
  u_xlat36 = dot(x_250, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_255 : f32 = u_xlat36;
  u_xlat36 = (-(x_255) + 4.0f);
  let x_260 : f32 = u_xlat36;
  u_xlatu36 = u32(x_260);
  let x_264 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_264) << bitcast<u32>(2i));
  let x_267 : vec3<f32> = vs_INTERP0;
  let x_270 : i32 = u_xlati36;
  let x_273 : i32 = u_xlati36;
  let x_277 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_270 + 1i) / 4i)][((x_273 + 1i) % 4i)];
  let x_279 : vec3<f32> = (vec3<f32>(x_267.y, x_267.y, x_267.y) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : i32 = u_xlati36;
  let x_284 : i32 = u_xlati36;
  let x_287 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_282 / 4i)][(x_284 % 4i)];
  let x_289 : vec3<f32> = vs_INTERP0;
  let x_292 : vec4<f32> = u_xlat4;
  let x_294 : vec3<f32> = ((vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(x_289.x, x_289.x, x_289.x)) + vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : i32 = u_xlati36;
  let x_300 : i32 = u_xlati36;
  let x_304 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_297 + 2i) / 4i)][((x_300 + 2i) % 4i)];
  let x_306 : vec3<f32> = vs_INTERP0;
  let x_309 : vec4<f32> = u_xlat4;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.z, x_306.z, x_306.z)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : i32 = u_xlati36;
  let x_319 : i32 = u_xlati36;
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
  u_xlat36 = x_346;
  let x_350 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_350) + 1.0f);
  let x_353 : f32 = u_xlat36;
  let x_355 : f32 = x_138.x_MainLightShadowParams.x;
  let x_357 : f32 = u_xlat38;
  u_xlat36 = ((x_353 * x_355) + x_357);
  let x_361 : f32 = u_xlat4.z;
  u_xlatb38 = (0.0f >= x_361);
  let x_364 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_364 >= 1.0f);
  let x_367 : bool = u_xlatb38;
  let x_369 : bool = u_xlatb4.x;
  u_xlatb38 = (x_367 | x_369);
  let x_371 : bool = u_xlatb38;
  let x_372 : f32 = u_xlat36;
  u_xlat36 = select(x_372, 1.0f, x_371);
  let x_374 : vec3<f32> = u_xlat0;
  let x_376 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_374, -(vec3<f32>(x_376.x, x_376.y, x_376.z)));
  let x_382 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_382, 0.0f, 1.0f);
  let x_385 : f32 = u_xlat36;
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
  u_xlat13.x = (x_418 + -0.400000006f);
  let x_424 : f32 = u_xlat1.w;
  u_xlat25 = dpdxCoarse(x_424);
  let x_428 : f32 = u_xlat1.w;
  u_xlat37 = dpdyCoarse(x_428);
  let x_430 : f32 = u_xlat37;
  let x_432 : f32 = u_xlat25;
  u_xlat25 = (abs(x_430) + abs(x_432));
  let x_435 : f32 = u_xlat25;
  u_xlat25 = max(x_435, 0.0001f);
  let x_439 : f32 = u_xlat13.x;
  let x_440 : f32 = u_xlat25;
  u_xlat13.x = (x_439 / x_440);
  let x_444 : f32 = u_xlat13.x;
  u_xlat13.x = (x_444 + 0.5f);
  let x_449 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_449, 0.0f, 1.0f);
  let x_454 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb25 = !((x_454 == 0.0f));
  let x_456 : bool = u_xlatb25;
  if (x_456) {
    let x_461 : f32 = u_xlat13.x;
    x_457 = x_461;
  } else {
    let x_464 : f32 = u_xlat1.x;
    x_457 = x_464;
  }
  let x_465 : f32 = x_457;
  u_xlat1.x = x_465;
  let x_468 : f32 = u_xlat1.x;
  u_xlat13.x = (x_468 + -0.0001f);
  let x_476 : f32 = u_xlat13.x;
  u_xlatb13.x = (x_476 < 0.0f);
  let x_480 : bool = u_xlatb13.x;
  if (((select(0i, 1i, x_480) * -1i) != 0i)) {
    discard;
  }
  let x_490 : f32 = vs_INTERP2.w;
  u_xlatb13.x = (0.0f < x_490);
  let x_498 : f32 = x_496.unity_WorldTransformParams.w;
  u_xlatb13.z = (x_498 >= 0.0f);
  let x_502 : bool = u_xlatb13.x;
  u_xlat13.x = select(-1.0f, 1.0f, x_502);
  let x_506 : bool = u_xlatb13.z;
  u_xlat13.z = select(-1.0f, 1.0f, x_506);
  let x_510 : f32 = u_xlat13.z;
  let x_512 : f32 = u_xlat13.x;
  u_xlat13.x = (x_510 * x_512);
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
  let x_533 : vec3<f32> = u_xlat13;
  let x_535 : vec4<f32> = u_xlat4;
  let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.x, x_533.x) * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec3<f32> = u_xlat15;
  let x_542 : vec4<f32> = u_xlat4;
  let x_544 : vec3<f32> = (vec3<f32>(x_540.y, x_540.y, x_540.y) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec3<f32> = u_xlat15;
  let x_549 : vec4<f32> = vs_INTERP2;
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec3<f32> = u_xlat15;
  let x_559 : vec3<f32> = vs_INTERP1;
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat15 = ((vec3<f32>(x_557.z, x_557.z, x_557.z) * x_559) + vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec3<f32> = u_xlat15;
  let x_565 : vec3<f32> = u_xlat15;
  u_xlat13.x = dot(x_564, x_565);
  let x_569 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_569);
  let x_572 : vec3<f32> = u_xlat13;
  let x_574 : vec3<f32> = u_xlat15;
  let x_575 : vec3<f32> = (vec3<f32>(x_572.x, x_572.x, x_572.x) * x_574);
  let x_576 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_580 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb13.x = (x_580 == 0.0f);
  let x_583 : vec3<f32> = vs_INTERP0;
  let x_588 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_583) + x_588);
  let x_590 : vec3<f32> = u_xlat15;
  let x_591 : vec3<f32> = u_xlat15;
  u_xlat37 = dot(x_590, x_591);
  let x_593 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_593);
  let x_595 : f32 = u_xlat37;
  let x_597 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_595, x_595, x_595) * x_597);
  let x_601 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_601;
  let x_604 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_604;
  let x_607 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_607;
  let x_610 : bool = u_xlatb13.x;
  if (x_610) {
    let x_614 : vec3<f32> = u_xlat15;
    x_611 = x_614;
  } else {
    let x_616 : vec4<f32> = u_xlat5;
    x_611 = vec3<f32>(x_616.x, x_616.y, x_616.z);
  }
  let x_618 : vec3<f32> = x_611;
  u_xlat15 = x_618;
  let x_620 : f32 = vs_INTERP0.y;
  let x_622 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat13.x = (x_620 * x_622);
  let x_626 : f32 = x_66.unity_MatrixV[0i].z;
  let x_628 : f32 = vs_INTERP0.x;
  let x_631 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_626 * x_628) + x_631);
  let x_635 : f32 = x_66.unity_MatrixV[2i].z;
  let x_637 : f32 = vs_INTERP0.z;
  let x_640 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_635 * x_637) + x_640);
  let x_644 : f32 = u_xlat13.x;
  let x_646 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat13.x = (x_644 + x_646);
  let x_650 : f32 = u_xlat13.x;
  let x_653 : f32 = x_66.x_ProjectionParams.y;
  u_xlat13.x = (-(x_650) + -(x_653));
  let x_658 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_658, 0.0f);
  let x_662 : f32 = u_xlat13.x;
  let x_665 : f32 = x_66.unity_FogParams.x;
  u_xlat13.x = (x_662 * x_665);
  u_xlat4.w = 1.0f;
  let x_671 : vec4<f32> = x_496.unity_SHAr;
  let x_672 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_671, x_672);
  let x_677 : vec4<f32> = x_496.unity_SHAg;
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_677, x_678);
  let x_683 : vec4<f32> = x_496.unity_SHAb;
  let x_684 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_683, x_684);
  let x_687 : vec4<f32> = u_xlat4;
  let x_689 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_687.y, x_687.z, x_687.z, x_687.x) * vec4<f32>(x_689.x, x_689.y, x_689.z, x_689.z));
  let x_694 : vec4<f32> = x_496.unity_SHBr;
  let x_695 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_694, x_695);
  let x_700 : vec4<f32> = x_496.unity_SHBg;
  let x_701 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_700, x_701);
  let x_706 : vec4<f32> = x_496.unity_SHBb;
  let x_707 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_706, x_707);
  let x_711 : f32 = u_xlat4.y;
  let x_713 : f32 = u_xlat4.y;
  u_xlat37 = (x_711 * x_713);
  let x_716 : f32 = u_xlat4.x;
  let x_718 : f32 = u_xlat4.x;
  let x_720 : f32 = u_xlat37;
  u_xlat37 = ((x_716 * x_718) + -(x_720));
  let x_725 : vec4<f32> = x_496.unity_SHC;
  let x_727 : f32 = u_xlat37;
  let x_730 : vec3<f32> = u_xlat7;
  let x_731 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_727, x_727, x_727)) + x_730);
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat5;
  let x_736 : vec4<f32> = u_xlat6;
  let x_738 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) + vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat5;
  let x_743 : vec3<f32> = max(vec3<f32>(x_741.x, x_741.y, x_741.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_744 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_748 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_749 : vec2<f32> = vec2<f32>(x_748.x, x_748.y);
  let x_753 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_749.x, x_749.y));
  let x_754 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat6;
  let x_758 : vec4<f32> = hlslcc_FragCoord;
  let x_760 : vec2<f32> = (vec2<f32>(x_756.x, x_756.y) * vec2<f32>(x_758.x, x_758.y));
  let x_761 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_760.x, x_760.y, x_761.z, x_761.w);
  let x_764 : f32 = u_xlat6.y;
  let x_767 : f32 = x_66.x_ScaleBiasRt.x;
  let x_770 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat37 = ((x_764 * x_767) + x_770);
  let x_772 : f32 = u_xlat37;
  u_xlat6.z = (-(x_772) + 1.0f);
  let x_777 : f32 = u_xlat3.x;
  u_xlat3.x = x_777;
  let x_780 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_780, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_784, 1.0f);
  let x_787 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_787 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_792 : f32 = u_xlat3.x;
  u_xlat37 = (-(x_792) + 1.0f);
  let x_795 : f32 = u_xlat37;
  let x_796 : f32 = u_xlat37;
  u_xlat38 = (x_795 * x_796);
  let x_798 : f32 = u_xlat38;
  u_xlat38 = max(x_798, 0.0078125f);
  let x_802 : f32 = u_xlat38;
  let x_803 : f32 = u_xlat38;
  u_xlat40 = (x_802 * x_803);
  let x_806 : f32 = u_xlat3.x;
  u_xlat3.x = (x_806 + 0.040000021f);
  let x_811 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_811, 1.0f);
  let x_815 : f32 = u_xlat38;
  u_xlat41 = ((x_815 * 4.0f) + 2.0f);
  let x_823 : vec4<f32> = u_xlat6;
  let x_826 : f32 = x_66.x_GlobalMipBias.x;
  let x_827 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_823.x, x_823.z), x_826);
  u_xlat6.x = x_827.x;
  let x_832 : f32 = u_xlat6.x;
  u_xlat18 = (x_832 + -1.0f);
  let x_835 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_836 : f32 = u_xlat18;
  u_xlat18 = ((x_835 * x_836) + 1.0f);
  let x_840 : f32 = u_xlat6.x;
  let x_842 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_840, x_842);
  let x_845 : vec3<f32> = vs_INTERP0;
  let x_847 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_845 + -(x_847));
  let x_851 : vec3<f32> = u_xlat7;
  let x_852 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_851, x_852);
  let x_854 : f32 = u_xlat30;
  let x_856 : f32 = x_138.x_MainLightShadowParams.z;
  let x_859 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat30 = ((x_854 * x_856) + x_859);
  let x_861 : f32 = u_xlat30;
  u_xlat30 = clamp(x_861, 0.0f, 1.0f);
  let x_864 : f32 = u_xlat36;
  u_xlat42 = (-(x_864) + 1.0f);
  let x_867 : f32 = u_xlat30;
  let x_868 : f32 = u_xlat42;
  let x_870 : f32 = u_xlat36;
  u_xlat36 = ((x_867 * x_868) + x_870);
  let x_872 : f32 = u_xlat18;
  let x_875 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_872, x_872, x_872) * vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec3<f32> = u_xlat15;
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(-(x_878), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : f32 = u_xlat30;
  let x_884 : f32 = u_xlat30;
  u_xlat30 = (x_883 + x_884);
  let x_887 : vec4<f32> = u_xlat4;
  let x_889 : f32 = u_xlat30;
  let x_893 : vec3<f32> = u_xlat15;
  let x_895 : vec3<f32> = ((vec3<f32>(x_887.x, x_887.y, x_887.z) * -(vec3<f32>(x_889, x_889, x_889))) + -(x_893));
  let x_896 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), x_900);
  let x_902 : f32 = u_xlat30;
  u_xlat30 = clamp(x_902, 0.0f, 1.0f);
  let x_904 : f32 = u_xlat30;
  u_xlat30 = (-(x_904) + 1.0f);
  let x_907 : f32 = u_xlat30;
  let x_908 : f32 = u_xlat30;
  u_xlat30 = (x_907 * x_908);
  let x_910 : f32 = u_xlat30;
  let x_911 : f32 = u_xlat30;
  u_xlat30 = (x_910 * x_911);
  let x_913 : f32 = u_xlat37;
  u_xlat42 = ((-(x_913) * 0.699999988f) + 1.700000048f);
  let x_919 : f32 = u_xlat37;
  let x_920 : f32 = u_xlat42;
  u_xlat37 = (x_919 * x_920);
  let x_922 : f32 = u_xlat37;
  u_xlat37 = (x_922 * 6.0f);
  let x_933 : vec4<f32> = u_xlat8;
  let x_935 : f32 = u_xlat37;
  let x_936 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_933.x, x_933.y, x_933.z), x_935);
  u_xlat8 = x_936;
  let x_938 : f32 = u_xlat8.w;
  u_xlat37 = (x_938 + -1.0f);
  let x_941 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_942 : f32 = u_xlat37;
  u_xlat37 = ((x_941 * x_942) + 1.0f);
  let x_945 : f32 = u_xlat37;
  u_xlat37 = max(x_945, 0.0f);
  let x_947 : f32 = u_xlat37;
  u_xlat37 = log2(x_947);
  let x_949 : f32 = u_xlat37;
  let x_951 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat37 = (x_949 * x_951);
  let x_953 : f32 = u_xlat37;
  u_xlat37 = exp2(x_953);
  let x_955 : f32 = u_xlat37;
  let x_957 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat37 = (x_955 * x_957);
  let x_959 : vec4<f32> = u_xlat8;
  let x_961 : f32 = u_xlat37;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) * vec3<f32>(x_961, x_961, x_961));
  let x_964 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_968 : f32 = u_xlat38;
  let x_970 : f32 = u_xlat38;
  u_xlat9 = ((vec2<f32>(x_968, x_968) * vec2<f32>(x_970, x_970)) + vec2<f32>(-1.0f, 1.0f));
  let x_976 : f32 = u_xlat9.y;
  u_xlat37 = (1.0f / x_976);
  let x_979 : f32 = u_xlat3.x;
  u_xlat38 = (x_979 + -0.039999999f);
  let x_982 : f32 = u_xlat30;
  let x_983 : f32 = u_xlat38;
  u_xlat38 = ((x_982 * x_983) + 0.039999999f);
  let x_987 : f32 = u_xlat37;
  let x_988 : f32 = u_xlat38;
  u_xlat37 = (x_987 * x_988);
  let x_990 : f32 = u_xlat37;
  let x_992 : vec4<f32> = u_xlat8;
  let x_994 : vec3<f32> = (vec3<f32>(x_990, x_990, x_990) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat5;
  let x_999 : vec3<f32> = u_xlat2;
  let x_1001 : vec4<f32> = u_xlat8;
  let x_1003 : vec3<f32> = ((vec3<f32>(x_997.x, x_997.y, x_997.z) * x_999) + vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : f32 = u_xlat36;
  let x_1008 : f32 = x_496.unity_LightData.z;
  u_xlat36 = (x_1006 * x_1008);
  let x_1010 : vec4<f32> = u_xlat4;
  let x_1013 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1016, 0.0f, 1.0f);
  let x_1018 : f32 = u_xlat36;
  let x_1019 : f32 = u_xlat37;
  u_xlat36 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat36;
  let x_1023 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1021, x_1021, x_1021) * x_1023);
  let x_1025 : vec3<f32> = u_xlat15;
  let x_1027 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1029 : vec3<f32> = (x_1025 + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat8;
  let x_1034 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : f32 = u_xlat36;
  u_xlat36 = max(x_1037, 1.17549435e-37f);
  let x_1040 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1040);
  let x_1042 : f32 = u_xlat36;
  let x_1044 : vec4<f32> = u_xlat8;
  let x_1046 : vec3<f32> = (vec3<f32>(x_1042, x_1042, x_1042) * vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec4<f32> = u_xlat4;
  let x_1051 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1049.x, x_1049.y, x_1049.z), vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1054, 0.0f, 1.0f);
  let x_1057 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1059 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1057.x, x_1057.y, x_1057.z), vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1062, 0.0f, 1.0f);
  let x_1064 : f32 = u_xlat36;
  let x_1065 : f32 = u_xlat36;
  u_xlat36 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat36;
  let x_1069 : f32 = u_xlat9.x;
  u_xlat36 = ((x_1067 * x_1069) + 1.000010014f);
  let x_1073 : f32 = u_xlat37;
  let x_1074 : f32 = u_xlat37;
  u_xlat37 = (x_1073 * x_1074);
  let x_1076 : f32 = u_xlat36;
  let x_1077 : f32 = u_xlat36;
  u_xlat36 = (x_1076 * x_1077);
  let x_1079 : f32 = u_xlat37;
  u_xlat37 = max(x_1079, 0.100000001f);
  let x_1082 : f32 = u_xlat36;
  let x_1083 : f32 = u_xlat37;
  u_xlat36 = (x_1082 * x_1083);
  let x_1085 : f32 = u_xlat41;
  let x_1086 : f32 = u_xlat36;
  u_xlat36 = (x_1085 * x_1086);
  let x_1088 : f32 = u_xlat40;
  let x_1089 : f32 = u_xlat36;
  u_xlat36 = (x_1088 / x_1089);
  let x_1091 : f32 = u_xlat36;
  let x_1095 : vec3<f32> = u_xlat2;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1095);
  let x_1097 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec3<f32> = u_xlat7;
  let x_1100 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1099 * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1105 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1107 : f32 = x_496.unity_LightData.y;
  u_xlat36 = min(x_1105, x_1107);
  let x_1109 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1109));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1121 : u32 = u_xlatu_loop_1;
    let x_1122 : u32 = u_xlatu36;
    if ((x_1121 < x_1122)) {
    } else {
      break;
    }
    let x_1125 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1125 >> 2u);
    let x_1128 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1128 & 3u));
    let x_1131 : u32 = u_xlatu38;
    let x_1134 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1131)];
    let x_1144 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1149 : vec4<u32> = indexable[x_1144];
    u_xlat38 = dot(x_1134, bitcast<vec4<f32>>(x_1149));
    let x_1153 : f32 = u_xlat38;
    u_xlati38 = i32(x_1153);
    let x_1156 : vec3<f32> = vs_INTERP0;
    let x_1168 : i32 = u_xlati38;
    let x_1170 : vec4<f32> = x_1167.x_AdditionalLightsPosition[x_1168];
    let x_1173 : i32 = u_xlati38;
    let x_1175 : vec4<f32> = x_1167.x_AdditionalLightsPosition[x_1173];
    u_xlat21 = ((-(x_1156) * vec3<f32>(x_1170.w, x_1170.w, x_1170.w)) + vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
    let x_1178 : vec3<f32> = u_xlat21;
    let x_1179 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1178, x_1179);
    let x_1183 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1183, 6.10351562e-05f);
    let x_1188 : f32 = u_xlat3.x;
    u_xlat30 = inverseSqrt(x_1188);
    let x_1191 : f32 = u_xlat30;
    let x_1193 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1191, x_1191, x_1191) * x_1193);
    let x_1196 : f32 = u_xlat3.x;
    u_xlat42 = (1.0f / x_1196);
    let x_1199 : f32 = u_xlat3.x;
    let x_1200 : i32 = u_xlati38;
    let x_1202 : f32 = x_1167.x_AdditionalLightsAttenuation[x_1200].x;
    u_xlat3.x = (x_1199 * x_1202);
    let x_1206 : f32 = u_xlat3.x;
    let x_1209 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1206) * x_1209) + 1.0f);
    let x_1214 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1214, 0.0f);
    let x_1218 : f32 = u_xlat3.x;
    let x_1220 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1218 * x_1220);
    let x_1224 : f32 = u_xlat3.x;
    let x_1225 : f32 = u_xlat42;
    u_xlat3.x = (x_1224 * x_1225);
    let x_1228 : i32 = u_xlati38;
    let x_1230 : vec4<f32> = x_1167.x_AdditionalLightsSpotDir[x_1228];
    let x_1232 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1230.x, x_1230.y, x_1230.z), x_1232);
    let x_1234 : f32 = u_xlat42;
    let x_1235 : i32 = u_xlati38;
    let x_1237 : f32 = x_1167.x_AdditionalLightsAttenuation[x_1235].z;
    let x_1239 : i32 = u_xlati38;
    let x_1241 : f32 = x_1167.x_AdditionalLightsAttenuation[x_1239].w;
    u_xlat42 = ((x_1234 * x_1237) + x_1241);
    let x_1243 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1243, 0.0f, 1.0f);
    let x_1245 : f32 = u_xlat42;
    let x_1246 : f32 = u_xlat42;
    u_xlat42 = (x_1245 * x_1246);
    let x_1249 : f32 = u_xlat3.x;
    let x_1250 : f32 = u_xlat42;
    u_xlat3.x = (x_1249 * x_1250);
    let x_1254 : f32 = u_xlat18;
    let x_1256 : i32 = u_xlati38;
    let x_1258 : vec4<f32> = x_1167.x_AdditionalLightsColor[x_1256];
    u_xlat11 = (vec3<f32>(x_1254, x_1254, x_1254) * vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
    let x_1261 : vec4<f32> = u_xlat4;
    let x_1263 : vec3<f32> = u_xlat10;
    u_xlat38 = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), x_1263);
    let x_1265 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1265, 0.0f, 1.0f);
    let x_1267 : f32 = u_xlat38;
    let x_1269 : f32 = u_xlat3.x;
    u_xlat38 = (x_1267 * x_1269);
    let x_1271 : f32 = u_xlat38;
    let x_1273 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1271, x_1271, x_1271) * x_1273);
    let x_1275 : vec3<f32> = u_xlat21;
    let x_1276 : f32 = u_xlat30;
    let x_1279 : vec3<f32> = u_xlat15;
    u_xlat21 = ((x_1275 * vec3<f32>(x_1276, x_1276, x_1276)) + x_1279);
    let x_1281 : vec3<f32> = u_xlat21;
    let x_1282 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1281, x_1282);
    let x_1284 : f32 = u_xlat38;
    u_xlat38 = max(x_1284, 1.17549435e-37f);
    let x_1286 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1286);
    let x_1288 : f32 = u_xlat38;
    let x_1290 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1288, x_1288, x_1288) * x_1290);
    let x_1292 : vec4<f32> = u_xlat4;
    let x_1294 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(vec3<f32>(x_1292.x, x_1292.y, x_1292.z), x_1294);
    let x_1296 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1296, 0.0f, 1.0f);
    let x_1298 : vec3<f32> = u_xlat10;
    let x_1299 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1298, x_1299);
    let x_1303 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1303, 0.0f, 1.0f);
    let x_1306 : f32 = u_xlat38;
    let x_1307 : f32 = u_xlat38;
    u_xlat38 = (x_1306 * x_1307);
    let x_1309 : f32 = u_xlat38;
    let x_1311 : f32 = u_xlat9.x;
    u_xlat38 = ((x_1309 * x_1311) + 1.000010014f);
    let x_1315 : f32 = u_xlat3.x;
    let x_1317 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1315 * x_1317);
    let x_1320 : f32 = u_xlat38;
    let x_1321 : f32 = u_xlat38;
    u_xlat38 = (x_1320 * x_1321);
    let x_1324 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1324, 0.100000001f);
    let x_1327 : f32 = u_xlat38;
    let x_1329 : f32 = u_xlat3.x;
    u_xlat38 = (x_1327 * x_1329);
    let x_1331 : f32 = u_xlat41;
    let x_1332 : f32 = u_xlat38;
    u_xlat38 = (x_1331 * x_1332);
    let x_1334 : f32 = u_xlat40;
    let x_1335 : f32 = u_xlat38;
    u_xlat38 = (x_1334 / x_1335);
    let x_1337 : f32 = u_xlat38;
    let x_1340 : vec3<f32> = u_xlat2;
    u_xlat21 = ((vec3<f32>(x_1337, x_1337, x_1337) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1340);
    let x_1342 : vec3<f32> = u_xlat21;
    let x_1343 : vec3<f32> = u_xlat11;
    let x_1345 : vec4<f32> = u_xlat8;
    let x_1347 : vec3<f32> = ((x_1342 * x_1343) + vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
    let x_1348 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);

    continuing {
      let x_1350 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1350 + bitcast<u32>(1i));
    }
  }
  let x_1352 : vec4<f32> = u_xlat5;
  let x_1354 : vec4<f32> = u_xlat6;
  let x_1357 : vec3<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1352.x, x_1352.y, x_1352.z) * vec3<f32>(x_1354.x, x_1354.x, x_1354.x)) + x_1357);
  let x_1359 : vec4<f32> = u_xlat8;
  let x_1361 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1359.x, x_1359.y, x_1359.z) + x_1361);
  let x_1363 : vec4<f32> = vs_INTERP4;
  let x_1365 : vec3<f32> = u_xlat0;
  let x_1367 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1363.w, x_1363.w, x_1363.w) * x_1365) + x_1367);
  let x_1370 : f32 = u_xlat13.x;
  let x_1372 : f32 = u_xlat13.x;
  u_xlat36 = (x_1370 * -(x_1372));
  let x_1375 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1375);
  let x_1377 : vec3<f32> = u_xlat0;
  let x_1380 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1377 + -(vec3<f32>(x_1380.x, x_1380.y, x_1380.z)));
  let x_1386 : f32 = u_xlat36;
  let x_1388 : vec3<f32> = u_xlat0;
  let x_1391 : vec4<f32> = x_66.unity_FogColor;
  let x_1393 : vec3<f32> = ((vec3<f32>(x_1386, x_1386, x_1386) * x_1388) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  let x_1396 : bool = u_xlatb25;
  if (x_1396) {
    let x_1401 : f32 = u_xlat1.x;
    x_1397 = x_1401;
  } else {
    x_1397 = 1.0f;
  }
  let x_1403 : f32 = x_1397;
  SV_Target0.w = x_1403;
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

