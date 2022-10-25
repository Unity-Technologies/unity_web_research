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

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(6) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_496 : UnityPerDraw;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_796 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1249 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1352 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_605 : f32;
  var x_618 : f32;
  var x_630 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_879 : f32;
  var x_890 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati35 : i32;
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
  var x_1647 : f32;
  var x_1660 : f32;
  var x_1712 : f32;
  var x_1723 : vec3<f32>;
  var x_1888 : f32;
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
  u_xlat17 = (vec3<f32>(x_572.x, x_572.x, x_572.x) * x_574);
  let x_577 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb15.x = (x_577 == 0.0f);
  let x_580 : vec3<f32> = vs_INTERP0;
  let x_585 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_586 : vec3<f32> = (-(x_580) + x_585);
  let x_587 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_589.x, x_589.y, x_589.z), vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_594);
  let x_596 : f32 = u_xlat43;
  let x_598 : vec4<f32> = u_xlat4;
  let x_600 : vec3<f32> = (vec3<f32>(x_596, x_596, x_596) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_604 : bool = u_xlatb15.x;
  if (x_604) {
    let x_609 : f32 = u_xlat4.x;
    x_605 = x_609;
  } else {
    let x_613 : f32 = x_66.unity_MatrixV[0i].z;
    x_605 = x_613;
  }
  let x_614 : f32 = x_605;
  u_xlat5.x = x_614;
  let x_617 : bool = u_xlatb15.x;
  if (x_617) {
    let x_622 : f32 = u_xlat4.y;
    x_618 = x_622;
  } else {
    let x_625 : f32 = x_66.unity_MatrixV[1i].z;
    x_618 = x_625;
  }
  let x_626 : f32 = x_618;
  u_xlat5.y = x_626;
  let x_629 : bool = u_xlatb15.x;
  if (x_629) {
    let x_634 : f32 = u_xlat4.z;
    x_630 = x_634;
  } else {
    let x_637 : f32 = x_66.unity_MatrixV[2i].z;
    x_630 = x_637;
  }
  let x_638 : f32 = x_630;
  u_xlat5.z = x_638;
  let x_647 : vec2<f32> = vs_INTERP5;
  let x_649 : f32 = x_66.x_GlobalMipBias.x;
  let x_650 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_647, x_649);
  let x_651 : vec3<f32> = vec3<f32>(x_650.x, x_650.y, x_650.z);
  let x_652 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_656 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_657 : vec2<f32> = vec2<f32>(x_656.x, x_656.y);
  let x_661 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_657.x, x_657.y));
  let x_662 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_661.x, x_662.y, x_661.y);
  let x_664 : vec3<f32> = u_xlat15;
  let x_666 : vec4<f32> = hlslcc_FragCoord;
  let x_668 : vec2<f32> = (vec2<f32>(x_664.x, x_664.z) * vec2<f32>(x_666.x, x_666.y));
  let x_669 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_668.x, x_668.y, x_669.z);
  let x_672 : f32 = u_xlat6.y;
  let x_675 : f32 = x_66.x_ScaleBiasRt.x;
  let x_678 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_672 * x_675) + x_678);
  let x_682 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_682) + 1.0f);
  let x_687 : f32 = u_xlat3.x;
  u_xlat3.x = x_687;
  let x_690 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_690, 0.0f, 1.0f);
  let x_694 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_694, 1.0f);
  let x_697 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_697 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_702 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_702) + 1.0f);
  let x_707 : f32 = u_xlat15.x;
  let x_709 : f32 = u_xlat15.x;
  u_xlat43 = (x_707 * x_709);
  let x_711 : f32 = u_xlat43;
  u_xlat43 = max(x_711, 0.0078125f);
  let x_714 : f32 = u_xlat43;
  let x_715 : f32 = u_xlat43;
  u_xlat44 = (x_714 * x_715);
  let x_718 : f32 = u_xlat3.x;
  u_xlat3.x = (x_718 + 0.040000021f);
  let x_723 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_723, 1.0f);
  let x_727 : f32 = u_xlat43;
  u_xlat46 = ((x_727 * 4.0f) + 2.0f);
  let x_736 : vec3<f32> = u_xlat6;
  let x_739 : f32 = x_66.x_GlobalMipBias.x;
  let x_740 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_736.x, x_736.z), x_739);
  u_xlat47 = x_740.x;
  let x_742 : f32 = u_xlat47;
  u_xlat6.x = (x_742 + -1.0f);
  let x_746 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_748 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_746 * x_748) + 1.0f);
  let x_752 : f32 = u_xlat47;
  let x_754 : f32 = vs_INTERP4.w;
  u_xlat47 = min(x_752, x_754);
  let x_757 : vec3<f32> = vs_INTERP0;
  let x_759 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_757 + -(x_759));
  let x_762 : vec3<f32> = u_xlat20;
  let x_763 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_762, x_763);
  let x_767 : f32 = u_xlat20.x;
  let x_769 : f32 = x_138.x_MainLightShadowParams.z;
  let x_772 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_767 * x_769) + x_772);
  let x_776 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_776, 0.0f, 1.0f);
  let x_780 : f32 = u_xlat42;
  u_xlat34 = (-(x_780) + 1.0f);
  let x_784 : f32 = u_xlat20.x;
  let x_785 : f32 = u_xlat34;
  let x_787 : f32 = u_xlat42;
  u_xlat42 = ((x_784 * x_785) + x_787);
  let x_798 : f32 = x_796.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_798 == -1.0f));
  let x_802 : bool = u_xlatb20.x;
  if (x_802) {
    let x_805 : vec3<f32> = vs_INTERP0;
    let x_808 : vec4<f32> = x_796.x_MainLightWorldToLight[1i];
    let x_810 : vec2<f32> = (vec2<f32>(x_805.y, x_805.y) * vec2<f32>(x_808.x, x_808.y));
    let x_811 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_810.x, x_810.y, x_811.z);
    let x_814 : vec4<f32> = x_796.x_MainLightWorldToLight[0i];
    let x_816 : vec3<f32> = vs_INTERP0;
    let x_819 : vec3<f32> = u_xlat20;
    let x_821 : vec2<f32> = ((vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_816.x, x_816.x)) + vec2<f32>(x_819.x, x_819.y));
    let x_822 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_821.x, x_821.y, x_822.z);
    let x_825 : vec4<f32> = x_796.x_MainLightWorldToLight[2i];
    let x_827 : vec3<f32> = vs_INTERP0;
    let x_830 : vec3<f32> = u_xlat20;
    let x_832 : vec2<f32> = ((vec2<f32>(x_825.x, x_825.y) * vec2<f32>(x_827.z, x_827.z)) + vec2<f32>(x_830.x, x_830.y));
    let x_833 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_832.x, x_832.y, x_833.z);
    let x_835 : vec3<f32> = u_xlat20;
    let x_838 : vec4<f32> = x_796.x_MainLightWorldToLight[3i];
    let x_840 : vec2<f32> = (vec2<f32>(x_835.x, x_835.y) + vec2<f32>(x_838.x, x_838.y));
    let x_841 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_840.x, x_840.y, x_841.z);
    let x_843 : vec3<f32> = u_xlat20;
    let x_847 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_848 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_847.x, x_847.y, x_848.z);
    let x_855 : vec3<f32> = u_xlat20;
    let x_858 : f32 = x_66.x_GlobalMipBias.x;
    let x_859 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_855.x, x_855.y), x_858);
    u_xlat7 = x_859;
    let x_861 : f32 = x_796.x_MainLightCookieTextureFormat;
    let x_863 : f32 = x_796.x_MainLightCookieTextureFormat;
    let x_865 : f32 = x_796.x_MainLightCookieTextureFormat;
    let x_867 : f32 = x_796.x_MainLightCookieTextureFormat;
    let x_868 : vec4<f32> = vec4<f32>(x_861, x_863, x_865, x_867);
    let x_875 : vec4<bool> = (vec4<f32>(x_868.x, x_868.y, x_868.z, x_868.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_875.x, x_875.y);
    let x_878 : bool = u_xlatb20.y;
    if (x_878) {
      let x_883 : f32 = u_xlat7.w;
      x_879 = x_883;
    } else {
      let x_886 : f32 = u_xlat7.x;
      x_879 = x_886;
    }
    let x_887 : f32 = x_879;
    u_xlat34 = x_887;
    let x_889 : bool = u_xlatb20.x;
    if (x_889) {
      let x_893 : vec4<f32> = u_xlat7;
      x_890 = vec3<f32>(x_893.x, x_893.y, x_893.z);
    } else {
      let x_896 : f32 = u_xlat34;
      x_890 = vec3<f32>(x_896, x_896, x_896);
    }
    let x_898 : vec3<f32> = x_890;
    u_xlat20 = x_898;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_903 : vec3<f32> = u_xlat20;
  let x_905 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_903 * vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec3<f32> = u_xlat6;
  let x_910 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_908.x, x_908.x, x_908.x) * x_910);
  let x_912 : vec4<f32> = u_xlat5;
  let x_915 : vec3<f32> = u_xlat17;
  u_xlat7.x = dot(-(vec3<f32>(x_912.x, x_912.y, x_912.z)), x_915);
  let x_919 : f32 = u_xlat7.x;
  let x_921 : f32 = u_xlat7.x;
  u_xlat7.x = (x_919 + x_921);
  let x_924 : vec3<f32> = u_xlat17;
  let x_925 : vec4<f32> = u_xlat7;
  let x_929 : vec4<f32> = u_xlat5;
  let x_932 : vec3<f32> = ((x_924 * -(vec3<f32>(x_925.x, x_925.x, x_925.x))) + -(vec3<f32>(x_929.x, x_929.y, x_929.z)));
  let x_933 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_936 : vec3<f32> = u_xlat17;
  let x_937 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(x_936, vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : f32 = u_xlat49;
  u_xlat49 = clamp(x_940, 0.0f, 1.0f);
  let x_942 : f32 = u_xlat49;
  u_xlat49 = (-(x_942) + 1.0f);
  let x_945 : f32 = u_xlat49;
  let x_946 : f32 = u_xlat49;
  u_xlat49 = (x_945 * x_946);
  let x_948 : f32 = u_xlat49;
  let x_949 : f32 = u_xlat49;
  u_xlat49 = (x_948 * x_949);
  let x_953 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_953) * 0.699999988f) + 1.700000048f);
  let x_961 : f32 = u_xlat15.x;
  let x_963 : f32 = u_xlat8.x;
  u_xlat15.x = (x_961 * x_963);
  let x_967 : f32 = u_xlat15.x;
  u_xlat15.x = (x_967 * 6.0f);
  let x_979 : vec4<f32> = u_xlat7;
  let x_982 : f32 = u_xlat15.x;
  let x_983 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_979.x, x_979.y, x_979.z), x_982);
  u_xlat8 = x_983;
  let x_985 : f32 = u_xlat8.w;
  u_xlat15.x = (x_985 + -1.0f);
  let x_989 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_991 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_989 * x_991) + 1.0f);
  let x_996 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_996, 0.0f);
  let x_1000 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1000);
  let x_1004 : f32 = u_xlat15.x;
  let x_1006 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1004 * x_1006);
  let x_1010 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1010);
  let x_1014 : f32 = u_xlat15.x;
  let x_1016 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1014 * x_1016);
  let x_1019 : vec4<f32> = u_xlat8;
  let x_1021 : vec3<f32> = u_xlat15;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) * vec3<f32>(x_1021.x, x_1021.x, x_1021.x));
  let x_1024 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : f32 = u_xlat43;
  let x_1028 : f32 = u_xlat43;
  let x_1032 : vec2<f32> = ((vec2<f32>(x_1026, x_1026) * vec2<f32>(x_1028, x_1028)) + vec2<f32>(-1.0f, 1.0f));
  let x_1033 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1032.x, x_1033.y, x_1032.y);
  let x_1036 : f32 = u_xlat15.z;
  u_xlat43 = (1.0f / x_1036);
  let x_1039 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1039 + -0.039999999f);
  let x_1043 : f32 = u_xlat49;
  let x_1045 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1043 * x_1045) + 0.039999999f);
  let x_1050 : f32 = u_xlat43;
  let x_1052 : f32 = u_xlat3.x;
  u_xlat43 = (x_1050 * x_1052);
  let x_1054 : f32 = u_xlat43;
  let x_1056 : vec4<f32> = u_xlat7;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1054, x_1054, x_1054) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat4;
  let x_1063 : vec3<f32> = u_xlat2;
  let x_1065 : vec4<f32> = u_xlat7;
  let x_1067 : vec3<f32> = ((vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * x_1063) + vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : f32 = u_xlat42;
  let x_1072 : f32 = x_496.unity_LightData.z;
  u_xlat42 = (x_1070 * x_1072);
  let x_1074 : vec3<f32> = u_xlat17;
  let x_1076 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat43 = dot(x_1074, vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1079, 0.0f, 1.0f);
  let x_1081 : f32 = u_xlat42;
  let x_1082 : f32 = u_xlat43;
  u_xlat42 = (x_1081 * x_1082);
  let x_1084 : f32 = u_xlat42;
  let x_1086 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1084, x_1084, x_1084) * x_1086);
  let x_1088 : vec4<f32> = u_xlat5;
  let x_1091 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1093 : vec3<f32> = (vec3<f32>(x_1088.x, x_1088.y, x_1088.z) + vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1094 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
  let x_1096 : vec4<f32> = u_xlat7;
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : f32 = u_xlat42;
  u_xlat42 = max(x_1101, 1.17549435e-37f);
  let x_1104 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1104);
  let x_1106 : f32 = u_xlat42;
  let x_1108 : vec4<f32> = u_xlat7;
  let x_1110 : vec3<f32> = (vec3<f32>(x_1106, x_1106, x_1106) * vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1111 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1113 : vec3<f32> = u_xlat17;
  let x_1114 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_1113, vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1117, 0.0f, 1.0f);
  let x_1120 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1122 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1120.x, x_1120.y, x_1120.z), vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1125, 0.0f, 1.0f);
  let x_1127 : f32 = u_xlat42;
  let x_1128 : f32 = u_xlat42;
  u_xlat42 = (x_1127 * x_1128);
  let x_1130 : f32 = u_xlat42;
  let x_1132 : f32 = u_xlat15.x;
  u_xlat42 = ((x_1130 * x_1132) + 1.000010014f);
  let x_1136 : f32 = u_xlat43;
  let x_1137 : f32 = u_xlat43;
  u_xlat43 = (x_1136 * x_1137);
  let x_1139 : f32 = u_xlat42;
  let x_1140 : f32 = u_xlat42;
  u_xlat42 = (x_1139 * x_1140);
  let x_1142 : f32 = u_xlat43;
  u_xlat43 = max(x_1142, 0.100000001f);
  let x_1145 : f32 = u_xlat42;
  let x_1146 : f32 = u_xlat43;
  u_xlat42 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat46;
  let x_1149 : f32 = u_xlat42;
  u_xlat42 = (x_1148 * x_1149);
  let x_1151 : f32 = u_xlat44;
  let x_1152 : f32 = u_xlat42;
  u_xlat42 = (x_1151 / x_1152);
  let x_1154 : f32 = u_xlat42;
  let x_1158 : vec3<f32> = u_xlat2;
  let x_1159 : vec3<f32> = ((vec3<f32>(x_1154, x_1154, x_1154) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1158);
  let x_1160 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1162 : vec3<f32> = u_xlat20;
  let x_1163 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1162 * vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1168 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1170 : f32 = x_496.unity_LightData.y;
  u_xlat42 = min(x_1168, x_1170);
  let x_1172 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1172));
  let x_1177 : f32 = x_796.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1179 : f32 = x_796.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1181 : f32 = x_796.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1183 : f32 = x_796.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1184 : vec4<f32> = vec4<f32>(x_1177, x_1179, x_1181, x_1183);
  let x_1190 : vec4<bool> = (vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1184.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1190.x, x_1190.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1201 : u32 = u_xlatu_loop_1;
    let x_1202 : u32 = u_xlatu42;
    if ((x_1201 < x_1202)) {
    } else {
      break;
    }
    let x_1205 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1205 >> 2u);
    let x_1208 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1208 & 3u));
    let x_1211 : u32 = u_xlatu3;
    let x_1214 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1211)];
    let x_1224 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1229 : vec4<u32> = indexable[x_1224];
    u_xlat3.x = dot(x_1214, bitcast<vec4<f32>>(x_1229));
    let x_1234 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_1234));
    let x_1238 : vec3<f32> = vs_INTERP0;
    let x_1250 : u32 = u_xlatu3;
    let x_1253 : vec4<f32> = x_1249.x_AdditionalLightsPosition[bitcast<i32>(x_1250)];
    let x_1256 : u32 = u_xlatu3;
    let x_1259 : vec4<f32> = x_1249.x_AdditionalLightsPosition[bitcast<i32>(x_1256)];
    u_xlat9 = ((-(x_1238) * vec3<f32>(x_1253.w, x_1253.w, x_1253.w)) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
    let x_1263 : vec3<f32> = u_xlat9;
    let x_1264 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1263, x_1264);
    let x_1266 : f32 = u_xlat35;
    u_xlat35 = max(x_1266, 6.10351562e-05f);
    let x_1269 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1269);
    let x_1272 : f32 = u_xlat49;
    let x_1274 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1272, x_1272, x_1272) * x_1274);
    let x_1277 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1277);
    let x_1279 : f32 = u_xlat35;
    let x_1280 : u32 = u_xlatu3;
    let x_1283 : f32 = x_1249.x_AdditionalLightsAttenuation[bitcast<i32>(x_1280)].x;
    u_xlat35 = (x_1279 * x_1283);
    let x_1285 : f32 = u_xlat35;
    let x_1287 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1285) * x_1287) + 1.0f);
    let x_1290 : f32 = u_xlat35;
    u_xlat35 = max(x_1290, 0.0f);
    let x_1292 : f32 = u_xlat35;
    let x_1293 : f32 = u_xlat35;
    u_xlat35 = (x_1292 * x_1293);
    let x_1295 : f32 = u_xlat35;
    let x_1296 : f32 = u_xlat50;
    u_xlat35 = (x_1295 * x_1296);
    let x_1298 : u32 = u_xlatu3;
    let x_1301 : vec4<f32> = x_1249.x_AdditionalLightsSpotDir[bitcast<i32>(x_1298)];
    let x_1303 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1301.x, x_1301.y, x_1301.z), x_1303);
    let x_1305 : f32 = u_xlat50;
    let x_1306 : u32 = u_xlatu3;
    let x_1309 : f32 = x_1249.x_AdditionalLightsAttenuation[bitcast<i32>(x_1306)].z;
    let x_1311 : u32 = u_xlatu3;
    let x_1314 : f32 = x_1249.x_AdditionalLightsAttenuation[bitcast<i32>(x_1311)].w;
    u_xlat50 = ((x_1305 * x_1309) + x_1314);
    let x_1316 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1316, 0.0f, 1.0f);
    let x_1318 : f32 = u_xlat50;
    let x_1319 : f32 = u_xlat50;
    u_xlat50 = (x_1318 * x_1319);
    let x_1321 : f32 = u_xlat35;
    let x_1322 : f32 = u_xlat50;
    u_xlat35 = (x_1321 * x_1322);
    let x_1325 : u32 = u_xlatu3;
    u_xlatu50 = (x_1325 >> 5u);
    let x_1328 : u32 = u_xlatu3;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1328) & 31i)));
    let x_1334 : i32 = u_xlati51;
    let x_1336 : u32 = u_xlatu50;
    let x_1339 : f32 = x_796.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1336)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1334) & bitcast<u32>(x_1339)));
    let x_1343 : i32 = u_xlati50;
    if ((x_1343 != 0i)) {
      let x_1353 : u32 = u_xlatu3;
      let x_1356 : f32 = x_1352.x_AdditionalLightsLightTypes[bitcast<i32>(x_1353)].el;
      u_xlati50 = i32(x_1356);
      let x_1358 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1358 != 0i));
      let x_1362 : u32 = u_xlatu3;
      u_xlati52 = (bitcast<i32>(x_1362) << bitcast<u32>(2i));
      let x_1365 : i32 = u_xlati51;
      if ((x_1365 != 0i)) {
        let x_1370 : vec3<f32> = vs_INTERP0;
        let x_1372 : i32 = u_xlati52;
        let x_1375 : i32 = u_xlati52;
        let x_1379 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1372 + 1i) / 4i)][((x_1375 + 1i) % 4i)];
        let x_1381 : vec3<f32> = (vec3<f32>(x_1370.y, x_1370.y, x_1370.y) * vec3<f32>(x_1379.x, x_1379.y, x_1379.w));
        let x_1382 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
        let x_1384 : i32 = u_xlati52;
        let x_1386 : i32 = u_xlati52;
        let x_1389 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[(x_1384 / 4i)][(x_1386 % 4i)];
        let x_1391 : vec3<f32> = vs_INTERP0;
        let x_1394 : vec4<f32> = u_xlat11;
        let x_1396 : vec3<f32> = ((vec3<f32>(x_1389.x, x_1389.y, x_1389.w) * vec3<f32>(x_1391.x, x_1391.x, x_1391.x)) + vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
        let x_1397 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
        let x_1399 : i32 = u_xlati52;
        let x_1402 : i32 = u_xlati52;
        let x_1406 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1399 + 2i) / 4i)][((x_1402 + 2i) % 4i)];
        let x_1408 : vec3<f32> = vs_INTERP0;
        let x_1411 : vec4<f32> = u_xlat11;
        let x_1413 : vec3<f32> = ((vec3<f32>(x_1406.x, x_1406.y, x_1406.w) * vec3<f32>(x_1408.z, x_1408.z, x_1408.z)) + vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
        let x_1414 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat11;
        let x_1418 : i32 = u_xlati52;
        let x_1421 : i32 = u_xlati52;
        let x_1425 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1418 + 3i) / 4i)][((x_1421 + 3i) % 4i)];
        let x_1427 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) + vec3<f32>(x_1425.x, x_1425.y, x_1425.w));
        let x_1428 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1428.w);
        let x_1430 : vec4<f32> = u_xlat11;
        let x_1432 : vec4<f32> = u_xlat11;
        let x_1434 : vec2<f32> = (vec2<f32>(x_1430.x, x_1430.y) / vec2<f32>(x_1432.z, x_1432.z));
        let x_1435 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1434.x, x_1434.y, x_1435.z, x_1435.w);
        let x_1437 : vec4<f32> = u_xlat11;
        let x_1440 : vec2<f32> = ((vec2<f32>(x_1437.x, x_1437.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1441 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1440.x, x_1440.y, x_1441.z, x_1441.w);
        let x_1443 : vec4<f32> = u_xlat11;
        let x_1447 : vec2<f32> = clamp(vec2<f32>(x_1443.x, x_1443.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1448 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1447.x, x_1447.y, x_1448.z, x_1448.w);
        let x_1450 : u32 = u_xlatu3;
        let x_1453 : vec4<f32> = x_1352.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1450)];
        let x_1455 : vec4<f32> = u_xlat11;
        let x_1458 : u32 = u_xlatu3;
        let x_1461 : vec4<f32> = x_1352.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1458)];
        let x_1463 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1455.x, x_1455.y)) + vec2<f32>(x_1461.z, x_1461.w));
        let x_1464 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
      } else {
        let x_1468 : i32 = u_xlati50;
        u_xlatb50 = (x_1468 == 1i);
        let x_1470 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1470);
        let x_1472 : i32 = u_xlati50;
        if ((x_1472 != 0i)) {
          let x_1478 : vec3<f32> = vs_INTERP0;
          let x_1480 : i32 = u_xlati52;
          let x_1483 : i32 = u_xlati52;
          let x_1487 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1480 + 1i) / 4i)][((x_1483 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1478.y, x_1478.y) * vec2<f32>(x_1487.x, x_1487.y));
          let x_1490 : i32 = u_xlati52;
          let x_1492 : i32 = u_xlati52;
          let x_1495 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[(x_1490 / 4i)][(x_1492 % 4i)];
          let x_1497 : vec3<f32> = vs_INTERP0;
          let x_1500 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1495.x, x_1495.y) * vec2<f32>(x_1497.x, x_1497.x)) + x_1500);
          let x_1502 : i32 = u_xlati52;
          let x_1505 : i32 = u_xlati52;
          let x_1509 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1502 + 2i) / 4i)][((x_1505 + 2i) % 4i)];
          let x_1511 : vec3<f32> = vs_INTERP0;
          let x_1514 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(x_1511.z, x_1511.z)) + x_1514);
          let x_1516 : vec2<f32> = u_xlat39;
          let x_1517 : i32 = u_xlati52;
          let x_1520 : i32 = u_xlati52;
          let x_1524 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1517 + 3i) / 4i)][((x_1520 + 3i) % 4i)];
          u_xlat39 = (x_1516 + vec2<f32>(x_1524.x, x_1524.y));
          let x_1527 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1527 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1530 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1530);
          let x_1532 : u32 = u_xlatu3;
          let x_1535 : vec4<f32> = x_1352.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1532)];
          let x_1537 : vec2<f32> = u_xlat39;
          let x_1539 : u32 = u_xlatu3;
          let x_1542 : vec4<f32> = x_1352.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1539)];
          let x_1544 : vec2<f32> = ((vec2<f32>(x_1535.x, x_1535.y) * x_1537) + vec2<f32>(x_1542.z, x_1542.w));
          let x_1545 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1544.x, x_1544.y, x_1545.z, x_1545.w);
        } else {
          let x_1549 : vec3<f32> = vs_INTERP0;
          let x_1551 : i32 = u_xlati52;
          let x_1554 : i32 = u_xlati52;
          let x_1558 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1551 + 1i) / 4i)][((x_1554 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1549.y, x_1549.y, x_1549.y, x_1549.y) * x_1558);
          let x_1560 : i32 = u_xlati52;
          let x_1562 : i32 = u_xlati52;
          let x_1565 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[(x_1560 / 4i)][(x_1562 % 4i)];
          let x_1566 : vec3<f32> = vs_INTERP0;
          let x_1569 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1565 * vec4<f32>(x_1566.x, x_1566.x, x_1566.x, x_1566.x)) + x_1569);
          let x_1571 : i32 = u_xlati52;
          let x_1574 : i32 = u_xlati52;
          let x_1578 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1571 + 2i) / 4i)][((x_1574 + 2i) % 4i)];
          let x_1579 : vec3<f32> = vs_INTERP0;
          let x_1582 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1578 * vec4<f32>(x_1579.z, x_1579.z, x_1579.z, x_1579.z)) + x_1582);
          let x_1584 : vec4<f32> = u_xlat12;
          let x_1585 : i32 = u_xlati52;
          let x_1588 : i32 = u_xlati52;
          let x_1592 : vec4<f32> = x_1352.x_AdditionalLightsWorldToLights[((x_1585 + 3i) / 4i)][((x_1588 + 3i) % 4i)];
          u_xlat12 = (x_1584 + x_1592);
          let x_1594 : vec4<f32> = u_xlat12;
          let x_1596 : vec4<f32> = u_xlat12;
          let x_1598 : vec3<f32> = (vec3<f32>(x_1594.x, x_1594.y, x_1594.z) / vec3<f32>(x_1596.w, x_1596.w, x_1596.w));
          let x_1599 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
          let x_1601 : vec4<f32> = u_xlat12;
          let x_1603 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1601.x, x_1601.y, x_1601.z), vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
          let x_1606 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1606);
          let x_1608 : f32 = u_xlat50;
          let x_1610 : vec4<f32> = u_xlat12;
          let x_1612 : vec3<f32> = (vec3<f32>(x_1608, x_1608, x_1608) * vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
          let x_1613 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
          let x_1615 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1615.x, x_1615.y, x_1615.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1620 : f32 = u_xlat50;
          u_xlat50 = max(x_1620, 0.000001f);
          let x_1623 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1623);
          let x_1626 : f32 = u_xlat50;
          let x_1628 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1626, x_1626, x_1626) * vec3<f32>(x_1628.z, x_1628.x, x_1628.y));
          let x_1632 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1632);
          let x_1636 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1636, 0.0f, 1.0f);
          let x_1640 : vec3<f32> = u_xlat13;
          let x_1643 : vec4<bool> = (vec4<f32>(x_1640.y, x_1640.z, x_1640.y, x_1640.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1643.x, x_1643.y);
          let x_1646 : bool = u_xlatb39.x;
          if (x_1646) {
            let x_1651 : f32 = u_xlat13.x;
            x_1647 = x_1651;
          } else {
            let x_1654 : f32 = u_xlat13.x;
            x_1647 = -(x_1654);
          }
          let x_1656 : f32 = x_1647;
          u_xlat39.x = x_1656;
          let x_1659 : bool = u_xlatb39.y;
          if (x_1659) {
            let x_1664 : f32 = u_xlat13.x;
            x_1660 = x_1664;
          } else {
            let x_1667 : f32 = u_xlat13.x;
            x_1660 = -(x_1667);
          }
          let x_1669 : f32 = x_1660;
          u_xlat39.y = x_1669;
          let x_1671 : vec4<f32> = u_xlat12;
          let x_1673 : f32 = u_xlat50;
          let x_1676 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(x_1673, x_1673)) + x_1676);
          let x_1678 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1678 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1681 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1681, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1685 : u32 = u_xlatu3;
          let x_1688 : vec4<f32> = x_1352.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1685)];
          let x_1690 : vec2<f32> = u_xlat39;
          let x_1692 : u32 = u_xlatu3;
          let x_1695 : vec4<f32> = x_1352.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1692)];
          let x_1697 : vec2<f32> = ((vec2<f32>(x_1688.x, x_1688.y) * x_1690) + vec2<f32>(x_1695.z, x_1695.w));
          let x_1698 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
        }
      }
      let x_1705 : vec4<f32> = u_xlat11;
      let x_1708 : f32 = x_66.x_GlobalMipBias.x;
      let x_1709 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1705.x, x_1705.y), x_1708);
      u_xlat11 = x_1709;
      let x_1711 : bool = u_xlatb7.y;
      if (x_1711) {
        let x_1716 : f32 = u_xlat11.w;
        x_1712 = x_1716;
      } else {
        let x_1719 : f32 = u_xlat11.x;
        x_1712 = x_1719;
      }
      let x_1720 : f32 = x_1712;
      u_xlat50 = x_1720;
      let x_1722 : bool = u_xlatb7.x;
      if (x_1722) {
        let x_1726 : vec4<f32> = u_xlat11;
        x_1723 = vec3<f32>(x_1726.x, x_1726.y, x_1726.z);
      } else {
        let x_1729 : f32 = u_xlat50;
        x_1723 = vec3<f32>(x_1729, x_1729, x_1729);
      }
      let x_1731 : vec3<f32> = x_1723;
      let x_1732 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1738 : vec4<f32> = u_xlat11;
    let x_1740 : u32 = u_xlatu3;
    let x_1743 : vec4<f32> = x_1249.x_AdditionalLightsColor[bitcast<i32>(x_1740)];
    let x_1745 : vec3<f32> = (vec3<f32>(x_1738.x, x_1738.y, x_1738.z) * vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
    let x_1746 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
    let x_1748 : vec3<f32> = u_xlat6;
    let x_1750 : vec4<f32> = u_xlat11;
    let x_1752 : vec3<f32> = (vec3<f32>(x_1748.x, x_1748.x, x_1748.x) * vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
    let x_1753 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
    let x_1755 : vec3<f32> = u_xlat17;
    let x_1756 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(x_1755, x_1756);
    let x_1760 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1760, 0.0f, 1.0f);
    let x_1764 : f32 = u_xlat3.x;
    let x_1765 : f32 = u_xlat35;
    u_xlat3.x = (x_1764 * x_1765);
    let x_1768 : vec4<f32> = u_xlat3;
    let x_1770 : vec4<f32> = u_xlat11;
    let x_1772 : vec3<f32> = (vec3<f32>(x_1768.x, x_1768.x, x_1768.x) * vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
    let x_1773 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
    let x_1775 : vec3<f32> = u_xlat9;
    let x_1776 : f32 = u_xlat49;
    let x_1779 : vec4<f32> = u_xlat5;
    u_xlat9 = ((x_1775 * vec3<f32>(x_1776, x_1776, x_1776)) + vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
    let x_1782 : vec3<f32> = u_xlat9;
    let x_1783 : vec3<f32> = u_xlat9;
    u_xlat3.x = dot(x_1782, x_1783);
    let x_1787 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1787, 1.17549435e-37f);
    let x_1791 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1791);
    let x_1794 : vec4<f32> = u_xlat3;
    let x_1796 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1794.x, x_1794.x, x_1794.x) * x_1796);
    let x_1798 : vec3<f32> = u_xlat17;
    let x_1799 : vec3<f32> = u_xlat9;
    u_xlat3.x = dot(x_1798, x_1799);
    let x_1803 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1803, 0.0f, 1.0f);
    let x_1806 : vec3<f32> = u_xlat10;
    let x_1807 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1806, x_1807);
    let x_1809 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1809, 0.0f, 1.0f);
    let x_1812 : f32 = u_xlat3.x;
    let x_1814 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1812 * x_1814);
    let x_1818 : f32 = u_xlat3.x;
    let x_1820 : f32 = u_xlat15.x;
    u_xlat3.x = ((x_1818 * x_1820) + 1.000010014f);
    let x_1824 : f32 = u_xlat35;
    let x_1825 : f32 = u_xlat35;
    u_xlat35 = (x_1824 * x_1825);
    let x_1828 : f32 = u_xlat3.x;
    let x_1830 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1828 * x_1830);
    let x_1833 : f32 = u_xlat35;
    u_xlat35 = max(x_1833, 0.100000001f);
    let x_1836 : f32 = u_xlat3.x;
    let x_1837 : f32 = u_xlat35;
    u_xlat3.x = (x_1836 * x_1837);
    let x_1840 : f32 = u_xlat46;
    let x_1842 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1840 * x_1842);
    let x_1845 : f32 = u_xlat44;
    let x_1847 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1845 / x_1847);
    let x_1850 : vec4<f32> = u_xlat3;
    let x_1853 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1850.x, x_1850.x, x_1850.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1853);
    let x_1855 : vec3<f32> = u_xlat9;
    let x_1856 : vec4<f32> = u_xlat11;
    let x_1859 : vec4<f32> = u_xlat8;
    let x_1861 : vec3<f32> = ((x_1855 * vec3<f32>(x_1856.x, x_1856.y, x_1856.z)) + vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
    let x_1862 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);

    continuing {
      let x_1864 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1864 + bitcast<u32>(1i));
    }
  }
  let x_1866 : vec4<f32> = u_xlat4;
  let x_1868 : f32 = u_xlat47;
  let x_1871 : vec3<f32> = u_xlat20;
  u_xlat2 = ((vec3<f32>(x_1866.x, x_1866.y, x_1866.z) * vec3<f32>(x_1868, x_1868, x_1868)) + x_1871);
  let x_1873 : vec4<f32> = u_xlat8;
  let x_1875 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1873.x, x_1873.y, x_1873.z) + x_1875);
  let x_1879 : vec4<f32> = vs_INTERP4;
  let x_1881 : vec3<f32> = u_xlat0;
  let x_1883 : vec3<f32> = u_xlat2;
  let x_1884 : vec3<f32> = ((vec3<f32>(x_1879.w, x_1879.w, x_1879.w) * x_1881) + x_1883);
  let x_1885 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  let x_1887 : bool = u_xlatb29;
  if (x_1887) {
    let x_1892 : f32 = u_xlat1.x;
    x_1888 = x_1892;
  } else {
    x_1888 = 1.0f;
  }
  let x_1894 : f32 = x_1888;
  SV_Target0.w = x_1894;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0);
}

