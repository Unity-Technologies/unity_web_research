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

@group(1) @binding(4) var<uniform> x_834 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1268 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1390 : AdditionalLightsCookies;

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
  var x_616 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var u_xlat34 : vec2<f32>;
  var u_xlat48 : f32;
  var u_xlatb34 : vec2<bool>;
  var x_902 : f32;
  var x_913 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu44 : u32;
  var u_xlati3 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat23 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati52 : i32;
  var u_xlati50 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb50 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1693 : f32;
  var x_1706 : f32;
  var x_1768 : f32;
  var x_1779 : vec3<f32>;
  var x_1951 : f32;
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
  let x_578 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb15.x = (x_578 == 0.0f);
  let x_581 : vec3<f32> = vs_INTERP0;
  let x_586 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_587 : vec3<f32> = (-(x_581) + x_586);
  let x_588 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_595);
  let x_597 : f32 = u_xlat43;
  let x_599 : vec4<f32> = u_xlat4;
  let x_601 : vec3<f32> = (vec3<f32>(x_597, x_597, x_597) * vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_606 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_606;
  let x_609 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_609;
  let x_612 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_612;
  let x_615 : bool = u_xlatb15.x;
  if (x_615) {
    let x_619 : vec4<f32> = u_xlat4;
    x_616 = vec3<f32>(x_619.x, x_619.y, x_619.z);
  } else {
    let x_622 : vec4<f32> = u_xlat5;
    x_616 = vec3<f32>(x_622.x, x_622.y, x_622.z);
  }
  let x_624 : vec3<f32> = x_616;
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_628 : f32 = vs_INTERP0.y;
  let x_630 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat15.x = (x_628 * x_630);
  let x_634 : f32 = x_66.unity_MatrixV[0i].z;
  let x_636 : f32 = vs_INTERP0.x;
  let x_639 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_634 * x_636) + x_639);
  let x_643 : f32 = x_66.unity_MatrixV[2i].z;
  let x_645 : f32 = vs_INTERP0.z;
  let x_648 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_643 * x_645) + x_648);
  let x_652 : f32 = u_xlat15.x;
  let x_654 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat15.x = (x_652 + x_654);
  let x_658 : f32 = u_xlat15.x;
  let x_661 : f32 = x_66.x_ProjectionParams.y;
  u_xlat15.x = (-(x_658) + -(x_661));
  let x_666 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_666, 0.0f);
  let x_670 : f32 = u_xlat15.x;
  let x_673 : f32 = x_66.unity_FogParams.x;
  u_xlat15.x = (x_670 * x_673);
  let x_683 : vec2<f32> = vs_INTERP5;
  let x_685 : f32 = x_66.x_GlobalMipBias.x;
  let x_686 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_683, x_685);
  let x_687 : vec3<f32> = vec3<f32>(x_686.x, x_686.y, x_686.z);
  let x_688 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_692 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_693 : vec2<f32> = vec2<f32>(x_692.x, x_692.y);
  let x_697 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_693.x, x_693.y));
  let x_698 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_697.x, x_697.y, x_698.z);
  let x_700 : vec3<f32> = u_xlat6;
  let x_702 : vec4<f32> = hlslcc_FragCoord;
  let x_704 : vec2<f32> = (vec2<f32>(x_700.x, x_700.y) * vec2<f32>(x_702.x, x_702.y));
  let x_705 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_704.x, x_704.y, x_705.z);
  let x_708 : f32 = u_xlat6.y;
  let x_711 : f32 = x_66.x_ScaleBiasRt.x;
  let x_714 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat43 = ((x_708 * x_711) + x_714);
  let x_716 : f32 = u_xlat43;
  u_xlat6.z = (-(x_716) + 1.0f);
  let x_721 : f32 = u_xlat3.x;
  u_xlat3.x = x_721;
  let x_724 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_724, 0.0f, 1.0f);
  let x_728 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_728, 1.0f);
  let x_731 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_731 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_736 : f32 = u_xlat3.x;
  u_xlat43 = (-(x_736) + 1.0f);
  let x_739 : f32 = u_xlat43;
  let x_740 : f32 = u_xlat43;
  u_xlat44 = (x_739 * x_740);
  let x_742 : f32 = u_xlat44;
  u_xlat44 = max(x_742, 0.0078125f);
  let x_746 : f32 = u_xlat44;
  let x_747 : f32 = u_xlat44;
  u_xlat46 = (x_746 * x_747);
  let x_750 : f32 = u_xlat3.x;
  u_xlat3.x = (x_750 + 0.040000021f);
  let x_755 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_755, 1.0f);
  let x_759 : f32 = u_xlat44;
  u_xlat47 = ((x_759 * 4.0f) + 2.0f);
  let x_767 : vec3<f32> = u_xlat6;
  let x_770 : f32 = x_66.x_GlobalMipBias.x;
  let x_771 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_767.x, x_767.z), x_770);
  u_xlat6.x = x_771.x;
  let x_776 : f32 = u_xlat6.x;
  u_xlat20 = (x_776 + -1.0f);
  let x_779 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_780 : f32 = u_xlat20;
  u_xlat20 = ((x_779 * x_780) + 1.0f);
  let x_784 : f32 = u_xlat6.x;
  let x_786 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_784, x_786);
  let x_789 : vec3<f32> = vs_INTERP0;
  let x_791 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_793 : vec3<f32> = (x_789 + -(x_791));
  let x_794 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_798 : vec4<f32> = u_xlat7;
  let x_800 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_798.x, x_798.y, x_798.z), vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_805 : f32 = u_xlat34.x;
  let x_807 : f32 = x_138.x_MainLightShadowParams.z;
  let x_810 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_805 * x_807) + x_810);
  let x_814 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_814, 0.0f, 1.0f);
  let x_818 : f32 = u_xlat42;
  u_xlat48 = (-(x_818) + 1.0f);
  let x_822 : f32 = u_xlat34.x;
  let x_823 : f32 = u_xlat48;
  let x_825 : f32 = u_xlat42;
  u_xlat42 = ((x_822 * x_823) + x_825);
  let x_836 : f32 = x_834.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_836 == -1.0f));
  let x_840 : bool = u_xlatb34.x;
  if (x_840) {
    let x_843 : vec3<f32> = vs_INTERP0;
    let x_846 : vec4<f32> = x_834.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_843.y, x_843.y) * vec2<f32>(x_846.x, x_846.y));
    let x_850 : vec4<f32> = x_834.x_MainLightWorldToLight[0i];
    let x_852 : vec3<f32> = vs_INTERP0;
    let x_855 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_850.x, x_850.y) * vec2<f32>(x_852.x, x_852.x)) + x_855);
    let x_858 : vec4<f32> = x_834.x_MainLightWorldToLight[2i];
    let x_860 : vec3<f32> = vs_INTERP0;
    let x_863 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_858.x, x_858.y) * vec2<f32>(x_860.z, x_860.z)) + x_863);
    let x_865 : vec2<f32> = u_xlat34;
    let x_867 : vec4<f32> = x_834.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_865 + vec2<f32>(x_867.x, x_867.y));
    let x_870 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_870 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_879 : vec2<f32> = u_xlat34;
    let x_881 : f32 = x_66.x_GlobalMipBias.x;
    let x_882 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_879, x_881);
    u_xlat7 = x_882;
    let x_884 : f32 = x_834.x_MainLightCookieTextureFormat;
    let x_886 : f32 = x_834.x_MainLightCookieTextureFormat;
    let x_888 : f32 = x_834.x_MainLightCookieTextureFormat;
    let x_890 : f32 = x_834.x_MainLightCookieTextureFormat;
    let x_891 : vec4<f32> = vec4<f32>(x_884, x_886, x_888, x_890);
    let x_898 : vec4<bool> = (vec4<f32>(x_891.x, x_891.y, x_891.z, x_891.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_898.x, x_898.y);
    let x_901 : bool = u_xlatb34.y;
    if (x_901) {
      let x_906 : f32 = u_xlat7.w;
      x_902 = x_906;
    } else {
      let x_909 : f32 = u_xlat7.x;
      x_902 = x_909;
    }
    let x_910 : f32 = x_902;
    u_xlat48 = x_910;
    let x_912 : bool = u_xlatb34.x;
    if (x_912) {
      let x_916 : vec4<f32> = u_xlat7;
      x_913 = vec3<f32>(x_916.x, x_916.y, x_916.z);
    } else {
      let x_919 : f32 = u_xlat48;
      x_913 = vec3<f32>(x_919, x_919, x_919);
    }
    let x_921 : vec3<f32> = x_913;
    let x_922 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_928 : vec4<f32> = u_xlat7;
  let x_931 : vec4<f32> = x_66.x_MainLightColor;
  let x_933 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : f32 = u_xlat20;
  let x_938 : vec4<f32> = u_xlat7;
  let x_940 : vec3<f32> = (vec3<f32>(x_936, x_936, x_936) * vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat4;
  let x_946 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(-(vec3<f32>(x_943.x, x_943.y, x_943.z)), x_946);
  let x_950 : f32 = u_xlat34.x;
  let x_952 : f32 = u_xlat34.x;
  u_xlat34.x = (x_950 + x_952);
  let x_956 : vec3<f32> = u_xlat17;
  let x_957 : vec2<f32> = u_xlat34;
  let x_961 : vec4<f32> = u_xlat4;
  let x_964 : vec3<f32> = ((x_956 * -(vec3<f32>(x_957.x, x_957.x, x_957.x))) + -(vec3<f32>(x_961.x, x_961.y, x_961.z)));
  let x_965 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec3<f32> = u_xlat17;
  let x_968 : vec4<f32> = u_xlat4;
  u_xlat34.x = dot(x_967, vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_973 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_973, 0.0f, 1.0f);
  let x_977 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_977) + 1.0f);
  let x_982 : f32 = u_xlat34.x;
  let x_984 : f32 = u_xlat34.x;
  u_xlat34.x = (x_982 * x_984);
  let x_988 : f32 = u_xlat34.x;
  let x_990 : f32 = u_xlat34.x;
  u_xlat34.x = (x_988 * x_990);
  let x_993 : f32 = u_xlat43;
  u_xlat48 = ((-(x_993) * 0.699999988f) + 1.700000048f);
  let x_999 : f32 = u_xlat43;
  let x_1000 : f32 = u_xlat48;
  u_xlat43 = (x_999 * x_1000);
  let x_1002 : f32 = u_xlat43;
  u_xlat43 = (x_1002 * 6.0f);
  let x_1013 : vec4<f32> = u_xlat8;
  let x_1015 : f32 = u_xlat43;
  let x_1016 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1013.x, x_1013.y, x_1013.z), x_1015);
  u_xlat8 = x_1016;
  let x_1018 : f32 = u_xlat8.w;
  u_xlat43 = (x_1018 + -1.0f);
  let x_1021 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_1022 : f32 = u_xlat43;
  u_xlat43 = ((x_1021 * x_1022) + 1.0f);
  let x_1025 : f32 = u_xlat43;
  u_xlat43 = max(x_1025, 0.0f);
  let x_1027 : f32 = u_xlat43;
  u_xlat43 = log2(x_1027);
  let x_1029 : f32 = u_xlat43;
  let x_1031 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1029 * x_1031);
  let x_1033 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1033);
  let x_1035 : f32 = u_xlat43;
  let x_1037 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1035 * x_1037);
  let x_1039 : vec4<f32> = u_xlat8;
  let x_1041 : f32 = u_xlat43;
  let x_1043 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(x_1041, x_1041, x_1041));
  let x_1044 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1047 : f32 = u_xlat44;
  let x_1049 : f32 = u_xlat44;
  u_xlat9 = ((vec2<f32>(x_1047, x_1047) * vec2<f32>(x_1049, x_1049)) + vec2<f32>(-1.0f, 1.0f));
  let x_1055 : f32 = u_xlat9.y;
  u_xlat43 = (1.0f / x_1055);
  let x_1058 : f32 = u_xlat3.x;
  u_xlat44 = (x_1058 + -0.039999999f);
  let x_1062 : f32 = u_xlat34.x;
  let x_1063 : f32 = u_xlat44;
  u_xlat44 = ((x_1062 * x_1063) + 0.039999999f);
  let x_1067 : f32 = u_xlat43;
  let x_1068 : f32 = u_xlat44;
  u_xlat43 = (x_1067 * x_1068);
  let x_1070 : f32 = u_xlat43;
  let x_1072 : vec4<f32> = u_xlat8;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1070, x_1070, x_1070) * vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1077 : vec4<f32> = u_xlat5;
  let x_1079 : vec3<f32> = u_xlat2;
  let x_1081 : vec4<f32> = u_xlat8;
  let x_1083 : vec3<f32> = ((vec3<f32>(x_1077.x, x_1077.y, x_1077.z) * x_1079) + vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : f32 = u_xlat42;
  let x_1088 : f32 = x_496.unity_LightData.z;
  u_xlat42 = (x_1086 * x_1088);
  let x_1090 : vec3<f32> = u_xlat17;
  let x_1092 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat43 = dot(x_1090, vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1095, 0.0f, 1.0f);
  let x_1097 : f32 = u_xlat42;
  let x_1098 : f32 = u_xlat43;
  u_xlat42 = (x_1097 * x_1098);
  let x_1100 : f32 = u_xlat42;
  let x_1102 : vec4<f32> = u_xlat7;
  let x_1104 : vec3<f32> = (vec3<f32>(x_1100, x_1100, x_1100) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1107 : vec4<f32> = u_xlat4;
  let x_1110 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1107.x, x_1107.y, x_1107.z) + vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat8;
  let x_1117 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1115.x, x_1115.y, x_1115.z), vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : f32 = u_xlat42;
  u_xlat42 = max(x_1120, 1.17549435e-37f);
  let x_1123 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1123);
  let x_1125 : f32 = u_xlat42;
  let x_1127 : vec4<f32> = u_xlat8;
  let x_1129 : vec3<f32> = (vec3<f32>(x_1125, x_1125, x_1125) * vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : vec3<f32> = u_xlat17;
  let x_1133 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_1132, vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1136, 0.0f, 1.0f);
  let x_1139 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1141 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1139.x, x_1139.y, x_1139.z), vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1144, 0.0f, 1.0f);
  let x_1146 : f32 = u_xlat42;
  let x_1147 : f32 = u_xlat42;
  u_xlat42 = (x_1146 * x_1147);
  let x_1149 : f32 = u_xlat42;
  let x_1151 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1149 * x_1151) + 1.000010014f);
  let x_1155 : f32 = u_xlat43;
  let x_1156 : f32 = u_xlat43;
  u_xlat43 = (x_1155 * x_1156);
  let x_1158 : f32 = u_xlat42;
  let x_1159 : f32 = u_xlat42;
  u_xlat42 = (x_1158 * x_1159);
  let x_1161 : f32 = u_xlat43;
  u_xlat43 = max(x_1161, 0.100000001f);
  let x_1164 : f32 = u_xlat42;
  let x_1165 : f32 = u_xlat43;
  u_xlat42 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat47;
  let x_1168 : f32 = u_xlat42;
  u_xlat42 = (x_1167 * x_1168);
  let x_1170 : f32 = u_xlat46;
  let x_1171 : f32 = u_xlat42;
  u_xlat42 = (x_1170 / x_1171);
  let x_1173 : f32 = u_xlat42;
  let x_1177 : vec3<f32> = u_xlat2;
  let x_1178 : vec3<f32> = ((vec3<f32>(x_1173, x_1173, x_1173) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1177);
  let x_1179 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec4<f32> = u_xlat7;
  let x_1183 : vec4<f32> = u_xlat8;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1181.x, x_1181.y, x_1181.z) * vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1190 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1192 : f32 = x_496.unity_LightData.y;
  u_xlat42 = min(x_1190, x_1192);
  let x_1194 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1194));
  let x_1198 : f32 = x_834.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1200 : f32 = x_834.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1202 : f32 = x_834.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1204 : f32 = x_834.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1205 : vec4<f32> = vec4<f32>(x_1198, x_1200, x_1202, x_1204);
  let x_1211 : vec4<bool> = (vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1205.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1211.x, x_1211.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1222 : u32 = u_xlatu_loop_1;
    let x_1223 : u32 = u_xlatu42;
    if ((x_1222 < x_1223)) {
    } else {
      break;
    }
    let x_1226 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_1226 >> 2u);
    let x_1229 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1229 & 3u));
    let x_1232 : u32 = u_xlatu44;
    let x_1235 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1232)];
    let x_1245 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1250 : vec4<u32> = indexable[x_1245];
    u_xlat44 = dot(x_1235, bitcast<vec4<f32>>(x_1250));
    let x_1253 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_1253));
    let x_1257 : vec3<f32> = vs_INTERP0;
    let x_1269 : u32 = u_xlatu44;
    let x_1272 : vec4<f32> = x_1268.x_AdditionalLightsPosition[bitcast<i32>(x_1269)];
    let x_1275 : u32 = u_xlatu44;
    let x_1278 : vec4<f32> = x_1268.x_AdditionalLightsPosition[bitcast<i32>(x_1275)];
    u_xlat23 = ((-(x_1257) * vec3<f32>(x_1272.w, x_1272.w, x_1272.w)) + vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
    let x_1281 : vec3<f32> = u_xlat23;
    let x_1282 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1281, x_1282);
    let x_1286 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1286, 6.10351562e-05f);
    let x_1292 : f32 = u_xlat3.x;
    u_xlat49 = inverseSqrt(x_1292);
    let x_1295 : f32 = u_xlat49;
    let x_1297 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1295, x_1295, x_1295) * x_1297);
    let x_1301 : f32 = u_xlat3.x;
    u_xlat50 = (1.0f / x_1301);
    let x_1304 : f32 = u_xlat3.x;
    let x_1305 : u32 = u_xlatu44;
    let x_1308 : f32 = x_1268.x_AdditionalLightsAttenuation[bitcast<i32>(x_1305)].x;
    u_xlat3.x = (x_1304 * x_1308);
    let x_1312 : f32 = u_xlat3.x;
    let x_1315 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1312) * x_1315) + 1.0f);
    let x_1320 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1320, 0.0f);
    let x_1324 : f32 = u_xlat3.x;
    let x_1326 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1324 * x_1326);
    let x_1330 : f32 = u_xlat3.x;
    let x_1331 : f32 = u_xlat50;
    u_xlat3.x = (x_1330 * x_1331);
    let x_1334 : u32 = u_xlatu44;
    let x_1337 : vec4<f32> = x_1268.x_AdditionalLightsSpotDir[bitcast<i32>(x_1334)];
    let x_1339 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1337.x, x_1337.y, x_1337.z), x_1339);
    let x_1341 : f32 = u_xlat50;
    let x_1342 : u32 = u_xlatu44;
    let x_1345 : f32 = x_1268.x_AdditionalLightsAttenuation[bitcast<i32>(x_1342)].z;
    let x_1347 : u32 = u_xlatu44;
    let x_1350 : f32 = x_1268.x_AdditionalLightsAttenuation[bitcast<i32>(x_1347)].w;
    u_xlat50 = ((x_1341 * x_1345) + x_1350);
    let x_1352 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1352, 0.0f, 1.0f);
    let x_1354 : f32 = u_xlat50;
    let x_1355 : f32 = u_xlat50;
    u_xlat50 = (x_1354 * x_1355);
    let x_1358 : f32 = u_xlat3.x;
    let x_1359 : f32 = u_xlat50;
    u_xlat3.x = (x_1358 * x_1359);
    let x_1363 : u32 = u_xlatu44;
    u_xlatu50 = (x_1363 >> 5u);
    let x_1366 : u32 = u_xlatu44;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1366) & 31i)));
    let x_1372 : i32 = u_xlati52;
    let x_1374 : u32 = u_xlatu50;
    let x_1377 : f32 = x_834.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1374)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1372) & bitcast<u32>(x_1377)));
    let x_1381 : i32 = u_xlati50;
    if ((x_1381 != 0i)) {
      let x_1391 : u32 = u_xlatu44;
      let x_1394 : f32 = x_1390.x_AdditionalLightsLightTypes[bitcast<i32>(x_1391)].el;
      u_xlati50 = i32(x_1394);
      let x_1396 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1396 != 0i));
      let x_1400 : u32 = u_xlatu44;
      u_xlati11 = (bitcast<i32>(x_1400) << bitcast<u32>(2i));
      let x_1403 : i32 = u_xlati52;
      if ((x_1403 != 0i)) {
        let x_1408 : vec3<f32> = vs_INTERP0;
        let x_1410 : i32 = u_xlati11;
        let x_1413 : i32 = u_xlati11;
        let x_1417 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1410 + 1i) / 4i)][((x_1413 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1408.y, x_1408.y, x_1408.y) * vec3<f32>(x_1417.x, x_1417.y, x_1417.w));
        let x_1420 : i32 = u_xlati11;
        let x_1422 : i32 = u_xlati11;
        let x_1425 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[(x_1420 / 4i)][(x_1422 % 4i)];
        let x_1427 : vec3<f32> = vs_INTERP0;
        let x_1430 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1425.x, x_1425.y, x_1425.w) * vec3<f32>(x_1427.x, x_1427.x, x_1427.x)) + x_1430);
        let x_1432 : i32 = u_xlati11;
        let x_1435 : i32 = u_xlati11;
        let x_1439 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1432 + 2i) / 4i)][((x_1435 + 2i) % 4i)];
        let x_1441 : vec3<f32> = vs_INTERP0;
        let x_1444 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1439.x, x_1439.y, x_1439.w) * vec3<f32>(x_1441.z, x_1441.z, x_1441.z)) + x_1444);
        let x_1446 : vec3<f32> = u_xlat25;
        let x_1447 : i32 = u_xlati11;
        let x_1450 : i32 = u_xlati11;
        let x_1454 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1447 + 3i) / 4i)][((x_1450 + 3i) % 4i)];
        u_xlat25 = (x_1446 + vec3<f32>(x_1454.x, x_1454.y, x_1454.w));
        let x_1457 : vec3<f32> = u_xlat25;
        let x_1459 : vec3<f32> = u_xlat25;
        let x_1461 : vec2<f32> = (vec2<f32>(x_1457.x, x_1457.y) / vec2<f32>(x_1459.z, x_1459.z));
        let x_1462 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1461.x, x_1461.y, x_1462.z);
        let x_1464 : vec3<f32> = u_xlat25;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1468 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1467.x, x_1467.y, x_1468.z);
        let x_1470 : vec3<f32> = u_xlat25;
        let x_1474 : vec2<f32> = clamp(vec2<f32>(x_1470.x, x_1470.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1475 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1474.x, x_1474.y, x_1475.z);
        let x_1477 : u32 = u_xlatu44;
        let x_1480 : vec4<f32> = x_1390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1477)];
        let x_1482 : vec3<f32> = u_xlat25;
        let x_1485 : u32 = u_xlatu44;
        let x_1488 : vec4<f32> = x_1390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1485)];
        let x_1490 : vec2<f32> = ((vec2<f32>(x_1480.x, x_1480.y) * vec2<f32>(x_1482.x, x_1482.y)) + vec2<f32>(x_1488.z, x_1488.w));
        let x_1491 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1490.x, x_1490.y, x_1491.z);
      } else {
        let x_1495 : i32 = u_xlati50;
        u_xlatb50 = (x_1495 == 1i);
        let x_1497 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1497);
        let x_1499 : i32 = u_xlati50;
        if ((x_1499 != 0i)) {
          let x_1504 : vec3<f32> = vs_INTERP0;
          let x_1506 : i32 = u_xlati11;
          let x_1509 : i32 = u_xlati11;
          let x_1513 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1506 + 1i) / 4i)][((x_1509 + 1i) % 4i)];
          let x_1515 : vec2<f32> = (vec2<f32>(x_1504.y, x_1504.y) * vec2<f32>(x_1513.x, x_1513.y));
          let x_1516 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
          let x_1518 : i32 = u_xlati11;
          let x_1520 : i32 = u_xlati11;
          let x_1523 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[(x_1518 / 4i)][(x_1520 % 4i)];
          let x_1525 : vec3<f32> = vs_INTERP0;
          let x_1528 : vec4<f32> = u_xlat12;
          let x_1530 : vec2<f32> = ((vec2<f32>(x_1523.x, x_1523.y) * vec2<f32>(x_1525.x, x_1525.x)) + vec2<f32>(x_1528.x, x_1528.y));
          let x_1531 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1530.x, x_1530.y, x_1531.z, x_1531.w);
          let x_1533 : i32 = u_xlati11;
          let x_1536 : i32 = u_xlati11;
          let x_1540 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1533 + 2i) / 4i)][((x_1536 + 2i) % 4i)];
          let x_1542 : vec3<f32> = vs_INTERP0;
          let x_1545 : vec4<f32> = u_xlat12;
          let x_1547 : vec2<f32> = ((vec2<f32>(x_1540.x, x_1540.y) * vec2<f32>(x_1542.z, x_1542.z)) + vec2<f32>(x_1545.x, x_1545.y));
          let x_1548 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1547.x, x_1547.y, x_1548.z, x_1548.w);
          let x_1550 : vec4<f32> = u_xlat12;
          let x_1552 : i32 = u_xlati11;
          let x_1555 : i32 = u_xlati11;
          let x_1559 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1552 + 3i) / 4i)][((x_1555 + 3i) % 4i)];
          let x_1561 : vec2<f32> = (vec2<f32>(x_1550.x, x_1550.y) + vec2<f32>(x_1559.x, x_1559.y));
          let x_1562 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1561.x, x_1561.y, x_1562.z, x_1562.w);
          let x_1564 : vec4<f32> = u_xlat12;
          let x_1567 : vec2<f32> = ((vec2<f32>(x_1564.x, x_1564.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1568 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1567.x, x_1567.y, x_1568.z, x_1568.w);
          let x_1570 : vec4<f32> = u_xlat12;
          let x_1572 : vec2<f32> = fract(vec2<f32>(x_1570.x, x_1570.y));
          let x_1573 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1572.x, x_1572.y, x_1573.z, x_1573.w);
          let x_1575 : u32 = u_xlatu44;
          let x_1578 : vec4<f32> = x_1390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1575)];
          let x_1580 : vec4<f32> = u_xlat12;
          let x_1583 : u32 = u_xlatu44;
          let x_1586 : vec4<f32> = x_1390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1583)];
          let x_1588 : vec2<f32> = ((vec2<f32>(x_1578.x, x_1578.y) * vec2<f32>(x_1580.x, x_1580.y)) + vec2<f32>(x_1586.z, x_1586.w));
          let x_1589 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1588.x, x_1588.y, x_1589.z);
        } else {
          let x_1592 : vec3<f32> = vs_INTERP0;
          let x_1594 : i32 = u_xlati11;
          let x_1597 : i32 = u_xlati11;
          let x_1601 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1594 + 1i) / 4i)][((x_1597 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1592.y, x_1592.y, x_1592.y, x_1592.y) * x_1601);
          let x_1603 : i32 = u_xlati11;
          let x_1605 : i32 = u_xlati11;
          let x_1608 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[(x_1603 / 4i)][(x_1605 % 4i)];
          let x_1609 : vec3<f32> = vs_INTERP0;
          let x_1612 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1608 * vec4<f32>(x_1609.x, x_1609.x, x_1609.x, x_1609.x)) + x_1612);
          let x_1614 : i32 = u_xlati11;
          let x_1617 : i32 = u_xlati11;
          let x_1621 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1614 + 2i) / 4i)][((x_1617 + 2i) % 4i)];
          let x_1622 : vec3<f32> = vs_INTERP0;
          let x_1625 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1621 * vec4<f32>(x_1622.z, x_1622.z, x_1622.z, x_1622.z)) + x_1625);
          let x_1627 : vec4<f32> = u_xlat12;
          let x_1628 : i32 = u_xlati11;
          let x_1631 : i32 = u_xlati11;
          let x_1635 : vec4<f32> = x_1390.x_AdditionalLightsWorldToLights[((x_1628 + 3i) / 4i)][((x_1631 + 3i) % 4i)];
          u_xlat12 = (x_1627 + x_1635);
          let x_1637 : vec4<f32> = u_xlat12;
          let x_1639 : vec4<f32> = u_xlat12;
          let x_1641 : vec3<f32> = (vec3<f32>(x_1637.x, x_1637.y, x_1637.z) / vec3<f32>(x_1639.w, x_1639.w, x_1639.w));
          let x_1642 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
          let x_1644 : vec4<f32> = u_xlat12;
          let x_1646 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1644.x, x_1644.y, x_1644.z), vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
          let x_1649 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1649);
          let x_1651 : f32 = u_xlat50;
          let x_1653 : vec4<f32> = u_xlat12;
          let x_1655 : vec3<f32> = (vec3<f32>(x_1651, x_1651, x_1651) * vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
          let x_1656 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
          let x_1658 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1658.x, x_1658.y, x_1658.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1663 : f32 = u_xlat50;
          u_xlat50 = max(x_1663, 0.000001f);
          let x_1666 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1666);
          let x_1669 : f32 = u_xlat50;
          let x_1671 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1669, x_1669, x_1669) * vec3<f32>(x_1671.z, x_1671.x, x_1671.y));
          let x_1675 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1675);
          let x_1679 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1679, 0.0f, 1.0f);
          let x_1683 : vec3<f32> = u_xlat13;
          let x_1686 : vec4<bool> = (vec4<f32>(x_1683.y, x_1683.y, x_1683.y, x_1683.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1687 : vec2<bool> = vec2<bool>(x_1686.x, x_1686.w);
          let x_1688 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1687.x, x_1688.y, x_1688.z, x_1687.y);
          let x_1692 : bool = u_xlatb11.x;
          if (x_1692) {
            let x_1697 : f32 = u_xlat13.x;
            x_1693 = x_1697;
          } else {
            let x_1700 : f32 = u_xlat13.x;
            x_1693 = -(x_1700);
          }
          let x_1702 : f32 = x_1693;
          u_xlat11.x = x_1702;
          let x_1705 : bool = u_xlatb11.w;
          if (x_1705) {
            let x_1710 : f32 = u_xlat13.x;
            x_1706 = x_1710;
          } else {
            let x_1713 : f32 = u_xlat13.x;
            x_1706 = -(x_1713);
          }
          let x_1715 : f32 = x_1706;
          u_xlat11.w = x_1715;
          let x_1717 : vec4<f32> = u_xlat12;
          let x_1719 : f32 = u_xlat50;
          let x_1722 : vec4<f32> = u_xlat11;
          let x_1724 : vec2<f32> = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(x_1719, x_1719)) + vec2<f32>(x_1722.x, x_1722.w));
          let x_1725 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1724.x, x_1725.y, x_1725.z, x_1724.y);
          let x_1727 : vec4<f32> = u_xlat11;
          let x_1730 : vec2<f32> = ((vec2<f32>(x_1727.x, x_1727.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1731 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1730.x, x_1731.y, x_1731.z, x_1730.y);
          let x_1733 : vec4<f32> = u_xlat11;
          let x_1737 : vec2<f32> = clamp(vec2<f32>(x_1733.x, x_1733.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1738 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1737.x, x_1738.y, x_1738.z, x_1737.y);
          let x_1740 : u32 = u_xlatu44;
          let x_1743 : vec4<f32> = x_1390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1740)];
          let x_1745 : vec4<f32> = u_xlat11;
          let x_1748 : u32 = u_xlatu44;
          let x_1751 : vec4<f32> = x_1390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1748)];
          let x_1753 : vec2<f32> = ((vec2<f32>(x_1743.x, x_1743.y) * vec2<f32>(x_1745.x, x_1745.w)) + vec2<f32>(x_1751.z, x_1751.w));
          let x_1754 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1753.x, x_1753.y, x_1754.z);
        }
      }
      let x_1761 : vec3<f32> = u_xlat25;
      let x_1764 : f32 = x_66.x_GlobalMipBias.x;
      let x_1765 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1761.x, x_1761.y), x_1764);
      u_xlat11 = x_1765;
      let x_1767 : bool = u_xlatb34.y;
      if (x_1767) {
        let x_1772 : f32 = u_xlat11.w;
        x_1768 = x_1772;
      } else {
        let x_1775 : f32 = u_xlat11.x;
        x_1768 = x_1775;
      }
      let x_1776 : f32 = x_1768;
      u_xlat50 = x_1776;
      let x_1778 : bool = u_xlatb34.x;
      if (x_1778) {
        let x_1782 : vec4<f32> = u_xlat11;
        x_1779 = vec3<f32>(x_1782.x, x_1782.y, x_1782.z);
      } else {
        let x_1785 : f32 = u_xlat50;
        x_1779 = vec3<f32>(x_1785, x_1785, x_1785);
      }
      let x_1787 : vec3<f32> = x_1779;
      let x_1788 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1794 : vec4<f32> = u_xlat11;
    let x_1796 : u32 = u_xlatu44;
    let x_1799 : vec4<f32> = x_1268.x_AdditionalLightsColor[bitcast<i32>(x_1796)];
    let x_1801 : vec3<f32> = (vec3<f32>(x_1794.x, x_1794.y, x_1794.z) * vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
    let x_1802 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
    let x_1804 : f32 = u_xlat20;
    let x_1806 : vec4<f32> = u_xlat11;
    let x_1808 : vec3<f32> = (vec3<f32>(x_1804, x_1804, x_1804) * vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
    let x_1809 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
    let x_1811 : vec3<f32> = u_xlat17;
    let x_1812 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(x_1811, x_1812);
    let x_1814 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1814, 0.0f, 1.0f);
    let x_1816 : f32 = u_xlat44;
    let x_1818 : f32 = u_xlat3.x;
    u_xlat44 = (x_1816 * x_1818);
    let x_1820 : f32 = u_xlat44;
    let x_1822 : vec4<f32> = u_xlat11;
    let x_1824 : vec3<f32> = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
    let x_1825 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
    let x_1827 : vec3<f32> = u_xlat23;
    let x_1828 : f32 = u_xlat49;
    let x_1831 : vec4<f32> = u_xlat4;
    u_xlat23 = ((x_1827 * vec3<f32>(x_1828, x_1828, x_1828)) + vec3<f32>(x_1831.x, x_1831.y, x_1831.z));
    let x_1834 : vec3<f32> = u_xlat23;
    let x_1835 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(x_1834, x_1835);
    let x_1837 : f32 = u_xlat44;
    u_xlat44 = max(x_1837, 1.17549435e-37f);
    let x_1839 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1839);
    let x_1841 : f32 = u_xlat44;
    let x_1843 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1841, x_1841, x_1841) * x_1843);
    let x_1845 : vec3<f32> = u_xlat17;
    let x_1846 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(x_1845, x_1846);
    let x_1848 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1848, 0.0f, 1.0f);
    let x_1850 : vec3<f32> = u_xlat10;
    let x_1851 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1850, x_1851);
    let x_1855 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1855, 0.0f, 1.0f);
    let x_1858 : f32 = u_xlat44;
    let x_1859 : f32 = u_xlat44;
    u_xlat44 = (x_1858 * x_1859);
    let x_1861 : f32 = u_xlat44;
    let x_1863 : f32 = u_xlat9.x;
    u_xlat44 = ((x_1861 * x_1863) + 1.000010014f);
    let x_1867 : f32 = u_xlat3.x;
    let x_1869 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1867 * x_1869);
    let x_1872 : f32 = u_xlat44;
    let x_1873 : f32 = u_xlat44;
    u_xlat44 = (x_1872 * x_1873);
    let x_1876 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1876, 0.100000001f);
    let x_1879 : f32 = u_xlat44;
    let x_1881 : f32 = u_xlat3.x;
    u_xlat44 = (x_1879 * x_1881);
    let x_1883 : f32 = u_xlat47;
    let x_1884 : f32 = u_xlat44;
    u_xlat44 = (x_1883 * x_1884);
    let x_1886 : f32 = u_xlat46;
    let x_1887 : f32 = u_xlat44;
    u_xlat44 = (x_1886 / x_1887);
    let x_1889 : f32 = u_xlat44;
    let x_1892 : vec3<f32> = u_xlat2;
    u_xlat23 = ((vec3<f32>(x_1889, x_1889, x_1889) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1892);
    let x_1894 : vec3<f32> = u_xlat23;
    let x_1895 : vec4<f32> = u_xlat11;
    let x_1898 : vec4<f32> = u_xlat8;
    let x_1900 : vec3<f32> = ((x_1894 * vec3<f32>(x_1895.x, x_1895.y, x_1895.z)) + vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
    let x_1901 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);

    continuing {
      let x_1903 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1903 + bitcast<u32>(1i));
    }
  }
  let x_1905 : vec4<f32> = u_xlat5;
  let x_1907 : vec3<f32> = u_xlat6;
  let x_1910 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1905.x, x_1905.y, x_1905.z) * vec3<f32>(x_1907.x, x_1907.x, x_1907.x)) + vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
  let x_1913 : vec4<f32> = u_xlat8;
  let x_1915 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) + x_1915);
  let x_1917 : vec4<f32> = vs_INTERP4;
  let x_1919 : vec3<f32> = u_xlat0;
  let x_1921 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1917.w, x_1917.w, x_1917.w) * x_1919) + x_1921);
  let x_1924 : f32 = u_xlat15.x;
  let x_1926 : f32 = u_xlat15.x;
  u_xlat42 = (x_1924 * -(x_1926));
  let x_1929 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1929);
  let x_1931 : vec3<f32> = u_xlat0;
  let x_1934 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1931 + -(vec3<f32>(x_1934.x, x_1934.y, x_1934.z)));
  let x_1940 : f32 = u_xlat42;
  let x_1942 : vec3<f32> = u_xlat0;
  let x_1945 : vec4<f32> = x_66.unity_FogColor;
  let x_1947 : vec3<f32> = ((vec3<f32>(x_1940, x_1940, x_1940) * x_1942) + vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
  let x_1950 : bool = u_xlatb29;
  if (x_1950) {
    let x_1955 : f32 = u_xlat1.x;
    x_1951 = x_1955;
  } else {
    x_1951 = 1.0f;
  }
  let x_1957 : f32 = x_1951;
  SV_Target0.w = x_1957;
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

