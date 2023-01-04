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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(6) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_496 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_851 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1306 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1409 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlatb44 : bool;
  var u_xlatb1 : bool;
  var x_408 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat43 : f32;
  var u_xlatb29 : bool;
  var x_457 : f32;
  var u_xlatb15 : vec3<bool>;
  var x_600 : f32;
  var x_613 : f32;
  var x_625 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_934 : f32;
  var x_945 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati35 : i32;
  var u_xlat45 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1704 : f32;
  var x_1717 : f32;
  var x_1769 : f32;
  var x_1780 : vec3<f32>;
  var x_1920 : f32;
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
  u_xlat42 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat42;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat17 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat42;
  u_xlat42 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat42;
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
  u_xlat42 = dot(x_250, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_255 : f32 = u_xlat42;
  u_xlat42 = (-(x_255) + 4.0f);
  let x_260 : f32 = u_xlat42;
  u_xlatu42 = u32(x_260);
  let x_264 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_264) << bitcast<u32>(2i));
  let x_267 : vec3<f32> = vs_INTERP0;
  let x_270 : i32 = u_xlati42;
  let x_273 : i32 = u_xlati42;
  let x_277 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_270 + 1i) / 4i)][((x_273 + 1i) % 4i)];
  let x_279 : vec3<f32> = (vec3<f32>(x_267.y, x_267.y, x_267.y) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : i32 = u_xlati42;
  let x_284 : i32 = u_xlati42;
  let x_287 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_282 / 4i)][(x_284 % 4i)];
  let x_289 : vec3<f32> = vs_INTERP0;
  let x_292 : vec4<f32> = u_xlat4;
  let x_294 : vec3<f32> = ((vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(x_289.x, x_289.x, x_289.x)) + vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : i32 = u_xlati42;
  let x_300 : i32 = u_xlati42;
  let x_304 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_297 + 2i) / 4i)][((x_300 + 2i) % 4i)];
  let x_306 : vec3<f32> = vs_INTERP0;
  let x_309 : vec4<f32> = u_xlat4;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.z, x_306.z, x_306.z)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : i32 = u_xlati42;
  let x_319 : i32 = u_xlati42;
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
  u_xlat42 = x_346;
  let x_350 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat44 = (-(x_350) + 1.0f);
  let x_353 : f32 = u_xlat42;
  let x_355 : f32 = x_138.x_MainLightShadowParams.x;
  let x_357 : f32 = u_xlat44;
  u_xlat42 = ((x_353 * x_355) + x_357);
  let x_361 : f32 = u_xlat4.z;
  u_xlatb44 = (0.0f >= x_361);
  let x_364 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_364 >= 1.0f);
  let x_367 : bool = u_xlatb44;
  let x_369 : bool = u_xlatb4.x;
  u_xlatb44 = (x_367 | x_369);
  let x_371 : bool = u_xlatb44;
  let x_372 : f32 = u_xlat42;
  u_xlat42 = select(x_372, 1.0f, x_371);
  let x_374 : vec3<f32> = u_xlat0;
  let x_376 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_374, -(vec3<f32>(x_376.x, x_376.y, x_376.z)));
  let x_382 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_382, 0.0f, 1.0f);
  let x_385 : f32 = u_xlat42;
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
  u_xlat15.x = (x_418 + -0.400000006f);
  let x_424 : f32 = u_xlat1.w;
  u_xlat29 = dpdxCoarse(x_424);
  let x_428 : f32 = u_xlat1.w;
  u_xlat43 = dpdyCoarse(x_428);
  let x_430 : f32 = u_xlat43;
  let x_432 : f32 = u_xlat29;
  u_xlat29 = (abs(x_430) + abs(x_432));
  let x_435 : f32 = u_xlat29;
  u_xlat29 = max(x_435, 0.0001f);
  let x_439 : f32 = u_xlat15.x;
  let x_440 : f32 = u_xlat29;
  u_xlat15.x = (x_439 / x_440);
  let x_444 : f32 = u_xlat15.x;
  u_xlat15.x = (x_444 + 0.5f);
  let x_449 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_449, 0.0f, 1.0f);
  let x_454 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb29 = !((x_454 == 0.0f));
  let x_456 : bool = u_xlatb29;
  if (x_456) {
    let x_461 : f32 = u_xlat15.x;
    x_457 = x_461;
  } else {
    let x_464 : f32 = u_xlat1.x;
    x_457 = x_464;
  }
  let x_465 : f32 = x_457;
  u_xlat1.x = x_465;
  let x_468 : f32 = u_xlat1.x;
  u_xlat15.x = (x_468 + -0.0001f);
  let x_476 : f32 = u_xlat15.x;
  u_xlatb15.x = (x_476 < 0.0f);
  let x_480 : bool = u_xlatb15.x;
  if (((select(0i, 1i, x_480) * -1i) != 0i)) {
    discard;
  }
  let x_490 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_490);
  let x_498 : f32 = x_496.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_498 >= 0.0f);
  let x_502 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_502);
  let x_506 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_506);
  let x_510 : f32 = u_xlat15.z;
  let x_512 : f32 = u_xlat15.x;
  u_xlat15.x = (x_510 * x_512);
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
  let x_533 : vec3<f32> = u_xlat15;
  let x_535 : vec4<f32> = u_xlat4;
  let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.x, x_533.x) * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec3<f32> = u_xlat17;
  let x_542 : vec4<f32> = u_xlat4;
  let x_544 : vec3<f32> = (vec3<f32>(x_540.y, x_540.y, x_540.y) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec3<f32> = u_xlat17;
  let x_549 : vec4<f32> = vs_INTERP2;
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec3<f32> = u_xlat17;
  let x_559 : vec3<f32> = vs_INTERP1;
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat17 = ((vec3<f32>(x_557.z, x_557.z, x_557.z) * x_559) + vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec3<f32> = u_xlat17;
  let x_565 : vec3<f32> = u_xlat17;
  u_xlat15.x = dot(x_564, x_565);
  let x_569 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_569);
  let x_572 : vec3<f32> = u_xlat15;
  let x_574 : vec3<f32> = u_xlat17;
  let x_575 : vec3<f32> = (vec3<f32>(x_572.x, x_572.x, x_572.x) * x_574);
  let x_576 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_579 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb15.x = (x_579 == 0.0f);
  let x_582 : vec3<f32> = vs_INTERP0;
  let x_587 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (-(x_582) + x_587);
  let x_589 : vec3<f32> = u_xlat17;
  let x_590 : vec3<f32> = u_xlat17;
  u_xlat43 = dot(x_589, x_590);
  let x_592 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_592);
  let x_594 : f32 = u_xlat43;
  let x_596 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_594, x_594, x_594) * x_596);
  let x_599 : bool = u_xlatb15.x;
  if (x_599) {
    let x_604 : f32 = u_xlat17.x;
    x_600 = x_604;
  } else {
    let x_608 : f32 = x_66.unity_MatrixV[0i].z;
    x_600 = x_608;
  }
  let x_609 : f32 = x_600;
  u_xlat5.x = x_609;
  let x_612 : bool = u_xlatb15.x;
  if (x_612) {
    let x_617 : f32 = u_xlat17.y;
    x_613 = x_617;
  } else {
    let x_620 : f32 = x_66.unity_MatrixV[1i].z;
    x_613 = x_620;
  }
  let x_621 : f32 = x_613;
  u_xlat5.y = x_621;
  let x_624 : bool = u_xlatb15.x;
  if (x_624) {
    let x_629 : f32 = u_xlat17.z;
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
  u_xlat15.x = (x_679 * x_681);
  let x_685 : f32 = u_xlat4.x;
  let x_687 : f32 = u_xlat4.x;
  let x_690 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_685 * x_687) + -(x_690));
  let x_696 : vec4<f32> = x_496.unity_SHC;
  let x_698 : vec3<f32> = u_xlat15;
  let x_701 : vec4<f32> = u_xlat8;
  u_xlat17 = ((vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_698.x, x_698.x, x_698.x)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec3<f32> = u_xlat17;
  let x_705 : vec3<f32> = u_xlat6;
  u_xlat17 = (x_704 + x_705);
  let x_707 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_707, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_711 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
  let x_716 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_712.x, x_712.y));
  let x_717 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_716.x, x_717.y, x_716.y);
  let x_719 : vec3<f32> = u_xlat15;
  let x_721 : vec4<f32> = hlslcc_FragCoord;
  let x_723 : vec2<f32> = (vec2<f32>(x_719.x, x_719.z) * vec2<f32>(x_721.x, x_721.y));
  let x_724 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_723.x, x_723.y, x_724.z);
  let x_727 : f32 = u_xlat6.y;
  let x_730 : f32 = x_66.x_ScaleBiasRt.x;
  let x_733 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_727 * x_730) + x_733);
  let x_737 : f32 = u_xlat15.x;
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
  u_xlat15.x = (-(x_757) + 1.0f);
  let x_762 : f32 = u_xlat15.x;
  let x_764 : f32 = u_xlat15.x;
  u_xlat43 = (x_762 * x_764);
  let x_766 : f32 = u_xlat43;
  u_xlat43 = max(x_766, 0.0078125f);
  let x_769 : f32 = u_xlat43;
  let x_770 : f32 = u_xlat43;
  u_xlat44 = (x_769 * x_770);
  let x_773 : f32 = u_xlat3.x;
  u_xlat3.x = (x_773 + 0.040000021f);
  let x_778 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_778, 1.0f);
  let x_782 : f32 = u_xlat43;
  u_xlat46 = ((x_782 * 4.0f) + 2.0f);
  let x_791 : vec3<f32> = u_xlat6;
  let x_794 : f32 = x_66.x_GlobalMipBias.x;
  let x_795 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_791.x, x_791.z), x_794);
  u_xlat47 = x_795.x;
  let x_797 : f32 = u_xlat47;
  u_xlat6.x = (x_797 + -1.0f);
  let x_801 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_803 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_801 * x_803) + 1.0f);
  let x_807 : f32 = u_xlat47;
  let x_809 : f32 = vs_INTERP4.w;
  u_xlat47 = min(x_807, x_809);
  let x_812 : vec3<f32> = vs_INTERP0;
  let x_814 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_812 + -(x_814));
  let x_817 : vec3<f32> = u_xlat20;
  let x_818 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_817, x_818);
  let x_822 : f32 = u_xlat20.x;
  let x_824 : f32 = x_138.x_MainLightShadowParams.z;
  let x_827 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_822 * x_824) + x_827);
  let x_831 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_831, 0.0f, 1.0f);
  let x_835 : f32 = u_xlat42;
  u_xlat34 = (-(x_835) + 1.0f);
  let x_839 : f32 = u_xlat20.x;
  let x_840 : f32 = u_xlat34;
  let x_842 : f32 = u_xlat42;
  u_xlat42 = ((x_839 * x_840) + x_842);
  let x_853 : f32 = x_851.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_853 == -1.0f));
  let x_857 : bool = u_xlatb20.x;
  if (x_857) {
    let x_860 : vec3<f32> = vs_INTERP0;
    let x_863 : vec4<f32> = x_851.x_MainLightWorldToLight[1i];
    let x_865 : vec2<f32> = (vec2<f32>(x_860.y, x_860.y) * vec2<f32>(x_863.x, x_863.y));
    let x_866 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_865.x, x_865.y, x_866.z);
    let x_869 : vec4<f32> = x_851.x_MainLightWorldToLight[0i];
    let x_871 : vec3<f32> = vs_INTERP0;
    let x_874 : vec3<f32> = u_xlat20;
    let x_876 : vec2<f32> = ((vec2<f32>(x_869.x, x_869.y) * vec2<f32>(x_871.x, x_871.x)) + vec2<f32>(x_874.x, x_874.y));
    let x_877 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_876.x, x_876.y, x_877.z);
    let x_880 : vec4<f32> = x_851.x_MainLightWorldToLight[2i];
    let x_882 : vec3<f32> = vs_INTERP0;
    let x_885 : vec3<f32> = u_xlat20;
    let x_887 : vec2<f32> = ((vec2<f32>(x_880.x, x_880.y) * vec2<f32>(x_882.z, x_882.z)) + vec2<f32>(x_885.x, x_885.y));
    let x_888 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_887.x, x_887.y, x_888.z);
    let x_890 : vec3<f32> = u_xlat20;
    let x_893 : vec4<f32> = x_851.x_MainLightWorldToLight[3i];
    let x_895 : vec2<f32> = (vec2<f32>(x_890.x, x_890.y) + vec2<f32>(x_893.x, x_893.y));
    let x_896 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_895.x, x_895.y, x_896.z);
    let x_898 : vec3<f32> = u_xlat20;
    let x_902 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_903 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_902.x, x_902.y, x_903.z);
    let x_910 : vec3<f32> = u_xlat20;
    let x_913 : f32 = x_66.x_GlobalMipBias.x;
    let x_914 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_910.x, x_910.y), x_913);
    u_xlat7 = x_914;
    let x_916 : f32 = x_851.x_MainLightCookieTextureFormat;
    let x_918 : f32 = x_851.x_MainLightCookieTextureFormat;
    let x_920 : f32 = x_851.x_MainLightCookieTextureFormat;
    let x_922 : f32 = x_851.x_MainLightCookieTextureFormat;
    let x_923 : vec4<f32> = vec4<f32>(x_916, x_918, x_920, x_922);
    let x_930 : vec4<bool> = (vec4<f32>(x_923.x, x_923.y, x_923.z, x_923.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_930.x, x_930.y);
    let x_933 : bool = u_xlatb20.y;
    if (x_933) {
      let x_938 : f32 = u_xlat7.w;
      x_934 = x_938;
    } else {
      let x_941 : f32 = u_xlat7.x;
      x_934 = x_941;
    }
    let x_942 : f32 = x_934;
    u_xlat34 = x_942;
    let x_944 : bool = u_xlatb20.x;
    if (x_944) {
      let x_948 : vec4<f32> = u_xlat7;
      x_945 = vec3<f32>(x_948.x, x_948.y, x_948.z);
    } else {
      let x_951 : f32 = u_xlat34;
      x_945 = vec3<f32>(x_951, x_951, x_951);
    }
    let x_953 : vec3<f32> = x_945;
    u_xlat20 = x_953;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_958 : vec3<f32> = u_xlat20;
  let x_960 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_958 * vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec3<f32> = u_xlat6;
  let x_965 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_963.x, x_963.x, x_963.x) * x_965);
  let x_967 : vec4<f32> = u_xlat5;
  let x_970 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(vec3<f32>(x_967.x, x_967.y, x_967.z)), vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_975 : f32 = u_xlat7.x;
  let x_977 : f32 = u_xlat7.x;
  u_xlat7.x = (x_975 + x_977);
  let x_980 : vec4<f32> = u_xlat4;
  let x_982 : vec4<f32> = u_xlat7;
  let x_986 : vec4<f32> = u_xlat5;
  let x_989 : vec3<f32> = ((vec3<f32>(x_980.x, x_980.y, x_980.z) * -(vec3<f32>(x_982.x, x_982.x, x_982.x))) + -(vec3<f32>(x_986.x, x_986.y, x_986.z)));
  let x_990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_993 : vec4<f32> = u_xlat4;
  let x_995 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : f32 = u_xlat49;
  u_xlat49 = clamp(x_998, 0.0f, 1.0f);
  let x_1000 : f32 = u_xlat49;
  u_xlat49 = (-(x_1000) + 1.0f);
  let x_1003 : f32 = u_xlat49;
  let x_1004 : f32 = u_xlat49;
  u_xlat49 = (x_1003 * x_1004);
  let x_1006 : f32 = u_xlat49;
  let x_1007 : f32 = u_xlat49;
  u_xlat49 = (x_1006 * x_1007);
  let x_1010 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_1010) * 0.699999988f) + 1.700000048f);
  let x_1018 : f32 = u_xlat15.x;
  let x_1020 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1018 * x_1020);
  let x_1024 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1024 * 6.0f);
  let x_1036 : vec4<f32> = u_xlat7;
  let x_1039 : f32 = u_xlat15.x;
  let x_1040 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1036.x, x_1036.y, x_1036.z), x_1039);
  u_xlat8 = x_1040;
  let x_1042 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1042 + -1.0f);
  let x_1046 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_1048 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1046 * x_1048) + 1.0f);
  let x_1053 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1053, 0.0f);
  let x_1057 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1057);
  let x_1061 : f32 = u_xlat15.x;
  let x_1063 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1061 * x_1063);
  let x_1067 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1067);
  let x_1071 : f32 = u_xlat15.x;
  let x_1073 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1071 * x_1073);
  let x_1076 : vec4<f32> = u_xlat8;
  let x_1078 : vec3<f32> = u_xlat15;
  let x_1080 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078.x, x_1078.x, x_1078.x));
  let x_1081 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : f32 = u_xlat43;
  let x_1085 : f32 = u_xlat43;
  let x_1089 : vec2<f32> = ((vec2<f32>(x_1083, x_1083) * vec2<f32>(x_1085, x_1085)) + vec2<f32>(-1.0f, 1.0f));
  let x_1090 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1089.x, x_1090.y, x_1089.y);
  let x_1093 : f32 = u_xlat15.z;
  u_xlat43 = (1.0f / x_1093);
  let x_1096 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1096 + -0.039999999f);
  let x_1100 : f32 = u_xlat49;
  let x_1102 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1100 * x_1102) + 0.039999999f);
  let x_1107 : f32 = u_xlat43;
  let x_1109 : f32 = u_xlat3.x;
  u_xlat43 = (x_1107 * x_1109);
  let x_1111 : f32 = u_xlat43;
  let x_1113 : vec4<f32> = u_xlat7;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1111, x_1111, x_1111) * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec3<f32> = u_xlat17;
  let x_1119 : vec3<f32> = u_xlat2;
  let x_1121 : vec4<f32> = u_xlat7;
  let x_1123 : vec3<f32> = ((x_1118 * x_1119) + vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1126 : f32 = u_xlat42;
  let x_1128 : f32 = x_496.unity_LightData.z;
  u_xlat42 = (x_1126 * x_1128);
  let x_1130 : vec4<f32> = u_xlat4;
  let x_1133 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1130.x, x_1130.y, x_1130.z), vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1136, 0.0f, 1.0f);
  let x_1138 : f32 = u_xlat42;
  let x_1139 : f32 = u_xlat43;
  u_xlat42 = (x_1138 * x_1139);
  let x_1141 : f32 = u_xlat42;
  let x_1143 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1141, x_1141, x_1141) * x_1143);
  let x_1145 : vec4<f32> = u_xlat5;
  let x_1148 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1145.x, x_1145.y, x_1145.z) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat7;
  let x_1155 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1153.x, x_1153.y, x_1153.z), vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : f32 = u_xlat42;
  u_xlat42 = max(x_1158, 1.17549435e-37f);
  let x_1161 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1161);
  let x_1163 : f32 = u_xlat42;
  let x_1165 : vec4<f32> = u_xlat7;
  let x_1167 : vec3<f32> = (vec3<f32>(x_1163, x_1163, x_1163) * vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec4<f32> = u_xlat4;
  let x_1172 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1175 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1175, 0.0f, 1.0f);
  let x_1178 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1180 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1178.x, x_1178.y, x_1178.z), vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1183, 0.0f, 1.0f);
  let x_1185 : f32 = u_xlat42;
  let x_1186 : f32 = u_xlat42;
  u_xlat42 = (x_1185 * x_1186);
  let x_1188 : f32 = u_xlat42;
  let x_1190 : f32 = u_xlat15.x;
  u_xlat42 = ((x_1188 * x_1190) + 1.000010014f);
  let x_1194 : f32 = u_xlat43;
  let x_1195 : f32 = u_xlat43;
  u_xlat43 = (x_1194 * x_1195);
  let x_1197 : f32 = u_xlat42;
  let x_1198 : f32 = u_xlat42;
  u_xlat42 = (x_1197 * x_1198);
  let x_1200 : f32 = u_xlat43;
  u_xlat43 = max(x_1200, 0.100000001f);
  let x_1203 : f32 = u_xlat42;
  let x_1204 : f32 = u_xlat43;
  u_xlat42 = (x_1203 * x_1204);
  let x_1206 : f32 = u_xlat46;
  let x_1207 : f32 = u_xlat42;
  u_xlat42 = (x_1206 * x_1207);
  let x_1209 : f32 = u_xlat44;
  let x_1210 : f32 = u_xlat42;
  u_xlat42 = (x_1209 / x_1210);
  let x_1212 : f32 = u_xlat42;
  let x_1216 : vec3<f32> = u_xlat2;
  let x_1217 : vec3<f32> = ((vec3<f32>(x_1212, x_1212, x_1212) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1216);
  let x_1218 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec3<f32> = u_xlat20;
  let x_1221 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1220 * vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1226 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1228 : f32 = x_496.unity_LightData.y;
  u_xlat42 = min(x_1226, x_1228);
  let x_1230 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1230));
  let x_1235 : f32 = x_851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1237 : f32 = x_851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1239 : f32 = x_851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1241 : f32 = x_851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1242 : vec4<f32> = vec4<f32>(x_1235, x_1237, x_1239, x_1241);
  let x_1248 : vec4<bool> = (vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1242.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1248.x, x_1248.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1259 : u32 = u_xlatu_loop_1;
    let x_1260 : u32 = u_xlatu42;
    if ((x_1259 < x_1260)) {
    } else {
      break;
    }
    let x_1263 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1263 >> 2u);
    let x_1266 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1266 & 3u));
    let x_1270 : u32 = u_xlatu45;
    let x_1273 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1270)];
    let x_1283 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1288 : vec4<u32> = indexable[x_1283];
    u_xlat45 = dot(x_1273, bitcast<vec4<f32>>(x_1288));
    let x_1291 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1291));
    let x_1295 : vec3<f32> = vs_INTERP0;
    let x_1307 : u32 = u_xlatu45;
    let x_1310 : vec4<f32> = x_1306.x_AdditionalLightsPosition[bitcast<i32>(x_1307)];
    let x_1313 : u32 = u_xlatu45;
    let x_1316 : vec4<f32> = x_1306.x_AdditionalLightsPosition[bitcast<i32>(x_1313)];
    u_xlat9 = ((-(x_1295) * vec3<f32>(x_1310.w, x_1310.w, x_1310.w)) + vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
    let x_1320 : vec3<f32> = u_xlat9;
    let x_1321 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1320, x_1321);
    let x_1323 : f32 = u_xlat35;
    u_xlat35 = max(x_1323, 6.10351562e-05f);
    let x_1326 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1326);
    let x_1329 : f32 = u_xlat49;
    let x_1331 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1329, x_1329, x_1329) * x_1331);
    let x_1334 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1334);
    let x_1336 : f32 = u_xlat35;
    let x_1337 : u32 = u_xlatu45;
    let x_1340 : f32 = x_1306.x_AdditionalLightsAttenuation[bitcast<i32>(x_1337)].x;
    u_xlat35 = (x_1336 * x_1340);
    let x_1342 : f32 = u_xlat35;
    let x_1344 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1342) * x_1344) + 1.0f);
    let x_1347 : f32 = u_xlat35;
    u_xlat35 = max(x_1347, 0.0f);
    let x_1349 : f32 = u_xlat35;
    let x_1350 : f32 = u_xlat35;
    u_xlat35 = (x_1349 * x_1350);
    let x_1352 : f32 = u_xlat35;
    let x_1353 : f32 = u_xlat50;
    u_xlat35 = (x_1352 * x_1353);
    let x_1355 : u32 = u_xlatu45;
    let x_1358 : vec4<f32> = x_1306.x_AdditionalLightsSpotDir[bitcast<i32>(x_1355)];
    let x_1360 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1358.x, x_1358.y, x_1358.z), x_1360);
    let x_1362 : f32 = u_xlat50;
    let x_1363 : u32 = u_xlatu45;
    let x_1366 : f32 = x_1306.x_AdditionalLightsAttenuation[bitcast<i32>(x_1363)].z;
    let x_1368 : u32 = u_xlatu45;
    let x_1371 : f32 = x_1306.x_AdditionalLightsAttenuation[bitcast<i32>(x_1368)].w;
    u_xlat50 = ((x_1362 * x_1366) + x_1371);
    let x_1373 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1373, 0.0f, 1.0f);
    let x_1375 : f32 = u_xlat50;
    let x_1376 : f32 = u_xlat50;
    u_xlat50 = (x_1375 * x_1376);
    let x_1378 : f32 = u_xlat35;
    let x_1379 : f32 = u_xlat50;
    u_xlat35 = (x_1378 * x_1379);
    let x_1382 : u32 = u_xlatu45;
    u_xlatu50 = (x_1382 >> 5u);
    let x_1385 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1385) & 31i)));
    let x_1391 : i32 = u_xlati51;
    let x_1393 : u32 = u_xlatu50;
    let x_1396 : f32 = x_851.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1393)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1391) & bitcast<u32>(x_1396)));
    let x_1400 : i32 = u_xlati50;
    if ((x_1400 != 0i)) {
      let x_1410 : u32 = u_xlatu45;
      let x_1413 : f32 = x_1409.x_AdditionalLightsLightTypes[bitcast<i32>(x_1410)].el;
      u_xlati50 = i32(x_1413);
      let x_1415 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1415 != 0i));
      let x_1419 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1419) << bitcast<u32>(2i));
      let x_1422 : i32 = u_xlati51;
      if ((x_1422 != 0i)) {
        let x_1427 : vec3<f32> = vs_INTERP0;
        let x_1429 : i32 = u_xlati52;
        let x_1432 : i32 = u_xlati52;
        let x_1436 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1429 + 1i) / 4i)][((x_1432 + 1i) % 4i)];
        let x_1438 : vec3<f32> = (vec3<f32>(x_1427.y, x_1427.y, x_1427.y) * vec3<f32>(x_1436.x, x_1436.y, x_1436.w));
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
        let x_1441 : i32 = u_xlati52;
        let x_1443 : i32 = u_xlati52;
        let x_1446 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[(x_1441 / 4i)][(x_1443 % 4i)];
        let x_1448 : vec3<f32> = vs_INTERP0;
        let x_1451 : vec4<f32> = u_xlat11;
        let x_1453 : vec3<f32> = ((vec3<f32>(x_1446.x, x_1446.y, x_1446.w) * vec3<f32>(x_1448.x, x_1448.x, x_1448.x)) + vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
        let x_1454 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
        let x_1456 : i32 = u_xlati52;
        let x_1459 : i32 = u_xlati52;
        let x_1463 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1456 + 2i) / 4i)][((x_1459 + 2i) % 4i)];
        let x_1465 : vec3<f32> = vs_INTERP0;
        let x_1468 : vec4<f32> = u_xlat11;
        let x_1470 : vec3<f32> = ((vec3<f32>(x_1463.x, x_1463.y, x_1463.w) * vec3<f32>(x_1465.z, x_1465.z, x_1465.z)) + vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
        let x_1471 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
        let x_1473 : vec4<f32> = u_xlat11;
        let x_1475 : i32 = u_xlati52;
        let x_1478 : i32 = u_xlati52;
        let x_1482 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1475 + 3i) / 4i)][((x_1478 + 3i) % 4i)];
        let x_1484 : vec3<f32> = (vec3<f32>(x_1473.x, x_1473.y, x_1473.z) + vec3<f32>(x_1482.x, x_1482.y, x_1482.w));
        let x_1485 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1484.x, x_1484.y, x_1484.z, x_1485.w);
        let x_1487 : vec4<f32> = u_xlat11;
        let x_1489 : vec4<f32> = u_xlat11;
        let x_1491 : vec2<f32> = (vec2<f32>(x_1487.x, x_1487.y) / vec2<f32>(x_1489.z, x_1489.z));
        let x_1492 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1491.x, x_1491.y, x_1492.z, x_1492.w);
        let x_1494 : vec4<f32> = u_xlat11;
        let x_1497 : vec2<f32> = ((vec2<f32>(x_1494.x, x_1494.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1498 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1497.x, x_1497.y, x_1498.z, x_1498.w);
        let x_1500 : vec4<f32> = u_xlat11;
        let x_1504 : vec2<f32> = clamp(vec2<f32>(x_1500.x, x_1500.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1505 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1504.x, x_1504.y, x_1505.z, x_1505.w);
        let x_1507 : u32 = u_xlatu45;
        let x_1510 : vec4<f32> = x_1409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1507)];
        let x_1512 : vec4<f32> = u_xlat11;
        let x_1515 : u32 = u_xlatu45;
        let x_1518 : vec4<f32> = x_1409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1515)];
        let x_1520 : vec2<f32> = ((vec2<f32>(x_1510.x, x_1510.y) * vec2<f32>(x_1512.x, x_1512.y)) + vec2<f32>(x_1518.z, x_1518.w));
        let x_1521 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
      } else {
        let x_1525 : i32 = u_xlati50;
        u_xlatb50 = (x_1525 == 1i);
        let x_1527 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1527);
        let x_1529 : i32 = u_xlati50;
        if ((x_1529 != 0i)) {
          let x_1535 : vec3<f32> = vs_INTERP0;
          let x_1537 : i32 = u_xlati52;
          let x_1540 : i32 = u_xlati52;
          let x_1544 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1537 + 1i) / 4i)][((x_1540 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1535.y, x_1535.y) * vec2<f32>(x_1544.x, x_1544.y));
          let x_1547 : i32 = u_xlati52;
          let x_1549 : i32 = u_xlati52;
          let x_1552 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[(x_1547 / 4i)][(x_1549 % 4i)];
          let x_1554 : vec3<f32> = vs_INTERP0;
          let x_1557 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1552.x, x_1552.y) * vec2<f32>(x_1554.x, x_1554.x)) + x_1557);
          let x_1559 : i32 = u_xlati52;
          let x_1562 : i32 = u_xlati52;
          let x_1566 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1559 + 2i) / 4i)][((x_1562 + 2i) % 4i)];
          let x_1568 : vec3<f32> = vs_INTERP0;
          let x_1571 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1566.x, x_1566.y) * vec2<f32>(x_1568.z, x_1568.z)) + x_1571);
          let x_1573 : vec2<f32> = u_xlat39;
          let x_1574 : i32 = u_xlati52;
          let x_1577 : i32 = u_xlati52;
          let x_1581 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1574 + 3i) / 4i)][((x_1577 + 3i) % 4i)];
          u_xlat39 = (x_1573 + vec2<f32>(x_1581.x, x_1581.y));
          let x_1584 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1584 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1587 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1587);
          let x_1589 : u32 = u_xlatu45;
          let x_1592 : vec4<f32> = x_1409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1589)];
          let x_1594 : vec2<f32> = u_xlat39;
          let x_1596 : u32 = u_xlatu45;
          let x_1599 : vec4<f32> = x_1409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1596)];
          let x_1601 : vec2<f32> = ((vec2<f32>(x_1592.x, x_1592.y) * x_1594) + vec2<f32>(x_1599.z, x_1599.w));
          let x_1602 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
        } else {
          let x_1606 : vec3<f32> = vs_INTERP0;
          let x_1608 : i32 = u_xlati52;
          let x_1611 : i32 = u_xlati52;
          let x_1615 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1608 + 1i) / 4i)][((x_1611 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1606.y, x_1606.y, x_1606.y, x_1606.y) * x_1615);
          let x_1617 : i32 = u_xlati52;
          let x_1619 : i32 = u_xlati52;
          let x_1622 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[(x_1617 / 4i)][(x_1619 % 4i)];
          let x_1623 : vec3<f32> = vs_INTERP0;
          let x_1626 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1622 * vec4<f32>(x_1623.x, x_1623.x, x_1623.x, x_1623.x)) + x_1626);
          let x_1628 : i32 = u_xlati52;
          let x_1631 : i32 = u_xlati52;
          let x_1635 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1628 + 2i) / 4i)][((x_1631 + 2i) % 4i)];
          let x_1636 : vec3<f32> = vs_INTERP0;
          let x_1639 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1635 * vec4<f32>(x_1636.z, x_1636.z, x_1636.z, x_1636.z)) + x_1639);
          let x_1641 : vec4<f32> = u_xlat12;
          let x_1642 : i32 = u_xlati52;
          let x_1645 : i32 = u_xlati52;
          let x_1649 : vec4<f32> = x_1409.x_AdditionalLightsWorldToLights[((x_1642 + 3i) / 4i)][((x_1645 + 3i) % 4i)];
          u_xlat12 = (x_1641 + x_1649);
          let x_1651 : vec4<f32> = u_xlat12;
          let x_1653 : vec4<f32> = u_xlat12;
          let x_1655 : vec3<f32> = (vec3<f32>(x_1651.x, x_1651.y, x_1651.z) / vec3<f32>(x_1653.w, x_1653.w, x_1653.w));
          let x_1656 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
          let x_1658 : vec4<f32> = u_xlat12;
          let x_1660 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1658.x, x_1658.y, x_1658.z), vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
          let x_1663 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1663);
          let x_1665 : f32 = u_xlat50;
          let x_1667 : vec4<f32> = u_xlat12;
          let x_1669 : vec3<f32> = (vec3<f32>(x_1665, x_1665, x_1665) * vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
          let x_1670 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
          let x_1672 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1672.x, x_1672.y, x_1672.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1677 : f32 = u_xlat50;
          u_xlat50 = max(x_1677, 0.000001f);
          let x_1680 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1680);
          let x_1683 : f32 = u_xlat50;
          let x_1685 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1683, x_1683, x_1683) * vec3<f32>(x_1685.z, x_1685.x, x_1685.y));
          let x_1689 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1689);
          let x_1693 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1693, 0.0f, 1.0f);
          let x_1697 : vec3<f32> = u_xlat13;
          let x_1700 : vec4<bool> = (vec4<f32>(x_1697.y, x_1697.z, x_1697.y, x_1697.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1700.x, x_1700.y);
          let x_1703 : bool = u_xlatb39.x;
          if (x_1703) {
            let x_1708 : f32 = u_xlat13.x;
            x_1704 = x_1708;
          } else {
            let x_1711 : f32 = u_xlat13.x;
            x_1704 = -(x_1711);
          }
          let x_1713 : f32 = x_1704;
          u_xlat39.x = x_1713;
          let x_1716 : bool = u_xlatb39.y;
          if (x_1716) {
            let x_1721 : f32 = u_xlat13.x;
            x_1717 = x_1721;
          } else {
            let x_1724 : f32 = u_xlat13.x;
            x_1717 = -(x_1724);
          }
          let x_1726 : f32 = x_1717;
          u_xlat39.y = x_1726;
          let x_1728 : vec4<f32> = u_xlat12;
          let x_1730 : f32 = u_xlat50;
          let x_1733 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1730, x_1730)) + x_1733);
          let x_1735 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1735 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1738 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1738, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1742 : u32 = u_xlatu45;
          let x_1745 : vec4<f32> = x_1409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1742)];
          let x_1747 : vec2<f32> = u_xlat39;
          let x_1749 : u32 = u_xlatu45;
          let x_1752 : vec4<f32> = x_1409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1749)];
          let x_1754 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.y) * x_1747) + vec2<f32>(x_1752.z, x_1752.w));
          let x_1755 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
        }
      }
      let x_1762 : vec4<f32> = u_xlat11;
      let x_1765 : f32 = x_66.x_GlobalMipBias.x;
      let x_1766 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1762.x, x_1762.y), x_1765);
      u_xlat11 = x_1766;
      let x_1768 : bool = u_xlatb7.y;
      if (x_1768) {
        let x_1773 : f32 = u_xlat11.w;
        x_1769 = x_1773;
      } else {
        let x_1776 : f32 = u_xlat11.x;
        x_1769 = x_1776;
      }
      let x_1777 : f32 = x_1769;
      u_xlat50 = x_1777;
      let x_1779 : bool = u_xlatb7.x;
      if (x_1779) {
        let x_1783 : vec4<f32> = u_xlat11;
        x_1780 = vec3<f32>(x_1783.x, x_1783.y, x_1783.z);
      } else {
        let x_1786 : f32 = u_xlat50;
        x_1780 = vec3<f32>(x_1786, x_1786, x_1786);
      }
      let x_1788 : vec3<f32> = x_1780;
      let x_1789 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1795 : vec4<f32> = u_xlat11;
    let x_1797 : u32 = u_xlatu45;
    let x_1800 : vec4<f32> = x_1306.x_AdditionalLightsColor[bitcast<i32>(x_1797)];
    let x_1802 : vec3<f32> = (vec3<f32>(x_1795.x, x_1795.y, x_1795.z) * vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
    let x_1803 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
    let x_1805 : vec3<f32> = u_xlat6;
    let x_1807 : vec4<f32> = u_xlat11;
    let x_1809 : vec3<f32> = (vec3<f32>(x_1805.x, x_1805.x, x_1805.x) * vec3<f32>(x_1807.x, x_1807.y, x_1807.z));
    let x_1810 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1809.x, x_1809.y, x_1809.z, x_1810.w);
    let x_1812 : vec4<f32> = u_xlat4;
    let x_1814 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1812.x, x_1812.y, x_1812.z), x_1814);
    let x_1816 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1816, 0.0f, 1.0f);
    let x_1818 : f32 = u_xlat45;
    let x_1819 : f32 = u_xlat35;
    u_xlat45 = (x_1818 * x_1819);
    let x_1821 : f32 = u_xlat45;
    let x_1823 : vec4<f32> = u_xlat11;
    let x_1825 : vec3<f32> = (vec3<f32>(x_1821, x_1821, x_1821) * vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
    let x_1826 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
    let x_1828 : vec3<f32> = u_xlat9;
    let x_1829 : f32 = u_xlat49;
    let x_1832 : vec4<f32> = u_xlat5;
    u_xlat9 = ((x_1828 * vec3<f32>(x_1829, x_1829, x_1829)) + vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
    let x_1835 : vec3<f32> = u_xlat9;
    let x_1836 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1835, x_1836);
    let x_1838 : f32 = u_xlat45;
    u_xlat45 = max(x_1838, 1.17549435e-37f);
    let x_1840 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1840);
    let x_1842 : f32 = u_xlat45;
    let x_1844 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1842, x_1842, x_1842) * x_1844);
    let x_1846 : vec4<f32> = u_xlat4;
    let x_1848 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1846.x, x_1846.y, x_1846.z), x_1848);
    let x_1850 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1850, 0.0f, 1.0f);
    let x_1852 : vec3<f32> = u_xlat10;
    let x_1853 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1852, x_1853);
    let x_1855 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1855, 0.0f, 1.0f);
    let x_1857 : f32 = u_xlat45;
    let x_1858 : f32 = u_xlat45;
    u_xlat45 = (x_1857 * x_1858);
    let x_1860 : f32 = u_xlat45;
    let x_1862 : f32 = u_xlat15.x;
    u_xlat45 = ((x_1860 * x_1862) + 1.000010014f);
    let x_1865 : f32 = u_xlat35;
    let x_1866 : f32 = u_xlat35;
    u_xlat35 = (x_1865 * x_1866);
    let x_1868 : f32 = u_xlat45;
    let x_1869 : f32 = u_xlat45;
    u_xlat45 = (x_1868 * x_1869);
    let x_1871 : f32 = u_xlat35;
    u_xlat35 = max(x_1871, 0.100000001f);
    let x_1873 : f32 = u_xlat45;
    let x_1874 : f32 = u_xlat35;
    u_xlat45 = (x_1873 * x_1874);
    let x_1876 : f32 = u_xlat46;
    let x_1877 : f32 = u_xlat45;
    u_xlat45 = (x_1876 * x_1877);
    let x_1879 : f32 = u_xlat44;
    let x_1880 : f32 = u_xlat45;
    u_xlat45 = (x_1879 / x_1880);
    let x_1882 : f32 = u_xlat45;
    let x_1885 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1882, x_1882, x_1882) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1885);
    let x_1887 : vec3<f32> = u_xlat9;
    let x_1888 : vec4<f32> = u_xlat11;
    let x_1891 : vec4<f32> = u_xlat8;
    let x_1893 : vec3<f32> = ((x_1887 * vec3<f32>(x_1888.x, x_1888.y, x_1888.z)) + vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
    let x_1894 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);

    continuing {
      let x_1896 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1896 + bitcast<u32>(1i));
    }
  }
  let x_1898 : vec4<f32> = u_xlat3;
  let x_1900 : f32 = u_xlat47;
  let x_1903 : vec3<f32> = u_xlat20;
  u_xlat2 = ((vec3<f32>(x_1898.x, x_1898.y, x_1898.z) * vec3<f32>(x_1900, x_1900, x_1900)) + x_1903);
  let x_1905 : vec4<f32> = u_xlat8;
  let x_1907 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1905.x, x_1905.y, x_1905.z) + x_1907);
  let x_1911 : vec4<f32> = vs_INTERP4;
  let x_1913 : vec3<f32> = u_xlat0;
  let x_1915 : vec3<f32> = u_xlat2;
  let x_1916 : vec3<f32> = ((vec3<f32>(x_1911.w, x_1911.w, x_1911.w) * x_1913) + x_1915);
  let x_1917 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
  let x_1919 : bool = u_xlatb29;
  if (x_1919) {
    let x_1924 : f32 = u_xlat1.x;
    x_1920 = x_1924;
  } else {
    x_1920 = 1.0f;
  }
  let x_1926 : f32 = x_1920;
  SV_Target0.w = x_1926;
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

