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

@group(1) @binding(4) var<uniform> x_836 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1289 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1392 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_606 : f32;
  var x_619 : f32;
  var x_631 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_919 : f32;
  var x_930 : vec3<f32>;
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
  var x_1687 : f32;
  var x_1700 : f32;
  var x_1752 : f32;
  var x_1763 : vec3<f32>;
  var x_1928 : f32;
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
  let x_605 : bool = u_xlatb15.x;
  if (x_605) {
    let x_610 : f32 = u_xlat4.x;
    x_606 = x_610;
  } else {
    let x_614 : f32 = x_66.unity_MatrixV[0i].z;
    x_606 = x_614;
  }
  let x_615 : f32 = x_606;
  u_xlat5.x = x_615;
  let x_618 : bool = u_xlatb15.x;
  if (x_618) {
    let x_623 : f32 = u_xlat4.y;
    x_619 = x_623;
  } else {
    let x_626 : f32 = x_66.unity_MatrixV[1i].z;
    x_619 = x_626;
  }
  let x_627 : f32 = x_619;
  u_xlat5.y = x_627;
  let x_630 : bool = u_xlatb15.x;
  if (x_630) {
    let x_635 : f32 = u_xlat4.z;
    x_631 = x_635;
  } else {
    let x_638 : f32 = x_66.unity_MatrixV[2i].z;
    x_631 = x_638;
  }
  let x_639 : f32 = x_631;
  u_xlat5.z = x_639;
  let x_648 : vec2<f32> = vs_INTERP5;
  let x_650 : f32 = x_66.x_GlobalMipBias.x;
  let x_651 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_648, x_650);
  u_xlat4 = x_651;
  let x_656 : vec2<f32> = vs_INTERP5;
  let x_658 : f32 = x_66.x_GlobalMipBias.x;
  let x_659 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_656, x_658);
  u_xlat6 = vec3<f32>(x_659.x, x_659.y, x_659.z);
  let x_661 : vec4<f32> = u_xlat4;
  let x_665 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_666 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : vec3<f32> = u_xlat17;
  let x_669 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(x_668, vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_674 : f32 = u_xlat15.x;
  u_xlat15.x = (x_674 + 0.5f);
  let x_677 : vec3<f32> = u_xlat15;
  let x_679 : vec3<f32> = u_xlat6;
  let x_680 : vec3<f32> = (vec3<f32>(x_677.x, x_677.x, x_677.x) * x_679);
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : f32 = u_xlat4.w;
  u_xlat15.x = max(x_684, 0.0001f);
  let x_687 : vec4<f32> = u_xlat4;
  let x_689 : vec3<f32> = u_xlat15;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) / vec3<f32>(x_689.x, x_689.x, x_689.x));
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_696 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_697 : vec2<f32> = vec2<f32>(x_696.x, x_696.y);
  let x_701 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_697.x, x_697.y));
  let x_702 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_701.x, x_702.y, x_701.y);
  let x_704 : vec3<f32> = u_xlat15;
  let x_706 : vec4<f32> = hlslcc_FragCoord;
  let x_708 : vec2<f32> = (vec2<f32>(x_704.x, x_704.z) * vec2<f32>(x_706.x, x_706.y));
  let x_709 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_708.x, x_708.y, x_709.z);
  let x_712 : f32 = u_xlat6.y;
  let x_715 : f32 = x_66.x_ScaleBiasRt.x;
  let x_718 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_712 * x_715) + x_718);
  let x_722 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_722) + 1.0f);
  let x_727 : f32 = u_xlat3.x;
  u_xlat3.x = x_727;
  let x_730 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_730, 0.0f, 1.0f);
  let x_734 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_734, 1.0f);
  let x_737 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_737 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_742 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_742) + 1.0f);
  let x_747 : f32 = u_xlat15.x;
  let x_749 : f32 = u_xlat15.x;
  u_xlat43 = (x_747 * x_749);
  let x_751 : f32 = u_xlat43;
  u_xlat43 = max(x_751, 0.0078125f);
  let x_754 : f32 = u_xlat43;
  let x_755 : f32 = u_xlat43;
  u_xlat44 = (x_754 * x_755);
  let x_758 : f32 = u_xlat3.x;
  u_xlat3.x = (x_758 + 0.040000021f);
  let x_763 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_763, 1.0f);
  let x_767 : f32 = u_xlat43;
  u_xlat46 = ((x_767 * 4.0f) + 2.0f);
  let x_776 : vec3<f32> = u_xlat6;
  let x_779 : f32 = x_66.x_GlobalMipBias.x;
  let x_780 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_776.x, x_776.z), x_779);
  u_xlat47 = x_780.x;
  let x_782 : f32 = u_xlat47;
  u_xlat6.x = (x_782 + -1.0f);
  let x_786 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_788 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_786 * x_788) + 1.0f);
  let x_792 : f32 = u_xlat47;
  let x_794 : f32 = vs_INTERP4.w;
  u_xlat47 = min(x_792, x_794);
  let x_797 : vec3<f32> = vs_INTERP0;
  let x_799 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_797 + -(x_799));
  let x_802 : vec3<f32> = u_xlat20;
  let x_803 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_802, x_803);
  let x_807 : f32 = u_xlat20.x;
  let x_809 : f32 = x_138.x_MainLightShadowParams.z;
  let x_812 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_807 * x_809) + x_812);
  let x_816 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_816, 0.0f, 1.0f);
  let x_820 : f32 = u_xlat42;
  u_xlat34 = (-(x_820) + 1.0f);
  let x_824 : f32 = u_xlat20.x;
  let x_825 : f32 = u_xlat34;
  let x_827 : f32 = u_xlat42;
  u_xlat42 = ((x_824 * x_825) + x_827);
  let x_838 : f32 = x_836.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_838 == -1.0f));
  let x_842 : bool = u_xlatb20.x;
  if (x_842) {
    let x_845 : vec3<f32> = vs_INTERP0;
    let x_848 : vec4<f32> = x_836.x_MainLightWorldToLight[1i];
    let x_850 : vec2<f32> = (vec2<f32>(x_845.y, x_845.y) * vec2<f32>(x_848.x, x_848.y));
    let x_851 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_850.x, x_850.y, x_851.z);
    let x_854 : vec4<f32> = x_836.x_MainLightWorldToLight[0i];
    let x_856 : vec3<f32> = vs_INTERP0;
    let x_859 : vec3<f32> = u_xlat20;
    let x_861 : vec2<f32> = ((vec2<f32>(x_854.x, x_854.y) * vec2<f32>(x_856.x, x_856.x)) + vec2<f32>(x_859.x, x_859.y));
    let x_862 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_861.x, x_861.y, x_862.z);
    let x_865 : vec4<f32> = x_836.x_MainLightWorldToLight[2i];
    let x_867 : vec3<f32> = vs_INTERP0;
    let x_870 : vec3<f32> = u_xlat20;
    let x_872 : vec2<f32> = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_867.z, x_867.z)) + vec2<f32>(x_870.x, x_870.y));
    let x_873 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_872.x, x_872.y, x_873.z);
    let x_875 : vec3<f32> = u_xlat20;
    let x_878 : vec4<f32> = x_836.x_MainLightWorldToLight[3i];
    let x_880 : vec2<f32> = (vec2<f32>(x_875.x, x_875.y) + vec2<f32>(x_878.x, x_878.y));
    let x_881 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_880.x, x_880.y, x_881.z);
    let x_883 : vec3<f32> = u_xlat20;
    let x_887 : vec2<f32> = ((vec2<f32>(x_883.x, x_883.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_888 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_887.x, x_887.y, x_888.z);
    let x_895 : vec3<f32> = u_xlat20;
    let x_898 : f32 = x_66.x_GlobalMipBias.x;
    let x_899 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_895.x, x_895.y), x_898);
    u_xlat7 = x_899;
    let x_901 : f32 = x_836.x_MainLightCookieTextureFormat;
    let x_903 : f32 = x_836.x_MainLightCookieTextureFormat;
    let x_905 : f32 = x_836.x_MainLightCookieTextureFormat;
    let x_907 : f32 = x_836.x_MainLightCookieTextureFormat;
    let x_908 : vec4<f32> = vec4<f32>(x_901, x_903, x_905, x_907);
    let x_915 : vec4<bool> = (vec4<f32>(x_908.x, x_908.y, x_908.z, x_908.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_915.x, x_915.y);
    let x_918 : bool = u_xlatb20.y;
    if (x_918) {
      let x_923 : f32 = u_xlat7.w;
      x_919 = x_923;
    } else {
      let x_926 : f32 = u_xlat7.x;
      x_919 = x_926;
    }
    let x_927 : f32 = x_919;
    u_xlat34 = x_927;
    let x_929 : bool = u_xlatb20.x;
    if (x_929) {
      let x_933 : vec4<f32> = u_xlat7;
      x_930 = vec3<f32>(x_933.x, x_933.y, x_933.z);
    } else {
      let x_936 : f32 = u_xlat34;
      x_930 = vec3<f32>(x_936, x_936, x_936);
    }
    let x_938 : vec3<f32> = x_930;
    u_xlat20 = x_938;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_943 : vec3<f32> = u_xlat20;
  let x_945 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_943 * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec3<f32> = u_xlat6;
  let x_950 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_948.x, x_948.x, x_948.x) * x_950);
  let x_952 : vec4<f32> = u_xlat5;
  let x_955 : vec3<f32> = u_xlat17;
  u_xlat7.x = dot(-(vec3<f32>(x_952.x, x_952.y, x_952.z)), x_955);
  let x_959 : f32 = u_xlat7.x;
  let x_961 : f32 = u_xlat7.x;
  u_xlat7.x = (x_959 + x_961);
  let x_964 : vec3<f32> = u_xlat17;
  let x_965 : vec4<f32> = u_xlat7;
  let x_969 : vec4<f32> = u_xlat5;
  let x_972 : vec3<f32> = ((x_964 * -(vec3<f32>(x_965.x, x_965.x, x_965.x))) + -(vec3<f32>(x_969.x, x_969.y, x_969.z)));
  let x_973 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_976 : vec3<f32> = u_xlat17;
  let x_977 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(x_976, vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : f32 = u_xlat49;
  u_xlat49 = clamp(x_980, 0.0f, 1.0f);
  let x_982 : f32 = u_xlat49;
  u_xlat49 = (-(x_982) + 1.0f);
  let x_985 : f32 = u_xlat49;
  let x_986 : f32 = u_xlat49;
  u_xlat49 = (x_985 * x_986);
  let x_988 : f32 = u_xlat49;
  let x_989 : f32 = u_xlat49;
  u_xlat49 = (x_988 * x_989);
  let x_993 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_993) * 0.699999988f) + 1.700000048f);
  let x_1001 : f32 = u_xlat15.x;
  let x_1003 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1001 * x_1003);
  let x_1007 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1007 * 6.0f);
  let x_1019 : vec4<f32> = u_xlat7;
  let x_1022 : f32 = u_xlat15.x;
  let x_1023 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1019.x, x_1019.y, x_1019.z), x_1022);
  u_xlat8 = x_1023;
  let x_1025 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1025 + -1.0f);
  let x_1029 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_1031 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1029 * x_1031) + 1.0f);
  let x_1036 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1036, 0.0f);
  let x_1040 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1040);
  let x_1044 : f32 = u_xlat15.x;
  let x_1046 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1044 * x_1046);
  let x_1050 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1050);
  let x_1054 : f32 = u_xlat15.x;
  let x_1056 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1054 * x_1056);
  let x_1059 : vec4<f32> = u_xlat8;
  let x_1061 : vec3<f32> = u_xlat15;
  let x_1063 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * vec3<f32>(x_1061.x, x_1061.x, x_1061.x));
  let x_1064 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  let x_1066 : f32 = u_xlat43;
  let x_1068 : f32 = u_xlat43;
  let x_1072 : vec2<f32> = ((vec2<f32>(x_1066, x_1066) * vec2<f32>(x_1068, x_1068)) + vec2<f32>(-1.0f, 1.0f));
  let x_1073 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1072.x, x_1073.y, x_1072.y);
  let x_1076 : f32 = u_xlat15.z;
  u_xlat43 = (1.0f / x_1076);
  let x_1079 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1079 + -0.039999999f);
  let x_1083 : f32 = u_xlat49;
  let x_1085 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1083 * x_1085) + 0.039999999f);
  let x_1090 : f32 = u_xlat43;
  let x_1092 : f32 = u_xlat3.x;
  u_xlat43 = (x_1090 * x_1092);
  let x_1094 : f32 = u_xlat43;
  let x_1096 : vec4<f32> = u_xlat7;
  let x_1098 : vec3<f32> = (vec3<f32>(x_1094, x_1094, x_1094) * vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1099 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : vec4<f32> = u_xlat4;
  let x_1103 : vec3<f32> = u_xlat2;
  let x_1105 : vec4<f32> = u_xlat7;
  let x_1107 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * x_1103) + vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : f32 = u_xlat42;
  let x_1112 : f32 = x_496.unity_LightData.z;
  u_xlat42 = (x_1110 * x_1112);
  let x_1114 : vec3<f32> = u_xlat17;
  let x_1116 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat43 = dot(x_1114, vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1119, 0.0f, 1.0f);
  let x_1121 : f32 = u_xlat42;
  let x_1122 : f32 = u_xlat43;
  u_xlat42 = (x_1121 * x_1122);
  let x_1124 : f32 = u_xlat42;
  let x_1126 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1124, x_1124, x_1124) * x_1126);
  let x_1128 : vec4<f32> = u_xlat5;
  let x_1131 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1133 : vec3<f32> = (vec3<f32>(x_1128.x, x_1128.y, x_1128.z) + vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
  let x_1136 : vec4<f32> = u_xlat7;
  let x_1138 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1136.x, x_1136.y, x_1136.z), vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : f32 = u_xlat42;
  u_xlat42 = max(x_1141, 1.17549435e-37f);
  let x_1144 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1144);
  let x_1146 : f32 = u_xlat42;
  let x_1148 : vec4<f32> = u_xlat7;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146, x_1146, x_1146) * vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec3<f32> = u_xlat17;
  let x_1154 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_1153, vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1157, 0.0f, 1.0f);
  let x_1160 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1162 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1160.x, x_1160.y, x_1160.z), vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1165, 0.0f, 1.0f);
  let x_1167 : f32 = u_xlat42;
  let x_1168 : f32 = u_xlat42;
  u_xlat42 = (x_1167 * x_1168);
  let x_1170 : f32 = u_xlat42;
  let x_1172 : f32 = u_xlat15.x;
  u_xlat42 = ((x_1170 * x_1172) + 1.000010014f);
  let x_1176 : f32 = u_xlat43;
  let x_1177 : f32 = u_xlat43;
  u_xlat43 = (x_1176 * x_1177);
  let x_1179 : f32 = u_xlat42;
  let x_1180 : f32 = u_xlat42;
  u_xlat42 = (x_1179 * x_1180);
  let x_1182 : f32 = u_xlat43;
  u_xlat43 = max(x_1182, 0.100000001f);
  let x_1185 : f32 = u_xlat42;
  let x_1186 : f32 = u_xlat43;
  u_xlat42 = (x_1185 * x_1186);
  let x_1188 : f32 = u_xlat46;
  let x_1189 : f32 = u_xlat42;
  u_xlat42 = (x_1188 * x_1189);
  let x_1191 : f32 = u_xlat44;
  let x_1192 : f32 = u_xlat42;
  u_xlat42 = (x_1191 / x_1192);
  let x_1194 : f32 = u_xlat42;
  let x_1198 : vec3<f32> = u_xlat2;
  let x_1199 : vec3<f32> = ((vec3<f32>(x_1194, x_1194, x_1194) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1198);
  let x_1200 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : vec3<f32> = u_xlat20;
  let x_1203 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1202 * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1208 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1210 : f32 = x_496.unity_LightData.y;
  u_xlat42 = min(x_1208, x_1210);
  let x_1212 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1212));
  let x_1217 : f32 = x_836.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1219 : f32 = x_836.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1221 : f32 = x_836.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1223 : f32 = x_836.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1224 : vec4<f32> = vec4<f32>(x_1217, x_1219, x_1221, x_1223);
  let x_1230 : vec4<bool> = (vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1224.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1230.x, x_1230.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1241 : u32 = u_xlatu_loop_1;
    let x_1242 : u32 = u_xlatu42;
    if ((x_1241 < x_1242)) {
    } else {
      break;
    }
    let x_1245 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1245 >> 2u);
    let x_1248 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1248 & 3u));
    let x_1251 : u32 = u_xlatu3;
    let x_1254 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1251)];
    let x_1264 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1269 : vec4<u32> = indexable[x_1264];
    u_xlat3.x = dot(x_1254, bitcast<vec4<f32>>(x_1269));
    let x_1274 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_1274));
    let x_1278 : vec3<f32> = vs_INTERP0;
    let x_1290 : u32 = u_xlatu3;
    let x_1293 : vec4<f32> = x_1289.x_AdditionalLightsPosition[bitcast<i32>(x_1290)];
    let x_1296 : u32 = u_xlatu3;
    let x_1299 : vec4<f32> = x_1289.x_AdditionalLightsPosition[bitcast<i32>(x_1296)];
    u_xlat9 = ((-(x_1278) * vec3<f32>(x_1293.w, x_1293.w, x_1293.w)) + vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
    let x_1303 : vec3<f32> = u_xlat9;
    let x_1304 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1303, x_1304);
    let x_1306 : f32 = u_xlat35;
    u_xlat35 = max(x_1306, 6.10351562e-05f);
    let x_1309 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1309);
    let x_1312 : f32 = u_xlat49;
    let x_1314 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1312, x_1312, x_1312) * x_1314);
    let x_1317 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1317);
    let x_1319 : f32 = u_xlat35;
    let x_1320 : u32 = u_xlatu3;
    let x_1323 : f32 = x_1289.x_AdditionalLightsAttenuation[bitcast<i32>(x_1320)].x;
    u_xlat35 = (x_1319 * x_1323);
    let x_1325 : f32 = u_xlat35;
    let x_1327 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1325) * x_1327) + 1.0f);
    let x_1330 : f32 = u_xlat35;
    u_xlat35 = max(x_1330, 0.0f);
    let x_1332 : f32 = u_xlat35;
    let x_1333 : f32 = u_xlat35;
    u_xlat35 = (x_1332 * x_1333);
    let x_1335 : f32 = u_xlat35;
    let x_1336 : f32 = u_xlat50;
    u_xlat35 = (x_1335 * x_1336);
    let x_1338 : u32 = u_xlatu3;
    let x_1341 : vec4<f32> = x_1289.x_AdditionalLightsSpotDir[bitcast<i32>(x_1338)];
    let x_1343 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1341.x, x_1341.y, x_1341.z), x_1343);
    let x_1345 : f32 = u_xlat50;
    let x_1346 : u32 = u_xlatu3;
    let x_1349 : f32 = x_1289.x_AdditionalLightsAttenuation[bitcast<i32>(x_1346)].z;
    let x_1351 : u32 = u_xlatu3;
    let x_1354 : f32 = x_1289.x_AdditionalLightsAttenuation[bitcast<i32>(x_1351)].w;
    u_xlat50 = ((x_1345 * x_1349) + x_1354);
    let x_1356 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1356, 0.0f, 1.0f);
    let x_1358 : f32 = u_xlat50;
    let x_1359 : f32 = u_xlat50;
    u_xlat50 = (x_1358 * x_1359);
    let x_1361 : f32 = u_xlat35;
    let x_1362 : f32 = u_xlat50;
    u_xlat35 = (x_1361 * x_1362);
    let x_1365 : u32 = u_xlatu3;
    u_xlatu50 = (x_1365 >> 5u);
    let x_1368 : u32 = u_xlatu3;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1368) & 31i)));
    let x_1374 : i32 = u_xlati51;
    let x_1376 : u32 = u_xlatu50;
    let x_1379 : f32 = x_836.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1376)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1374) & bitcast<u32>(x_1379)));
    let x_1383 : i32 = u_xlati50;
    if ((x_1383 != 0i)) {
      let x_1393 : u32 = u_xlatu3;
      let x_1396 : f32 = x_1392.x_AdditionalLightsLightTypes[bitcast<i32>(x_1393)].el;
      u_xlati50 = i32(x_1396);
      let x_1398 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1398 != 0i));
      let x_1402 : u32 = u_xlatu3;
      u_xlati52 = (bitcast<i32>(x_1402) << bitcast<u32>(2i));
      let x_1405 : i32 = u_xlati51;
      if ((x_1405 != 0i)) {
        let x_1410 : vec3<f32> = vs_INTERP0;
        let x_1412 : i32 = u_xlati52;
        let x_1415 : i32 = u_xlati52;
        let x_1419 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1412 + 1i) / 4i)][((x_1415 + 1i) % 4i)];
        let x_1421 : vec3<f32> = (vec3<f32>(x_1410.y, x_1410.y, x_1410.y) * vec3<f32>(x_1419.x, x_1419.y, x_1419.w));
        let x_1422 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
        let x_1424 : i32 = u_xlati52;
        let x_1426 : i32 = u_xlati52;
        let x_1429 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[(x_1424 / 4i)][(x_1426 % 4i)];
        let x_1431 : vec3<f32> = vs_INTERP0;
        let x_1434 : vec4<f32> = u_xlat11;
        let x_1436 : vec3<f32> = ((vec3<f32>(x_1429.x, x_1429.y, x_1429.w) * vec3<f32>(x_1431.x, x_1431.x, x_1431.x)) + vec3<f32>(x_1434.x, x_1434.y, x_1434.z));
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
        let x_1439 : i32 = u_xlati52;
        let x_1442 : i32 = u_xlati52;
        let x_1446 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1439 + 2i) / 4i)][((x_1442 + 2i) % 4i)];
        let x_1448 : vec3<f32> = vs_INTERP0;
        let x_1451 : vec4<f32> = u_xlat11;
        let x_1453 : vec3<f32> = ((vec3<f32>(x_1446.x, x_1446.y, x_1446.w) * vec3<f32>(x_1448.z, x_1448.z, x_1448.z)) + vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
        let x_1454 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
        let x_1456 : vec4<f32> = u_xlat11;
        let x_1458 : i32 = u_xlati52;
        let x_1461 : i32 = u_xlati52;
        let x_1465 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1458 + 3i) / 4i)][((x_1461 + 3i) % 4i)];
        let x_1467 : vec3<f32> = (vec3<f32>(x_1456.x, x_1456.y, x_1456.z) + vec3<f32>(x_1465.x, x_1465.y, x_1465.w));
        let x_1468 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
        let x_1470 : vec4<f32> = u_xlat11;
        let x_1472 : vec4<f32> = u_xlat11;
        let x_1474 : vec2<f32> = (vec2<f32>(x_1470.x, x_1470.y) / vec2<f32>(x_1472.z, x_1472.z));
        let x_1475 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1474.x, x_1474.y, x_1475.z, x_1475.w);
        let x_1477 : vec4<f32> = u_xlat11;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1477.x, x_1477.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1480.x, x_1480.y, x_1481.z, x_1481.w);
        let x_1483 : vec4<f32> = u_xlat11;
        let x_1487 : vec2<f32> = clamp(vec2<f32>(x_1483.x, x_1483.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1488 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1487.x, x_1487.y, x_1488.z, x_1488.w);
        let x_1490 : u32 = u_xlatu3;
        let x_1493 : vec4<f32> = x_1392.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1490)];
        let x_1495 : vec4<f32> = u_xlat11;
        let x_1498 : u32 = u_xlatu3;
        let x_1501 : vec4<f32> = x_1392.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1498)];
        let x_1503 : vec2<f32> = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1495.x, x_1495.y)) + vec2<f32>(x_1501.z, x_1501.w));
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
      } else {
        let x_1508 : i32 = u_xlati50;
        u_xlatb50 = (x_1508 == 1i);
        let x_1510 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1510);
        let x_1512 : i32 = u_xlati50;
        if ((x_1512 != 0i)) {
          let x_1518 : vec3<f32> = vs_INTERP0;
          let x_1520 : i32 = u_xlati52;
          let x_1523 : i32 = u_xlati52;
          let x_1527 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1520 + 1i) / 4i)][((x_1523 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1518.y, x_1518.y) * vec2<f32>(x_1527.x, x_1527.y));
          let x_1530 : i32 = u_xlati52;
          let x_1532 : i32 = u_xlati52;
          let x_1535 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[(x_1530 / 4i)][(x_1532 % 4i)];
          let x_1537 : vec3<f32> = vs_INTERP0;
          let x_1540 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1535.x, x_1535.y) * vec2<f32>(x_1537.x, x_1537.x)) + x_1540);
          let x_1542 : i32 = u_xlati52;
          let x_1545 : i32 = u_xlati52;
          let x_1549 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1542 + 2i) / 4i)][((x_1545 + 2i) % 4i)];
          let x_1551 : vec3<f32> = vs_INTERP0;
          let x_1554 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1549.x, x_1549.y) * vec2<f32>(x_1551.z, x_1551.z)) + x_1554);
          let x_1556 : vec2<f32> = u_xlat39;
          let x_1557 : i32 = u_xlati52;
          let x_1560 : i32 = u_xlati52;
          let x_1564 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1557 + 3i) / 4i)][((x_1560 + 3i) % 4i)];
          u_xlat39 = (x_1556 + vec2<f32>(x_1564.x, x_1564.y));
          let x_1567 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1567 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1570 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1570);
          let x_1572 : u32 = u_xlatu3;
          let x_1575 : vec4<f32> = x_1392.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1572)];
          let x_1577 : vec2<f32> = u_xlat39;
          let x_1579 : u32 = u_xlatu3;
          let x_1582 : vec4<f32> = x_1392.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1579)];
          let x_1584 : vec2<f32> = ((vec2<f32>(x_1575.x, x_1575.y) * x_1577) + vec2<f32>(x_1582.z, x_1582.w));
          let x_1585 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1584.x, x_1584.y, x_1585.z, x_1585.w);
        } else {
          let x_1589 : vec3<f32> = vs_INTERP0;
          let x_1591 : i32 = u_xlati52;
          let x_1594 : i32 = u_xlati52;
          let x_1598 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1591 + 1i) / 4i)][((x_1594 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1589.y, x_1589.y, x_1589.y, x_1589.y) * x_1598);
          let x_1600 : i32 = u_xlati52;
          let x_1602 : i32 = u_xlati52;
          let x_1605 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[(x_1600 / 4i)][(x_1602 % 4i)];
          let x_1606 : vec3<f32> = vs_INTERP0;
          let x_1609 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1605 * vec4<f32>(x_1606.x, x_1606.x, x_1606.x, x_1606.x)) + x_1609);
          let x_1611 : i32 = u_xlati52;
          let x_1614 : i32 = u_xlati52;
          let x_1618 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1611 + 2i) / 4i)][((x_1614 + 2i) % 4i)];
          let x_1619 : vec3<f32> = vs_INTERP0;
          let x_1622 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1618 * vec4<f32>(x_1619.z, x_1619.z, x_1619.z, x_1619.z)) + x_1622);
          let x_1624 : vec4<f32> = u_xlat12;
          let x_1625 : i32 = u_xlati52;
          let x_1628 : i32 = u_xlati52;
          let x_1632 : vec4<f32> = x_1392.x_AdditionalLightsWorldToLights[((x_1625 + 3i) / 4i)][((x_1628 + 3i) % 4i)];
          u_xlat12 = (x_1624 + x_1632);
          let x_1634 : vec4<f32> = u_xlat12;
          let x_1636 : vec4<f32> = u_xlat12;
          let x_1638 : vec3<f32> = (vec3<f32>(x_1634.x, x_1634.y, x_1634.z) / vec3<f32>(x_1636.w, x_1636.w, x_1636.w));
          let x_1639 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
          let x_1641 : vec4<f32> = u_xlat12;
          let x_1643 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1641.x, x_1641.y, x_1641.z), vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
          let x_1646 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1646);
          let x_1648 : f32 = u_xlat50;
          let x_1650 : vec4<f32> = u_xlat12;
          let x_1652 : vec3<f32> = (vec3<f32>(x_1648, x_1648, x_1648) * vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
          let x_1653 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
          let x_1655 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1655.x, x_1655.y, x_1655.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1660 : f32 = u_xlat50;
          u_xlat50 = max(x_1660, 0.000001f);
          let x_1663 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1663);
          let x_1666 : f32 = u_xlat50;
          let x_1668 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1666, x_1666, x_1666) * vec3<f32>(x_1668.z, x_1668.x, x_1668.y));
          let x_1672 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1672);
          let x_1676 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1676, 0.0f, 1.0f);
          let x_1680 : vec3<f32> = u_xlat13;
          let x_1683 : vec4<bool> = (vec4<f32>(x_1680.y, x_1680.z, x_1680.y, x_1680.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1683.x, x_1683.y);
          let x_1686 : bool = u_xlatb39.x;
          if (x_1686) {
            let x_1691 : f32 = u_xlat13.x;
            x_1687 = x_1691;
          } else {
            let x_1694 : f32 = u_xlat13.x;
            x_1687 = -(x_1694);
          }
          let x_1696 : f32 = x_1687;
          u_xlat39.x = x_1696;
          let x_1699 : bool = u_xlatb39.y;
          if (x_1699) {
            let x_1704 : f32 = u_xlat13.x;
            x_1700 = x_1704;
          } else {
            let x_1707 : f32 = u_xlat13.x;
            x_1700 = -(x_1707);
          }
          let x_1709 : f32 = x_1700;
          u_xlat39.y = x_1709;
          let x_1711 : vec4<f32> = u_xlat12;
          let x_1713 : f32 = u_xlat50;
          let x_1716 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1711.x, x_1711.y) * vec2<f32>(x_1713, x_1713)) + x_1716);
          let x_1718 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1718 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1721 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1721, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1725 : u32 = u_xlatu3;
          let x_1728 : vec4<f32> = x_1392.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1725)];
          let x_1730 : vec2<f32> = u_xlat39;
          let x_1732 : u32 = u_xlatu3;
          let x_1735 : vec4<f32> = x_1392.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1732)];
          let x_1737 : vec2<f32> = ((vec2<f32>(x_1728.x, x_1728.y) * x_1730) + vec2<f32>(x_1735.z, x_1735.w));
          let x_1738 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1737.x, x_1737.y, x_1738.z, x_1738.w);
        }
      }
      let x_1745 : vec4<f32> = u_xlat11;
      let x_1748 : f32 = x_66.x_GlobalMipBias.x;
      let x_1749 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1745.x, x_1745.y), x_1748);
      u_xlat11 = x_1749;
      let x_1751 : bool = u_xlatb7.y;
      if (x_1751) {
        let x_1756 : f32 = u_xlat11.w;
        x_1752 = x_1756;
      } else {
        let x_1759 : f32 = u_xlat11.x;
        x_1752 = x_1759;
      }
      let x_1760 : f32 = x_1752;
      u_xlat50 = x_1760;
      let x_1762 : bool = u_xlatb7.x;
      if (x_1762) {
        let x_1766 : vec4<f32> = u_xlat11;
        x_1763 = vec3<f32>(x_1766.x, x_1766.y, x_1766.z);
      } else {
        let x_1769 : f32 = u_xlat50;
        x_1763 = vec3<f32>(x_1769, x_1769, x_1769);
      }
      let x_1771 : vec3<f32> = x_1763;
      let x_1772 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1778 : vec4<f32> = u_xlat11;
    let x_1780 : u32 = u_xlatu3;
    let x_1783 : vec4<f32> = x_1289.x_AdditionalLightsColor[bitcast<i32>(x_1780)];
    let x_1785 : vec3<f32> = (vec3<f32>(x_1778.x, x_1778.y, x_1778.z) * vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
    let x_1786 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
    let x_1788 : vec3<f32> = u_xlat6;
    let x_1790 : vec4<f32> = u_xlat11;
    let x_1792 : vec3<f32> = (vec3<f32>(x_1788.x, x_1788.x, x_1788.x) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
    let x_1793 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
    let x_1795 : vec3<f32> = u_xlat17;
    let x_1796 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(x_1795, x_1796);
    let x_1800 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1800, 0.0f, 1.0f);
    let x_1804 : f32 = u_xlat3.x;
    let x_1805 : f32 = u_xlat35;
    u_xlat3.x = (x_1804 * x_1805);
    let x_1808 : vec4<f32> = u_xlat3;
    let x_1810 : vec4<f32> = u_xlat11;
    let x_1812 : vec3<f32> = (vec3<f32>(x_1808.x, x_1808.x, x_1808.x) * vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
    let x_1813 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
    let x_1815 : vec3<f32> = u_xlat9;
    let x_1816 : f32 = u_xlat49;
    let x_1819 : vec4<f32> = u_xlat5;
    u_xlat9 = ((x_1815 * vec3<f32>(x_1816, x_1816, x_1816)) + vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : vec3<f32> = u_xlat9;
    let x_1823 : vec3<f32> = u_xlat9;
    u_xlat3.x = dot(x_1822, x_1823);
    let x_1827 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1827, 1.17549435e-37f);
    let x_1831 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1831);
    let x_1834 : vec4<f32> = u_xlat3;
    let x_1836 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1834.x, x_1834.x, x_1834.x) * x_1836);
    let x_1838 : vec3<f32> = u_xlat17;
    let x_1839 : vec3<f32> = u_xlat9;
    u_xlat3.x = dot(x_1838, x_1839);
    let x_1843 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1843, 0.0f, 1.0f);
    let x_1846 : vec3<f32> = u_xlat10;
    let x_1847 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1846, x_1847);
    let x_1849 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1849, 0.0f, 1.0f);
    let x_1852 : f32 = u_xlat3.x;
    let x_1854 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1852 * x_1854);
    let x_1858 : f32 = u_xlat3.x;
    let x_1860 : f32 = u_xlat15.x;
    u_xlat3.x = ((x_1858 * x_1860) + 1.000010014f);
    let x_1864 : f32 = u_xlat35;
    let x_1865 : f32 = u_xlat35;
    u_xlat35 = (x_1864 * x_1865);
    let x_1868 : f32 = u_xlat3.x;
    let x_1870 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1868 * x_1870);
    let x_1873 : f32 = u_xlat35;
    u_xlat35 = max(x_1873, 0.100000001f);
    let x_1876 : f32 = u_xlat3.x;
    let x_1877 : f32 = u_xlat35;
    u_xlat3.x = (x_1876 * x_1877);
    let x_1880 : f32 = u_xlat46;
    let x_1882 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1880 * x_1882);
    let x_1885 : f32 = u_xlat44;
    let x_1887 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1885 / x_1887);
    let x_1890 : vec4<f32> = u_xlat3;
    let x_1893 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1890.x, x_1890.x, x_1890.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1893);
    let x_1895 : vec3<f32> = u_xlat9;
    let x_1896 : vec4<f32> = u_xlat11;
    let x_1899 : vec4<f32> = u_xlat8;
    let x_1901 : vec3<f32> = ((x_1895 * vec3<f32>(x_1896.x, x_1896.y, x_1896.z)) + vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
    let x_1902 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);

    continuing {
      let x_1904 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1904 + bitcast<u32>(1i));
    }
  }
  let x_1906 : vec4<f32> = u_xlat4;
  let x_1908 : f32 = u_xlat47;
  let x_1911 : vec3<f32> = u_xlat20;
  u_xlat2 = ((vec3<f32>(x_1906.x, x_1906.y, x_1906.z) * vec3<f32>(x_1908, x_1908, x_1908)) + x_1911);
  let x_1913 : vec4<f32> = u_xlat8;
  let x_1915 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) + x_1915);
  let x_1919 : vec4<f32> = vs_INTERP4;
  let x_1921 : vec3<f32> = u_xlat0;
  let x_1923 : vec3<f32> = u_xlat2;
  let x_1924 : vec3<f32> = ((vec3<f32>(x_1919.w, x_1919.w, x_1919.w) * x_1921) + x_1923);
  let x_1925 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : bool = u_xlatb29;
  if (x_1927) {
    let x_1932 : f32 = u_xlat1.x;
    x_1928 = x_1932;
  } else {
    x_1928 = 1.0f;
  }
  let x_1934 : f32 = x_1928;
  SV_Target0.w = x_1934;
  let x_1941 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1943 : f32 = x_496.unity_RenderingLayer.x;
  u_xlatu0 = (x_1941 & bitcast<u32>(x_1943));
  let x_1946 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1946);
  let x_1951 : f32 = u_xlat0.x;
  let x_1953 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1951 * x_1953);
  let x_1957 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1957, 0.0f, 1.0f);
  let x_1960 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1960.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

