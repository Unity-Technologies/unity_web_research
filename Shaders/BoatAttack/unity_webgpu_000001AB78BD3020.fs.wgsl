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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(6) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_496 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_869 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1303 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1425 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_937 : f32;
  var x_948 : vec3<f32>;
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
  var x_1728 : f32;
  var x_1741 : f32;
  var x_1803 : f32;
  var x_1814 : vec3<f32>;
  var x_1986 : f32;
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
  let x_686 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_683, x_685);
  u_xlat5 = x_686;
  let x_691 : vec2<f32> = vs_INTERP5;
  let x_693 : f32 = x_66.x_GlobalMipBias.x;
  let x_694 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_691, x_693);
  u_xlat6 = vec3<f32>(x_694.x, x_694.y, x_694.z);
  let x_696 : vec4<f32> = u_xlat5;
  let x_700 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_701 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec3<f32> = u_xlat17;
  let x_704 : vec4<f32> = u_xlat5;
  u_xlat43 = dot(x_703, vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : f32 = u_xlat43;
  u_xlat43 = (x_707 + 0.5f);
  let x_709 : f32 = u_xlat43;
  let x_711 : vec3<f32> = u_xlat6;
  let x_712 : vec3<f32> = (vec3<f32>(x_709, x_709, x_709) * x_711);
  let x_713 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_716 : f32 = u_xlat5.w;
  u_xlat43 = max(x_716, 0.0001f);
  let x_718 : vec4<f32> = u_xlat5;
  let x_720 : f32 = u_xlat43;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) / vec3<f32>(x_720, x_720, x_720));
  let x_723 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_727 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_728 : vec2<f32> = vec2<f32>(x_727.x, x_727.y);
  let x_732 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_728.x, x_728.y));
  let x_733 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_732.x, x_732.y, x_733.z);
  let x_735 : vec3<f32> = u_xlat6;
  let x_737 : vec4<f32> = hlslcc_FragCoord;
  let x_739 : vec2<f32> = (vec2<f32>(x_735.x, x_735.y) * vec2<f32>(x_737.x, x_737.y));
  let x_740 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_739.x, x_739.y, x_740.z);
  let x_743 : f32 = u_xlat6.y;
  let x_746 : f32 = x_66.x_ScaleBiasRt.x;
  let x_749 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat43 = ((x_743 * x_746) + x_749);
  let x_751 : f32 = u_xlat43;
  u_xlat6.z = (-(x_751) + 1.0f);
  let x_756 : f32 = u_xlat3.x;
  u_xlat3.x = x_756;
  let x_759 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_759, 0.0f, 1.0f);
  let x_763 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_763, 1.0f);
  let x_766 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_766 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_771 : f32 = u_xlat3.x;
  u_xlat43 = (-(x_771) + 1.0f);
  let x_774 : f32 = u_xlat43;
  let x_775 : f32 = u_xlat43;
  u_xlat44 = (x_774 * x_775);
  let x_777 : f32 = u_xlat44;
  u_xlat44 = max(x_777, 0.0078125f);
  let x_781 : f32 = u_xlat44;
  let x_782 : f32 = u_xlat44;
  u_xlat46 = (x_781 * x_782);
  let x_785 : f32 = u_xlat3.x;
  u_xlat3.x = (x_785 + 0.040000021f);
  let x_790 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_790, 1.0f);
  let x_794 : f32 = u_xlat44;
  u_xlat47 = ((x_794 * 4.0f) + 2.0f);
  let x_802 : vec3<f32> = u_xlat6;
  let x_805 : f32 = x_66.x_GlobalMipBias.x;
  let x_806 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_802.x, x_802.z), x_805);
  u_xlat6.x = x_806.x;
  let x_811 : f32 = u_xlat6.x;
  u_xlat20 = (x_811 + -1.0f);
  let x_814 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_815 : f32 = u_xlat20;
  u_xlat20 = ((x_814 * x_815) + 1.0f);
  let x_819 : f32 = u_xlat6.x;
  let x_821 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_819, x_821);
  let x_824 : vec3<f32> = vs_INTERP0;
  let x_826 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_828 : vec3<f32> = (x_824 + -(x_826));
  let x_829 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_833 : vec4<f32> = u_xlat7;
  let x_835 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_840 : f32 = u_xlat34.x;
  let x_842 : f32 = x_138.x_MainLightShadowParams.z;
  let x_845 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_840 * x_842) + x_845);
  let x_849 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_849, 0.0f, 1.0f);
  let x_853 : f32 = u_xlat42;
  u_xlat48 = (-(x_853) + 1.0f);
  let x_857 : f32 = u_xlat34.x;
  let x_858 : f32 = u_xlat48;
  let x_860 : f32 = u_xlat42;
  u_xlat42 = ((x_857 * x_858) + x_860);
  let x_871 : f32 = x_869.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_871 == -1.0f));
  let x_875 : bool = u_xlatb34.x;
  if (x_875) {
    let x_878 : vec3<f32> = vs_INTERP0;
    let x_881 : vec4<f32> = x_869.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_878.y, x_878.y) * vec2<f32>(x_881.x, x_881.y));
    let x_885 : vec4<f32> = x_869.x_MainLightWorldToLight[0i];
    let x_887 : vec3<f32> = vs_INTERP0;
    let x_890 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_885.x, x_885.y) * vec2<f32>(x_887.x, x_887.x)) + x_890);
    let x_893 : vec4<f32> = x_869.x_MainLightWorldToLight[2i];
    let x_895 : vec3<f32> = vs_INTERP0;
    let x_898 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_893.x, x_893.y) * vec2<f32>(x_895.z, x_895.z)) + x_898);
    let x_900 : vec2<f32> = u_xlat34;
    let x_902 : vec4<f32> = x_869.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_900 + vec2<f32>(x_902.x, x_902.y));
    let x_905 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_905 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_914 : vec2<f32> = u_xlat34;
    let x_916 : f32 = x_66.x_GlobalMipBias.x;
    let x_917 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_914, x_916);
    u_xlat7 = x_917;
    let x_919 : f32 = x_869.x_MainLightCookieTextureFormat;
    let x_921 : f32 = x_869.x_MainLightCookieTextureFormat;
    let x_923 : f32 = x_869.x_MainLightCookieTextureFormat;
    let x_925 : f32 = x_869.x_MainLightCookieTextureFormat;
    let x_926 : vec4<f32> = vec4<f32>(x_919, x_921, x_923, x_925);
    let x_933 : vec4<bool> = (vec4<f32>(x_926.x, x_926.y, x_926.z, x_926.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_933.x, x_933.y);
    let x_936 : bool = u_xlatb34.y;
    if (x_936) {
      let x_941 : f32 = u_xlat7.w;
      x_937 = x_941;
    } else {
      let x_944 : f32 = u_xlat7.x;
      x_937 = x_944;
    }
    let x_945 : f32 = x_937;
    u_xlat48 = x_945;
    let x_947 : bool = u_xlatb34.x;
    if (x_947) {
      let x_951 : vec4<f32> = u_xlat7;
      x_948 = vec3<f32>(x_951.x, x_951.y, x_951.z);
    } else {
      let x_954 : f32 = u_xlat48;
      x_948 = vec3<f32>(x_954, x_954, x_954);
    }
    let x_956 : vec3<f32> = x_948;
    let x_957 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_963 : vec4<f32> = u_xlat7;
  let x_966 : vec4<f32> = x_66.x_MainLightColor;
  let x_968 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) * vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : f32 = u_xlat20;
  let x_973 : vec4<f32> = u_xlat7;
  let x_975 : vec3<f32> = (vec3<f32>(x_971, x_971, x_971) * vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec4<f32> = u_xlat4;
  let x_981 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(-(vec3<f32>(x_978.x, x_978.y, x_978.z)), x_981);
  let x_985 : f32 = u_xlat34.x;
  let x_987 : f32 = u_xlat34.x;
  u_xlat34.x = (x_985 + x_987);
  let x_991 : vec3<f32> = u_xlat17;
  let x_992 : vec2<f32> = u_xlat34;
  let x_996 : vec4<f32> = u_xlat4;
  let x_999 : vec3<f32> = ((x_991 * -(vec3<f32>(x_992.x, x_992.x, x_992.x))) + -(vec3<f32>(x_996.x, x_996.y, x_996.z)));
  let x_1000 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec3<f32> = u_xlat17;
  let x_1003 : vec4<f32> = u_xlat4;
  u_xlat34.x = dot(x_1002, vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1008 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1008, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1012) + 1.0f);
  let x_1017 : f32 = u_xlat34.x;
  let x_1019 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1017 * x_1019);
  let x_1023 : f32 = u_xlat34.x;
  let x_1025 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1023 * x_1025);
  let x_1028 : f32 = u_xlat43;
  u_xlat48 = ((-(x_1028) * 0.699999988f) + 1.700000048f);
  let x_1034 : f32 = u_xlat43;
  let x_1035 : f32 = u_xlat48;
  u_xlat43 = (x_1034 * x_1035);
  let x_1037 : f32 = u_xlat43;
  u_xlat43 = (x_1037 * 6.0f);
  let x_1048 : vec4<f32> = u_xlat8;
  let x_1050 : f32 = u_xlat43;
  let x_1051 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1048.x, x_1048.y, x_1048.z), x_1050);
  u_xlat8 = x_1051;
  let x_1053 : f32 = u_xlat8.w;
  u_xlat43 = (x_1053 + -1.0f);
  let x_1056 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_1057 : f32 = u_xlat43;
  u_xlat43 = ((x_1056 * x_1057) + 1.0f);
  let x_1060 : f32 = u_xlat43;
  u_xlat43 = max(x_1060, 0.0f);
  let x_1062 : f32 = u_xlat43;
  u_xlat43 = log2(x_1062);
  let x_1064 : f32 = u_xlat43;
  let x_1066 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1064 * x_1066);
  let x_1068 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1068);
  let x_1070 : f32 = u_xlat43;
  let x_1072 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1070 * x_1072);
  let x_1074 : vec4<f32> = u_xlat8;
  let x_1076 : f32 = u_xlat43;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) * vec3<f32>(x_1076, x_1076, x_1076));
  let x_1079 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1082 : f32 = u_xlat44;
  let x_1084 : f32 = u_xlat44;
  u_xlat9 = ((vec2<f32>(x_1082, x_1082) * vec2<f32>(x_1084, x_1084)) + vec2<f32>(-1.0f, 1.0f));
  let x_1090 : f32 = u_xlat9.y;
  u_xlat43 = (1.0f / x_1090);
  let x_1093 : f32 = u_xlat3.x;
  u_xlat44 = (x_1093 + -0.039999999f);
  let x_1097 : f32 = u_xlat34.x;
  let x_1098 : f32 = u_xlat44;
  u_xlat44 = ((x_1097 * x_1098) + 0.039999999f);
  let x_1102 : f32 = u_xlat43;
  let x_1103 : f32 = u_xlat44;
  u_xlat43 = (x_1102 * x_1103);
  let x_1105 : f32 = u_xlat43;
  let x_1107 : vec4<f32> = u_xlat8;
  let x_1109 : vec3<f32> = (vec3<f32>(x_1105, x_1105, x_1105) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : vec4<f32> = u_xlat5;
  let x_1114 : vec3<f32> = u_xlat2;
  let x_1116 : vec4<f32> = u_xlat8;
  let x_1118 : vec3<f32> = ((vec3<f32>(x_1112.x, x_1112.y, x_1112.z) * x_1114) + vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : f32 = u_xlat42;
  let x_1123 : f32 = x_496.unity_LightData.z;
  u_xlat42 = (x_1121 * x_1123);
  let x_1125 : vec3<f32> = u_xlat17;
  let x_1127 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat43 = dot(x_1125, vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1130, 0.0f, 1.0f);
  let x_1132 : f32 = u_xlat42;
  let x_1133 : f32 = u_xlat43;
  u_xlat42 = (x_1132 * x_1133);
  let x_1135 : f32 = u_xlat42;
  let x_1137 : vec4<f32> = u_xlat7;
  let x_1139 : vec3<f32> = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : vec4<f32> = u_xlat4;
  let x_1145 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1147 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec4<f32> = u_xlat8;
  let x_1152 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1150.x, x_1150.y, x_1150.z), vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : f32 = u_xlat42;
  u_xlat42 = max(x_1155, 1.17549435e-37f);
  let x_1158 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1158);
  let x_1160 : f32 = u_xlat42;
  let x_1162 : vec4<f32> = u_xlat8;
  let x_1164 : vec3<f32> = (vec3<f32>(x_1160, x_1160, x_1160) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : vec3<f32> = u_xlat17;
  let x_1168 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_1167, vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1171, 0.0f, 1.0f);
  let x_1174 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1176 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1174.x, x_1174.y, x_1174.z), vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1179, 0.0f, 1.0f);
  let x_1181 : f32 = u_xlat42;
  let x_1182 : f32 = u_xlat42;
  u_xlat42 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat42;
  let x_1186 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1184 * x_1186) + 1.000010014f);
  let x_1190 : f32 = u_xlat43;
  let x_1191 : f32 = u_xlat43;
  u_xlat43 = (x_1190 * x_1191);
  let x_1193 : f32 = u_xlat42;
  let x_1194 : f32 = u_xlat42;
  u_xlat42 = (x_1193 * x_1194);
  let x_1196 : f32 = u_xlat43;
  u_xlat43 = max(x_1196, 0.100000001f);
  let x_1199 : f32 = u_xlat42;
  let x_1200 : f32 = u_xlat43;
  u_xlat42 = (x_1199 * x_1200);
  let x_1202 : f32 = u_xlat47;
  let x_1203 : f32 = u_xlat42;
  u_xlat42 = (x_1202 * x_1203);
  let x_1205 : f32 = u_xlat46;
  let x_1206 : f32 = u_xlat42;
  u_xlat42 = (x_1205 / x_1206);
  let x_1208 : f32 = u_xlat42;
  let x_1212 : vec3<f32> = u_xlat2;
  let x_1213 : vec3<f32> = ((vec3<f32>(x_1208, x_1208, x_1208) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1212);
  let x_1214 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec4<f32> = u_xlat7;
  let x_1218 : vec4<f32> = u_xlat8;
  let x_1220 : vec3<f32> = (vec3<f32>(x_1216.x, x_1216.y, x_1216.z) * vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1225 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1227 : f32 = x_496.unity_LightData.y;
  u_xlat42 = min(x_1225, x_1227);
  let x_1229 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1229));
  let x_1233 : f32 = x_869.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1235 : f32 = x_869.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1237 : f32 = x_869.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1239 : f32 = x_869.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1240 : vec4<f32> = vec4<f32>(x_1233, x_1235, x_1237, x_1239);
  let x_1246 : vec4<bool> = (vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1240.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1246.x, x_1246.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1257 : u32 = u_xlatu_loop_1;
    let x_1258 : u32 = u_xlatu42;
    if ((x_1257 < x_1258)) {
    } else {
      break;
    }
    let x_1261 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_1261 >> 2u);
    let x_1264 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1264 & 3u));
    let x_1267 : u32 = u_xlatu44;
    let x_1270 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1267)];
    let x_1280 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1285 : vec4<u32> = indexable[x_1280];
    u_xlat44 = dot(x_1270, bitcast<vec4<f32>>(x_1285));
    let x_1288 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_1288));
    let x_1292 : vec3<f32> = vs_INTERP0;
    let x_1304 : u32 = u_xlatu44;
    let x_1307 : vec4<f32> = x_1303.x_AdditionalLightsPosition[bitcast<i32>(x_1304)];
    let x_1310 : u32 = u_xlatu44;
    let x_1313 : vec4<f32> = x_1303.x_AdditionalLightsPosition[bitcast<i32>(x_1310)];
    u_xlat23 = ((-(x_1292) * vec3<f32>(x_1307.w, x_1307.w, x_1307.w)) + vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
    let x_1316 : vec3<f32> = u_xlat23;
    let x_1317 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1316, x_1317);
    let x_1321 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1321, 6.10351562e-05f);
    let x_1327 : f32 = u_xlat3.x;
    u_xlat49 = inverseSqrt(x_1327);
    let x_1330 : f32 = u_xlat49;
    let x_1332 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1330, x_1330, x_1330) * x_1332);
    let x_1336 : f32 = u_xlat3.x;
    u_xlat50 = (1.0f / x_1336);
    let x_1339 : f32 = u_xlat3.x;
    let x_1340 : u32 = u_xlatu44;
    let x_1343 : f32 = x_1303.x_AdditionalLightsAttenuation[bitcast<i32>(x_1340)].x;
    u_xlat3.x = (x_1339 * x_1343);
    let x_1347 : f32 = u_xlat3.x;
    let x_1350 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1347) * x_1350) + 1.0f);
    let x_1355 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1355, 0.0f);
    let x_1359 : f32 = u_xlat3.x;
    let x_1361 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1359 * x_1361);
    let x_1365 : f32 = u_xlat3.x;
    let x_1366 : f32 = u_xlat50;
    u_xlat3.x = (x_1365 * x_1366);
    let x_1369 : u32 = u_xlatu44;
    let x_1372 : vec4<f32> = x_1303.x_AdditionalLightsSpotDir[bitcast<i32>(x_1369)];
    let x_1374 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1372.x, x_1372.y, x_1372.z), x_1374);
    let x_1376 : f32 = u_xlat50;
    let x_1377 : u32 = u_xlatu44;
    let x_1380 : f32 = x_1303.x_AdditionalLightsAttenuation[bitcast<i32>(x_1377)].z;
    let x_1382 : u32 = u_xlatu44;
    let x_1385 : f32 = x_1303.x_AdditionalLightsAttenuation[bitcast<i32>(x_1382)].w;
    u_xlat50 = ((x_1376 * x_1380) + x_1385);
    let x_1387 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1387, 0.0f, 1.0f);
    let x_1389 : f32 = u_xlat50;
    let x_1390 : f32 = u_xlat50;
    u_xlat50 = (x_1389 * x_1390);
    let x_1393 : f32 = u_xlat3.x;
    let x_1394 : f32 = u_xlat50;
    u_xlat3.x = (x_1393 * x_1394);
    let x_1398 : u32 = u_xlatu44;
    u_xlatu50 = (x_1398 >> 5u);
    let x_1401 : u32 = u_xlatu44;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1401) & 31i)));
    let x_1407 : i32 = u_xlati52;
    let x_1409 : u32 = u_xlatu50;
    let x_1412 : f32 = x_869.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1409)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1407) & bitcast<u32>(x_1412)));
    let x_1416 : i32 = u_xlati50;
    if ((x_1416 != 0i)) {
      let x_1426 : u32 = u_xlatu44;
      let x_1429 : f32 = x_1425.x_AdditionalLightsLightTypes[bitcast<i32>(x_1426)].el;
      u_xlati50 = i32(x_1429);
      let x_1431 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1431 != 0i));
      let x_1435 : u32 = u_xlatu44;
      u_xlati11 = (bitcast<i32>(x_1435) << bitcast<u32>(2i));
      let x_1438 : i32 = u_xlati52;
      if ((x_1438 != 0i)) {
        let x_1443 : vec3<f32> = vs_INTERP0;
        let x_1445 : i32 = u_xlati11;
        let x_1448 : i32 = u_xlati11;
        let x_1452 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1445 + 1i) / 4i)][((x_1448 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1443.y, x_1443.y, x_1443.y) * vec3<f32>(x_1452.x, x_1452.y, x_1452.w));
        let x_1455 : i32 = u_xlati11;
        let x_1457 : i32 = u_xlati11;
        let x_1460 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[(x_1455 / 4i)][(x_1457 % 4i)];
        let x_1462 : vec3<f32> = vs_INTERP0;
        let x_1465 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1460.x, x_1460.y, x_1460.w) * vec3<f32>(x_1462.x, x_1462.x, x_1462.x)) + x_1465);
        let x_1467 : i32 = u_xlati11;
        let x_1470 : i32 = u_xlati11;
        let x_1474 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1467 + 2i) / 4i)][((x_1470 + 2i) % 4i)];
        let x_1476 : vec3<f32> = vs_INTERP0;
        let x_1479 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1474.x, x_1474.y, x_1474.w) * vec3<f32>(x_1476.z, x_1476.z, x_1476.z)) + x_1479);
        let x_1481 : vec3<f32> = u_xlat25;
        let x_1482 : i32 = u_xlati11;
        let x_1485 : i32 = u_xlati11;
        let x_1489 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1482 + 3i) / 4i)][((x_1485 + 3i) % 4i)];
        u_xlat25 = (x_1481 + vec3<f32>(x_1489.x, x_1489.y, x_1489.w));
        let x_1492 : vec3<f32> = u_xlat25;
        let x_1494 : vec3<f32> = u_xlat25;
        let x_1496 : vec2<f32> = (vec2<f32>(x_1492.x, x_1492.y) / vec2<f32>(x_1494.z, x_1494.z));
        let x_1497 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1496.x, x_1496.y, x_1497.z);
        let x_1499 : vec3<f32> = u_xlat25;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1503 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1502.x, x_1502.y, x_1503.z);
        let x_1505 : vec3<f32> = u_xlat25;
        let x_1509 : vec2<f32> = clamp(vec2<f32>(x_1505.x, x_1505.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1510 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1509.x, x_1509.y, x_1510.z);
        let x_1512 : u32 = u_xlatu44;
        let x_1515 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1512)];
        let x_1517 : vec3<f32> = u_xlat25;
        let x_1520 : u32 = u_xlatu44;
        let x_1523 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1520)];
        let x_1525 : vec2<f32> = ((vec2<f32>(x_1515.x, x_1515.y) * vec2<f32>(x_1517.x, x_1517.y)) + vec2<f32>(x_1523.z, x_1523.w));
        let x_1526 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1525.x, x_1525.y, x_1526.z);
      } else {
        let x_1530 : i32 = u_xlati50;
        u_xlatb50 = (x_1530 == 1i);
        let x_1532 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1532);
        let x_1534 : i32 = u_xlati50;
        if ((x_1534 != 0i)) {
          let x_1539 : vec3<f32> = vs_INTERP0;
          let x_1541 : i32 = u_xlati11;
          let x_1544 : i32 = u_xlati11;
          let x_1548 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1541 + 1i) / 4i)][((x_1544 + 1i) % 4i)];
          let x_1550 : vec2<f32> = (vec2<f32>(x_1539.y, x_1539.y) * vec2<f32>(x_1548.x, x_1548.y));
          let x_1551 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
          let x_1553 : i32 = u_xlati11;
          let x_1555 : i32 = u_xlati11;
          let x_1558 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[(x_1553 / 4i)][(x_1555 % 4i)];
          let x_1560 : vec3<f32> = vs_INTERP0;
          let x_1563 : vec4<f32> = u_xlat12;
          let x_1565 : vec2<f32> = ((vec2<f32>(x_1558.x, x_1558.y) * vec2<f32>(x_1560.x, x_1560.x)) + vec2<f32>(x_1563.x, x_1563.y));
          let x_1566 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1565.x, x_1565.y, x_1566.z, x_1566.w);
          let x_1568 : i32 = u_xlati11;
          let x_1571 : i32 = u_xlati11;
          let x_1575 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1568 + 2i) / 4i)][((x_1571 + 2i) % 4i)];
          let x_1577 : vec3<f32> = vs_INTERP0;
          let x_1580 : vec4<f32> = u_xlat12;
          let x_1582 : vec2<f32> = ((vec2<f32>(x_1575.x, x_1575.y) * vec2<f32>(x_1577.z, x_1577.z)) + vec2<f32>(x_1580.x, x_1580.y));
          let x_1583 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
          let x_1585 : vec4<f32> = u_xlat12;
          let x_1587 : i32 = u_xlati11;
          let x_1590 : i32 = u_xlati11;
          let x_1594 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1587 + 3i) / 4i)][((x_1590 + 3i) % 4i)];
          let x_1596 : vec2<f32> = (vec2<f32>(x_1585.x, x_1585.y) + vec2<f32>(x_1594.x, x_1594.y));
          let x_1597 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1596.x, x_1596.y, x_1597.z, x_1597.w);
          let x_1599 : vec4<f32> = u_xlat12;
          let x_1602 : vec2<f32> = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1603 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1602.x, x_1602.y, x_1603.z, x_1603.w);
          let x_1605 : vec4<f32> = u_xlat12;
          let x_1607 : vec2<f32> = fract(vec2<f32>(x_1605.x, x_1605.y));
          let x_1608 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
          let x_1610 : u32 = u_xlatu44;
          let x_1613 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1610)];
          let x_1615 : vec4<f32> = u_xlat12;
          let x_1618 : u32 = u_xlatu44;
          let x_1621 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1618)];
          let x_1623 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.y) * vec2<f32>(x_1615.x, x_1615.y)) + vec2<f32>(x_1621.z, x_1621.w));
          let x_1624 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1623.x, x_1623.y, x_1624.z);
        } else {
          let x_1627 : vec3<f32> = vs_INTERP0;
          let x_1629 : i32 = u_xlati11;
          let x_1632 : i32 = u_xlati11;
          let x_1636 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1629 + 1i) / 4i)][((x_1632 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1627.y, x_1627.y, x_1627.y, x_1627.y) * x_1636);
          let x_1638 : i32 = u_xlati11;
          let x_1640 : i32 = u_xlati11;
          let x_1643 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[(x_1638 / 4i)][(x_1640 % 4i)];
          let x_1644 : vec3<f32> = vs_INTERP0;
          let x_1647 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1643 * vec4<f32>(x_1644.x, x_1644.x, x_1644.x, x_1644.x)) + x_1647);
          let x_1649 : i32 = u_xlati11;
          let x_1652 : i32 = u_xlati11;
          let x_1656 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1649 + 2i) / 4i)][((x_1652 + 2i) % 4i)];
          let x_1657 : vec3<f32> = vs_INTERP0;
          let x_1660 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1656 * vec4<f32>(x_1657.z, x_1657.z, x_1657.z, x_1657.z)) + x_1660);
          let x_1662 : vec4<f32> = u_xlat12;
          let x_1663 : i32 = u_xlati11;
          let x_1666 : i32 = u_xlati11;
          let x_1670 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1663 + 3i) / 4i)][((x_1666 + 3i) % 4i)];
          u_xlat12 = (x_1662 + x_1670);
          let x_1672 : vec4<f32> = u_xlat12;
          let x_1674 : vec4<f32> = u_xlat12;
          let x_1676 : vec3<f32> = (vec3<f32>(x_1672.x, x_1672.y, x_1672.z) / vec3<f32>(x_1674.w, x_1674.w, x_1674.w));
          let x_1677 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
          let x_1679 : vec4<f32> = u_xlat12;
          let x_1681 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1679.x, x_1679.y, x_1679.z), vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
          let x_1684 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1684);
          let x_1686 : f32 = u_xlat50;
          let x_1688 : vec4<f32> = u_xlat12;
          let x_1690 : vec3<f32> = (vec3<f32>(x_1686, x_1686, x_1686) * vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
          let x_1691 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
          let x_1693 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1693.x, x_1693.y, x_1693.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1698 : f32 = u_xlat50;
          u_xlat50 = max(x_1698, 0.000001f);
          let x_1701 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1701);
          let x_1704 : f32 = u_xlat50;
          let x_1706 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1704, x_1704, x_1704) * vec3<f32>(x_1706.z, x_1706.x, x_1706.y));
          let x_1710 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1710);
          let x_1714 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1714, 0.0f, 1.0f);
          let x_1718 : vec3<f32> = u_xlat13;
          let x_1721 : vec4<bool> = (vec4<f32>(x_1718.y, x_1718.y, x_1718.y, x_1718.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1722 : vec2<bool> = vec2<bool>(x_1721.x, x_1721.w);
          let x_1723 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1722.x, x_1723.y, x_1723.z, x_1722.y);
          let x_1727 : bool = u_xlatb11.x;
          if (x_1727) {
            let x_1732 : f32 = u_xlat13.x;
            x_1728 = x_1732;
          } else {
            let x_1735 : f32 = u_xlat13.x;
            x_1728 = -(x_1735);
          }
          let x_1737 : f32 = x_1728;
          u_xlat11.x = x_1737;
          let x_1740 : bool = u_xlatb11.w;
          if (x_1740) {
            let x_1745 : f32 = u_xlat13.x;
            x_1741 = x_1745;
          } else {
            let x_1748 : f32 = u_xlat13.x;
            x_1741 = -(x_1748);
          }
          let x_1750 : f32 = x_1741;
          u_xlat11.w = x_1750;
          let x_1752 : vec4<f32> = u_xlat12;
          let x_1754 : f32 = u_xlat50;
          let x_1757 : vec4<f32> = u_xlat11;
          let x_1759 : vec2<f32> = ((vec2<f32>(x_1752.x, x_1752.y) * vec2<f32>(x_1754, x_1754)) + vec2<f32>(x_1757.x, x_1757.w));
          let x_1760 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1759.x, x_1760.y, x_1760.z, x_1759.y);
          let x_1762 : vec4<f32> = u_xlat11;
          let x_1765 : vec2<f32> = ((vec2<f32>(x_1762.x, x_1762.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1766 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1765.x, x_1766.y, x_1766.z, x_1765.y);
          let x_1768 : vec4<f32> = u_xlat11;
          let x_1772 : vec2<f32> = clamp(vec2<f32>(x_1768.x, x_1768.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1773 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1772.x, x_1773.y, x_1773.z, x_1772.y);
          let x_1775 : u32 = u_xlatu44;
          let x_1778 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1775)];
          let x_1780 : vec4<f32> = u_xlat11;
          let x_1783 : u32 = u_xlatu44;
          let x_1786 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1783)];
          let x_1788 : vec2<f32> = ((vec2<f32>(x_1778.x, x_1778.y) * vec2<f32>(x_1780.x, x_1780.w)) + vec2<f32>(x_1786.z, x_1786.w));
          let x_1789 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1788.x, x_1788.y, x_1789.z);
        }
      }
      let x_1796 : vec3<f32> = u_xlat25;
      let x_1799 : f32 = x_66.x_GlobalMipBias.x;
      let x_1800 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1796.x, x_1796.y), x_1799);
      u_xlat11 = x_1800;
      let x_1802 : bool = u_xlatb34.y;
      if (x_1802) {
        let x_1807 : f32 = u_xlat11.w;
        x_1803 = x_1807;
      } else {
        let x_1810 : f32 = u_xlat11.x;
        x_1803 = x_1810;
      }
      let x_1811 : f32 = x_1803;
      u_xlat50 = x_1811;
      let x_1813 : bool = u_xlatb34.x;
      if (x_1813) {
        let x_1817 : vec4<f32> = u_xlat11;
        x_1814 = vec3<f32>(x_1817.x, x_1817.y, x_1817.z);
      } else {
        let x_1820 : f32 = u_xlat50;
        x_1814 = vec3<f32>(x_1820, x_1820, x_1820);
      }
      let x_1822 : vec3<f32> = x_1814;
      let x_1823 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1829 : vec4<f32> = u_xlat11;
    let x_1831 : u32 = u_xlatu44;
    let x_1834 : vec4<f32> = x_1303.x_AdditionalLightsColor[bitcast<i32>(x_1831)];
    let x_1836 : vec3<f32> = (vec3<f32>(x_1829.x, x_1829.y, x_1829.z) * vec3<f32>(x_1834.x, x_1834.y, x_1834.z));
    let x_1837 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1837.w);
    let x_1839 : f32 = u_xlat20;
    let x_1841 : vec4<f32> = u_xlat11;
    let x_1843 : vec3<f32> = (vec3<f32>(x_1839, x_1839, x_1839) * vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
    let x_1844 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
    let x_1846 : vec3<f32> = u_xlat17;
    let x_1847 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(x_1846, x_1847);
    let x_1849 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1849, 0.0f, 1.0f);
    let x_1851 : f32 = u_xlat44;
    let x_1853 : f32 = u_xlat3.x;
    u_xlat44 = (x_1851 * x_1853);
    let x_1855 : f32 = u_xlat44;
    let x_1857 : vec4<f32> = u_xlat11;
    let x_1859 : vec3<f32> = (vec3<f32>(x_1855, x_1855, x_1855) * vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
    let x_1860 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
    let x_1862 : vec3<f32> = u_xlat23;
    let x_1863 : f32 = u_xlat49;
    let x_1866 : vec4<f32> = u_xlat4;
    u_xlat23 = ((x_1862 * vec3<f32>(x_1863, x_1863, x_1863)) + vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
    let x_1869 : vec3<f32> = u_xlat23;
    let x_1870 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(x_1869, x_1870);
    let x_1872 : f32 = u_xlat44;
    u_xlat44 = max(x_1872, 1.17549435e-37f);
    let x_1874 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1874);
    let x_1876 : f32 = u_xlat44;
    let x_1878 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1876, x_1876, x_1876) * x_1878);
    let x_1880 : vec3<f32> = u_xlat17;
    let x_1881 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(x_1880, x_1881);
    let x_1883 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1883, 0.0f, 1.0f);
    let x_1885 : vec3<f32> = u_xlat10;
    let x_1886 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1885, x_1886);
    let x_1890 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1890, 0.0f, 1.0f);
    let x_1893 : f32 = u_xlat44;
    let x_1894 : f32 = u_xlat44;
    u_xlat44 = (x_1893 * x_1894);
    let x_1896 : f32 = u_xlat44;
    let x_1898 : f32 = u_xlat9.x;
    u_xlat44 = ((x_1896 * x_1898) + 1.000010014f);
    let x_1902 : f32 = u_xlat3.x;
    let x_1904 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1902 * x_1904);
    let x_1907 : f32 = u_xlat44;
    let x_1908 : f32 = u_xlat44;
    u_xlat44 = (x_1907 * x_1908);
    let x_1911 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1911, 0.100000001f);
    let x_1914 : f32 = u_xlat44;
    let x_1916 : f32 = u_xlat3.x;
    u_xlat44 = (x_1914 * x_1916);
    let x_1918 : f32 = u_xlat47;
    let x_1919 : f32 = u_xlat44;
    u_xlat44 = (x_1918 * x_1919);
    let x_1921 : f32 = u_xlat46;
    let x_1922 : f32 = u_xlat44;
    u_xlat44 = (x_1921 / x_1922);
    let x_1924 : f32 = u_xlat44;
    let x_1927 : vec3<f32> = u_xlat2;
    u_xlat23 = ((vec3<f32>(x_1924, x_1924, x_1924) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1927);
    let x_1929 : vec3<f32> = u_xlat23;
    let x_1930 : vec4<f32> = u_xlat11;
    let x_1933 : vec4<f32> = u_xlat8;
    let x_1935 : vec3<f32> = ((x_1929 * vec3<f32>(x_1930.x, x_1930.y, x_1930.z)) + vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
    let x_1936 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);

    continuing {
      let x_1938 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1938 + bitcast<u32>(1i));
    }
  }
  let x_1940 : vec4<f32> = u_xlat5;
  let x_1942 : vec3<f32> = u_xlat6;
  let x_1945 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1940.x, x_1940.y, x_1940.z) * vec3<f32>(x_1942.x, x_1942.x, x_1942.x)) + vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : vec4<f32> = u_xlat8;
  let x_1950 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1948.x, x_1948.y, x_1948.z) + x_1950);
  let x_1952 : vec4<f32> = vs_INTERP4;
  let x_1954 : vec3<f32> = u_xlat0;
  let x_1956 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1952.w, x_1952.w, x_1952.w) * x_1954) + x_1956);
  let x_1959 : f32 = u_xlat15.x;
  let x_1961 : f32 = u_xlat15.x;
  u_xlat42 = (x_1959 * -(x_1961));
  let x_1964 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1964);
  let x_1966 : vec3<f32> = u_xlat0;
  let x_1969 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1966 + -(vec3<f32>(x_1969.x, x_1969.y, x_1969.z)));
  let x_1975 : f32 = u_xlat42;
  let x_1977 : vec3<f32> = u_xlat0;
  let x_1980 : vec4<f32> = x_66.unity_FogColor;
  let x_1982 : vec3<f32> = ((vec3<f32>(x_1975, x_1975, x_1975) * x_1977) + vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
  let x_1983 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1985 : bool = u_xlatb29;
  if (x_1985) {
    let x_1990 : f32 = u_xlat1.x;
    x_1986 = x_1990;
  } else {
    x_1986 = 1.0f;
  }
  let x_1992 : f32 = x_1986;
  SV_Target0.w = x_1992;
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

