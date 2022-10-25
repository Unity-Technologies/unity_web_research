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

@group(1) @binding(4) var<uniform> x_835 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1288 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1391 : AdditionalLightsCookies;

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
  var x_605 : f32;
  var x_618 : f32;
  var x_630 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_918 : f32;
  var x_929 : vec3<f32>;
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
  var x_1686 : f32;
  var x_1699 : f32;
  var x_1751 : f32;
  var x_1762 : vec3<f32>;
  var x_1927 : f32;
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
  let x_650 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_647, x_649);
  u_xlat4 = x_650;
  let x_655 : vec2<f32> = vs_INTERP5;
  let x_657 : f32 = x_66.x_GlobalMipBias.x;
  let x_658 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_655, x_657);
  u_xlat6 = vec3<f32>(x_658.x, x_658.y, x_658.z);
  let x_660 : vec4<f32> = u_xlat4;
  let x_664 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_665 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec3<f32> = u_xlat17;
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(x_667, vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_673 : f32 = u_xlat15.x;
  u_xlat15.x = (x_673 + 0.5f);
  let x_676 : vec3<f32> = u_xlat15;
  let x_678 : vec3<f32> = u_xlat6;
  let x_679 : vec3<f32> = (vec3<f32>(x_676.x, x_676.x, x_676.x) * x_678);
  let x_680 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_683 : f32 = u_xlat4.w;
  u_xlat15.x = max(x_683, 0.0001f);
  let x_686 : vec4<f32> = u_xlat4;
  let x_688 : vec3<f32> = u_xlat15;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) / vec3<f32>(x_688.x, x_688.x, x_688.x));
  let x_691 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_695 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_696 : vec2<f32> = vec2<f32>(x_695.x, x_695.y);
  let x_700 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_696.x, x_696.y));
  let x_701 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_700.x, x_701.y, x_700.y);
  let x_703 : vec3<f32> = u_xlat15;
  let x_705 : vec4<f32> = hlslcc_FragCoord;
  let x_707 : vec2<f32> = (vec2<f32>(x_703.x, x_703.z) * vec2<f32>(x_705.x, x_705.y));
  let x_708 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_707.x, x_707.y, x_708.z);
  let x_711 : f32 = u_xlat6.y;
  let x_714 : f32 = x_66.x_ScaleBiasRt.x;
  let x_717 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_711 * x_714) + x_717);
  let x_721 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_721) + 1.0f);
  let x_726 : f32 = u_xlat3.x;
  u_xlat3.x = x_726;
  let x_729 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_729, 0.0f, 1.0f);
  let x_733 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_733, 1.0f);
  let x_736 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_736 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_741 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_741) + 1.0f);
  let x_746 : f32 = u_xlat15.x;
  let x_748 : f32 = u_xlat15.x;
  u_xlat43 = (x_746 * x_748);
  let x_750 : f32 = u_xlat43;
  u_xlat43 = max(x_750, 0.0078125f);
  let x_753 : f32 = u_xlat43;
  let x_754 : f32 = u_xlat43;
  u_xlat44 = (x_753 * x_754);
  let x_757 : f32 = u_xlat3.x;
  u_xlat3.x = (x_757 + 0.040000021f);
  let x_762 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_762, 1.0f);
  let x_766 : f32 = u_xlat43;
  u_xlat46 = ((x_766 * 4.0f) + 2.0f);
  let x_775 : vec3<f32> = u_xlat6;
  let x_778 : f32 = x_66.x_GlobalMipBias.x;
  let x_779 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_775.x, x_775.z), x_778);
  u_xlat47 = x_779.x;
  let x_781 : f32 = u_xlat47;
  u_xlat6.x = (x_781 + -1.0f);
  let x_785 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_787 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_785 * x_787) + 1.0f);
  let x_791 : f32 = u_xlat47;
  let x_793 : f32 = vs_INTERP4.w;
  u_xlat47 = min(x_791, x_793);
  let x_796 : vec3<f32> = vs_INTERP0;
  let x_798 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_796 + -(x_798));
  let x_801 : vec3<f32> = u_xlat20;
  let x_802 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_801, x_802);
  let x_806 : f32 = u_xlat20.x;
  let x_808 : f32 = x_138.x_MainLightShadowParams.z;
  let x_811 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_806 * x_808) + x_811);
  let x_815 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_815, 0.0f, 1.0f);
  let x_819 : f32 = u_xlat42;
  u_xlat34 = (-(x_819) + 1.0f);
  let x_823 : f32 = u_xlat20.x;
  let x_824 : f32 = u_xlat34;
  let x_826 : f32 = u_xlat42;
  u_xlat42 = ((x_823 * x_824) + x_826);
  let x_837 : f32 = x_835.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_837 == -1.0f));
  let x_841 : bool = u_xlatb20.x;
  if (x_841) {
    let x_844 : vec3<f32> = vs_INTERP0;
    let x_847 : vec4<f32> = x_835.x_MainLightWorldToLight[1i];
    let x_849 : vec2<f32> = (vec2<f32>(x_844.y, x_844.y) * vec2<f32>(x_847.x, x_847.y));
    let x_850 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_849.x, x_849.y, x_850.z);
    let x_853 : vec4<f32> = x_835.x_MainLightWorldToLight[0i];
    let x_855 : vec3<f32> = vs_INTERP0;
    let x_858 : vec3<f32> = u_xlat20;
    let x_860 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_855.x, x_855.x)) + vec2<f32>(x_858.x, x_858.y));
    let x_861 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_860.x, x_860.y, x_861.z);
    let x_864 : vec4<f32> = x_835.x_MainLightWorldToLight[2i];
    let x_866 : vec3<f32> = vs_INTERP0;
    let x_869 : vec3<f32> = u_xlat20;
    let x_871 : vec2<f32> = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_866.z, x_866.z)) + vec2<f32>(x_869.x, x_869.y));
    let x_872 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_871.x, x_871.y, x_872.z);
    let x_874 : vec3<f32> = u_xlat20;
    let x_877 : vec4<f32> = x_835.x_MainLightWorldToLight[3i];
    let x_879 : vec2<f32> = (vec2<f32>(x_874.x, x_874.y) + vec2<f32>(x_877.x, x_877.y));
    let x_880 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_879.x, x_879.y, x_880.z);
    let x_882 : vec3<f32> = u_xlat20;
    let x_886 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_887 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_886.x, x_886.y, x_887.z);
    let x_894 : vec3<f32> = u_xlat20;
    let x_897 : f32 = x_66.x_GlobalMipBias.x;
    let x_898 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_894.x, x_894.y), x_897);
    u_xlat7 = x_898;
    let x_900 : f32 = x_835.x_MainLightCookieTextureFormat;
    let x_902 : f32 = x_835.x_MainLightCookieTextureFormat;
    let x_904 : f32 = x_835.x_MainLightCookieTextureFormat;
    let x_906 : f32 = x_835.x_MainLightCookieTextureFormat;
    let x_907 : vec4<f32> = vec4<f32>(x_900, x_902, x_904, x_906);
    let x_914 : vec4<bool> = (vec4<f32>(x_907.x, x_907.y, x_907.z, x_907.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_914.x, x_914.y);
    let x_917 : bool = u_xlatb20.y;
    if (x_917) {
      let x_922 : f32 = u_xlat7.w;
      x_918 = x_922;
    } else {
      let x_925 : f32 = u_xlat7.x;
      x_918 = x_925;
    }
    let x_926 : f32 = x_918;
    u_xlat34 = x_926;
    let x_928 : bool = u_xlatb20.x;
    if (x_928) {
      let x_932 : vec4<f32> = u_xlat7;
      x_929 = vec3<f32>(x_932.x, x_932.y, x_932.z);
    } else {
      let x_935 : f32 = u_xlat34;
      x_929 = vec3<f32>(x_935, x_935, x_935);
    }
    let x_937 : vec3<f32> = x_929;
    u_xlat20 = x_937;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_942 : vec3<f32> = u_xlat20;
  let x_944 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_942 * vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec3<f32> = u_xlat6;
  let x_949 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_947.x, x_947.x, x_947.x) * x_949);
  let x_951 : vec4<f32> = u_xlat5;
  let x_954 : vec3<f32> = u_xlat17;
  u_xlat7.x = dot(-(vec3<f32>(x_951.x, x_951.y, x_951.z)), x_954);
  let x_958 : f32 = u_xlat7.x;
  let x_960 : f32 = u_xlat7.x;
  u_xlat7.x = (x_958 + x_960);
  let x_963 : vec3<f32> = u_xlat17;
  let x_964 : vec4<f32> = u_xlat7;
  let x_968 : vec4<f32> = u_xlat5;
  let x_971 : vec3<f32> = ((x_963 * -(vec3<f32>(x_964.x, x_964.x, x_964.x))) + -(vec3<f32>(x_968.x, x_968.y, x_968.z)));
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_975 : vec3<f32> = u_xlat17;
  let x_976 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(x_975, vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : f32 = u_xlat49;
  u_xlat49 = clamp(x_979, 0.0f, 1.0f);
  let x_981 : f32 = u_xlat49;
  u_xlat49 = (-(x_981) + 1.0f);
  let x_984 : f32 = u_xlat49;
  let x_985 : f32 = u_xlat49;
  u_xlat49 = (x_984 * x_985);
  let x_987 : f32 = u_xlat49;
  let x_988 : f32 = u_xlat49;
  u_xlat49 = (x_987 * x_988);
  let x_992 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_992) * 0.699999988f) + 1.700000048f);
  let x_1000 : f32 = u_xlat15.x;
  let x_1002 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1000 * x_1002);
  let x_1006 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1006 * 6.0f);
  let x_1018 : vec4<f32> = u_xlat7;
  let x_1021 : f32 = u_xlat15.x;
  let x_1022 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1018.x, x_1018.y, x_1018.z), x_1021);
  u_xlat8 = x_1022;
  let x_1024 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1024 + -1.0f);
  let x_1028 : f32 = x_496.unity_SpecCube0_HDR.w;
  let x_1030 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1028 * x_1030) + 1.0f);
  let x_1035 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1035, 0.0f);
  let x_1039 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1039);
  let x_1043 : f32 = u_xlat15.x;
  let x_1045 : f32 = x_496.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1043 * x_1045);
  let x_1049 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1049);
  let x_1053 : f32 = u_xlat15.x;
  let x_1055 : f32 = x_496.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1053 * x_1055);
  let x_1058 : vec4<f32> = u_xlat8;
  let x_1060 : vec3<f32> = u_xlat15;
  let x_1062 : vec3<f32> = (vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * vec3<f32>(x_1060.x, x_1060.x, x_1060.x));
  let x_1063 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1065 : f32 = u_xlat43;
  let x_1067 : f32 = u_xlat43;
  let x_1071 : vec2<f32> = ((vec2<f32>(x_1065, x_1065) * vec2<f32>(x_1067, x_1067)) + vec2<f32>(-1.0f, 1.0f));
  let x_1072 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1071.x, x_1072.y, x_1071.y);
  let x_1075 : f32 = u_xlat15.z;
  u_xlat43 = (1.0f / x_1075);
  let x_1078 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1078 + -0.039999999f);
  let x_1082 : f32 = u_xlat49;
  let x_1084 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1082 * x_1084) + 0.039999999f);
  let x_1089 : f32 = u_xlat43;
  let x_1091 : f32 = u_xlat3.x;
  u_xlat43 = (x_1089 * x_1091);
  let x_1093 : f32 = u_xlat43;
  let x_1095 : vec4<f32> = u_xlat7;
  let x_1097 : vec3<f32> = (vec3<f32>(x_1093, x_1093, x_1093) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat4;
  let x_1102 : vec3<f32> = u_xlat2;
  let x_1104 : vec4<f32> = u_xlat7;
  let x_1106 : vec3<f32> = ((vec3<f32>(x_1100.x, x_1100.y, x_1100.z) * x_1102) + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : f32 = u_xlat42;
  let x_1111 : f32 = x_496.unity_LightData.z;
  u_xlat42 = (x_1109 * x_1111);
  let x_1113 : vec3<f32> = u_xlat17;
  let x_1115 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat43 = dot(x_1113, vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1118, 0.0f, 1.0f);
  let x_1120 : f32 = u_xlat42;
  let x_1121 : f32 = u_xlat43;
  u_xlat42 = (x_1120 * x_1121);
  let x_1123 : f32 = u_xlat42;
  let x_1125 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1123, x_1123, x_1123) * x_1125);
  let x_1127 : vec4<f32> = u_xlat5;
  let x_1130 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1132 : vec3<f32> = (vec3<f32>(x_1127.x, x_1127.y, x_1127.z) + vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec4<f32> = u_xlat7;
  let x_1137 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1135.x, x_1135.y, x_1135.z), vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : f32 = u_xlat42;
  u_xlat42 = max(x_1140, 1.17549435e-37f);
  let x_1143 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1143);
  let x_1145 : f32 = u_xlat42;
  let x_1147 : vec4<f32> = u_xlat7;
  let x_1149 : vec3<f32> = (vec3<f32>(x_1145, x_1145, x_1145) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : vec3<f32> = u_xlat17;
  let x_1153 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_1152, vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1156, 0.0f, 1.0f);
  let x_1159 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1161 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1159.x, x_1159.y, x_1159.z), vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1164, 0.0f, 1.0f);
  let x_1166 : f32 = u_xlat42;
  let x_1167 : f32 = u_xlat42;
  u_xlat42 = (x_1166 * x_1167);
  let x_1169 : f32 = u_xlat42;
  let x_1171 : f32 = u_xlat15.x;
  u_xlat42 = ((x_1169 * x_1171) + 1.000010014f);
  let x_1175 : f32 = u_xlat43;
  let x_1176 : f32 = u_xlat43;
  u_xlat43 = (x_1175 * x_1176);
  let x_1178 : f32 = u_xlat42;
  let x_1179 : f32 = u_xlat42;
  u_xlat42 = (x_1178 * x_1179);
  let x_1181 : f32 = u_xlat43;
  u_xlat43 = max(x_1181, 0.100000001f);
  let x_1184 : f32 = u_xlat42;
  let x_1185 : f32 = u_xlat43;
  u_xlat42 = (x_1184 * x_1185);
  let x_1187 : f32 = u_xlat46;
  let x_1188 : f32 = u_xlat42;
  u_xlat42 = (x_1187 * x_1188);
  let x_1190 : f32 = u_xlat44;
  let x_1191 : f32 = u_xlat42;
  u_xlat42 = (x_1190 / x_1191);
  let x_1193 : f32 = u_xlat42;
  let x_1197 : vec3<f32> = u_xlat2;
  let x_1198 : vec3<f32> = ((vec3<f32>(x_1193, x_1193, x_1193) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1197);
  let x_1199 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1201 : vec3<f32> = u_xlat20;
  let x_1202 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1201 * vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1207 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1209 : f32 = x_496.unity_LightData.y;
  u_xlat42 = min(x_1207, x_1209);
  let x_1211 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1211));
  let x_1216 : f32 = x_835.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1218 : f32 = x_835.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1220 : f32 = x_835.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1222 : f32 = x_835.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1223 : vec4<f32> = vec4<f32>(x_1216, x_1218, x_1220, x_1222);
  let x_1229 : vec4<bool> = (vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1223.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1229.x, x_1229.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1240 : u32 = u_xlatu_loop_1;
    let x_1241 : u32 = u_xlatu42;
    if ((x_1240 < x_1241)) {
    } else {
      break;
    }
    let x_1244 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1244 >> 2u);
    let x_1247 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1247 & 3u));
    let x_1250 : u32 = u_xlatu3;
    let x_1253 : vec4<f32> = x_496.unity_LightIndices[bitcast<i32>(x_1250)];
    let x_1263 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1268 : vec4<u32> = indexable[x_1263];
    u_xlat3.x = dot(x_1253, bitcast<vec4<f32>>(x_1268));
    let x_1273 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_1273));
    let x_1277 : vec3<f32> = vs_INTERP0;
    let x_1289 : u32 = u_xlatu3;
    let x_1292 : vec4<f32> = x_1288.x_AdditionalLightsPosition[bitcast<i32>(x_1289)];
    let x_1295 : u32 = u_xlatu3;
    let x_1298 : vec4<f32> = x_1288.x_AdditionalLightsPosition[bitcast<i32>(x_1295)];
    u_xlat9 = ((-(x_1277) * vec3<f32>(x_1292.w, x_1292.w, x_1292.w)) + vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
    let x_1302 : vec3<f32> = u_xlat9;
    let x_1303 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1302, x_1303);
    let x_1305 : f32 = u_xlat35;
    u_xlat35 = max(x_1305, 6.10351562e-05f);
    let x_1308 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1308);
    let x_1311 : f32 = u_xlat49;
    let x_1313 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1311, x_1311, x_1311) * x_1313);
    let x_1316 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1316);
    let x_1318 : f32 = u_xlat35;
    let x_1319 : u32 = u_xlatu3;
    let x_1322 : f32 = x_1288.x_AdditionalLightsAttenuation[bitcast<i32>(x_1319)].x;
    u_xlat35 = (x_1318 * x_1322);
    let x_1324 : f32 = u_xlat35;
    let x_1326 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1324) * x_1326) + 1.0f);
    let x_1329 : f32 = u_xlat35;
    u_xlat35 = max(x_1329, 0.0f);
    let x_1331 : f32 = u_xlat35;
    let x_1332 : f32 = u_xlat35;
    u_xlat35 = (x_1331 * x_1332);
    let x_1334 : f32 = u_xlat35;
    let x_1335 : f32 = u_xlat50;
    u_xlat35 = (x_1334 * x_1335);
    let x_1337 : u32 = u_xlatu3;
    let x_1340 : vec4<f32> = x_1288.x_AdditionalLightsSpotDir[bitcast<i32>(x_1337)];
    let x_1342 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1340.x, x_1340.y, x_1340.z), x_1342);
    let x_1344 : f32 = u_xlat50;
    let x_1345 : u32 = u_xlatu3;
    let x_1348 : f32 = x_1288.x_AdditionalLightsAttenuation[bitcast<i32>(x_1345)].z;
    let x_1350 : u32 = u_xlatu3;
    let x_1353 : f32 = x_1288.x_AdditionalLightsAttenuation[bitcast<i32>(x_1350)].w;
    u_xlat50 = ((x_1344 * x_1348) + x_1353);
    let x_1355 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1355, 0.0f, 1.0f);
    let x_1357 : f32 = u_xlat50;
    let x_1358 : f32 = u_xlat50;
    u_xlat50 = (x_1357 * x_1358);
    let x_1360 : f32 = u_xlat35;
    let x_1361 : f32 = u_xlat50;
    u_xlat35 = (x_1360 * x_1361);
    let x_1364 : u32 = u_xlatu3;
    u_xlatu50 = (x_1364 >> 5u);
    let x_1367 : u32 = u_xlatu3;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1367) & 31i)));
    let x_1373 : i32 = u_xlati51;
    let x_1375 : u32 = u_xlatu50;
    let x_1378 : f32 = x_835.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1375)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1373) & bitcast<u32>(x_1378)));
    let x_1382 : i32 = u_xlati50;
    if ((x_1382 != 0i)) {
      let x_1392 : u32 = u_xlatu3;
      let x_1395 : f32 = x_1391.x_AdditionalLightsLightTypes[bitcast<i32>(x_1392)].el;
      u_xlati50 = i32(x_1395);
      let x_1397 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1397 != 0i));
      let x_1401 : u32 = u_xlatu3;
      u_xlati52 = (bitcast<i32>(x_1401) << bitcast<u32>(2i));
      let x_1404 : i32 = u_xlati51;
      if ((x_1404 != 0i)) {
        let x_1409 : vec3<f32> = vs_INTERP0;
        let x_1411 : i32 = u_xlati52;
        let x_1414 : i32 = u_xlati52;
        let x_1418 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1411 + 1i) / 4i)][((x_1414 + 1i) % 4i)];
        let x_1420 : vec3<f32> = (vec3<f32>(x_1409.y, x_1409.y, x_1409.y) * vec3<f32>(x_1418.x, x_1418.y, x_1418.w));
        let x_1421 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
        let x_1423 : i32 = u_xlati52;
        let x_1425 : i32 = u_xlati52;
        let x_1428 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[(x_1423 / 4i)][(x_1425 % 4i)];
        let x_1430 : vec3<f32> = vs_INTERP0;
        let x_1433 : vec4<f32> = u_xlat11;
        let x_1435 : vec3<f32> = ((vec3<f32>(x_1428.x, x_1428.y, x_1428.w) * vec3<f32>(x_1430.x, x_1430.x, x_1430.x)) + vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
        let x_1436 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
        let x_1438 : i32 = u_xlati52;
        let x_1441 : i32 = u_xlati52;
        let x_1445 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1438 + 2i) / 4i)][((x_1441 + 2i) % 4i)];
        let x_1447 : vec3<f32> = vs_INTERP0;
        let x_1450 : vec4<f32> = u_xlat11;
        let x_1452 : vec3<f32> = ((vec3<f32>(x_1445.x, x_1445.y, x_1445.w) * vec3<f32>(x_1447.z, x_1447.z, x_1447.z)) + vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
        let x_1453 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
        let x_1455 : vec4<f32> = u_xlat11;
        let x_1457 : i32 = u_xlati52;
        let x_1460 : i32 = u_xlati52;
        let x_1464 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1457 + 3i) / 4i)][((x_1460 + 3i) % 4i)];
        let x_1466 : vec3<f32> = (vec3<f32>(x_1455.x, x_1455.y, x_1455.z) + vec3<f32>(x_1464.x, x_1464.y, x_1464.w));
        let x_1467 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
        let x_1469 : vec4<f32> = u_xlat11;
        let x_1471 : vec4<f32> = u_xlat11;
        let x_1473 : vec2<f32> = (vec2<f32>(x_1469.x, x_1469.y) / vec2<f32>(x_1471.z, x_1471.z));
        let x_1474 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1473.x, x_1473.y, x_1474.z, x_1474.w);
        let x_1476 : vec4<f32> = u_xlat11;
        let x_1479 : vec2<f32> = ((vec2<f32>(x_1476.x, x_1476.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
        let x_1482 : vec4<f32> = u_xlat11;
        let x_1486 : vec2<f32> = clamp(vec2<f32>(x_1482.x, x_1482.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1487 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1486.x, x_1486.y, x_1487.z, x_1487.w);
        let x_1489 : u32 = u_xlatu3;
        let x_1492 : vec4<f32> = x_1391.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1489)];
        let x_1494 : vec4<f32> = u_xlat11;
        let x_1497 : u32 = u_xlatu3;
        let x_1500 : vec4<f32> = x_1391.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1497)];
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1492.x, x_1492.y) * vec2<f32>(x_1494.x, x_1494.y)) + vec2<f32>(x_1500.z, x_1500.w));
        let x_1503 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
      } else {
        let x_1507 : i32 = u_xlati50;
        u_xlatb50 = (x_1507 == 1i);
        let x_1509 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1509);
        let x_1511 : i32 = u_xlati50;
        if ((x_1511 != 0i)) {
          let x_1517 : vec3<f32> = vs_INTERP0;
          let x_1519 : i32 = u_xlati52;
          let x_1522 : i32 = u_xlati52;
          let x_1526 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1519 + 1i) / 4i)][((x_1522 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1517.y, x_1517.y) * vec2<f32>(x_1526.x, x_1526.y));
          let x_1529 : i32 = u_xlati52;
          let x_1531 : i32 = u_xlati52;
          let x_1534 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[(x_1529 / 4i)][(x_1531 % 4i)];
          let x_1536 : vec3<f32> = vs_INTERP0;
          let x_1539 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1534.x, x_1534.y) * vec2<f32>(x_1536.x, x_1536.x)) + x_1539);
          let x_1541 : i32 = u_xlati52;
          let x_1544 : i32 = u_xlati52;
          let x_1548 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1541 + 2i) / 4i)][((x_1544 + 2i) % 4i)];
          let x_1550 : vec3<f32> = vs_INTERP0;
          let x_1553 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1550.z, x_1550.z)) + x_1553);
          let x_1555 : vec2<f32> = u_xlat39;
          let x_1556 : i32 = u_xlati52;
          let x_1559 : i32 = u_xlati52;
          let x_1563 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1556 + 3i) / 4i)][((x_1559 + 3i) % 4i)];
          u_xlat39 = (x_1555 + vec2<f32>(x_1563.x, x_1563.y));
          let x_1566 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1566 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1569 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1569);
          let x_1571 : u32 = u_xlatu3;
          let x_1574 : vec4<f32> = x_1391.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1571)];
          let x_1576 : vec2<f32> = u_xlat39;
          let x_1578 : u32 = u_xlatu3;
          let x_1581 : vec4<f32> = x_1391.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1578)];
          let x_1583 : vec2<f32> = ((vec2<f32>(x_1574.x, x_1574.y) * x_1576) + vec2<f32>(x_1581.z, x_1581.w));
          let x_1584 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
        } else {
          let x_1588 : vec3<f32> = vs_INTERP0;
          let x_1590 : i32 = u_xlati52;
          let x_1593 : i32 = u_xlati52;
          let x_1597 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1590 + 1i) / 4i)][((x_1593 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1588.y, x_1588.y, x_1588.y, x_1588.y) * x_1597);
          let x_1599 : i32 = u_xlati52;
          let x_1601 : i32 = u_xlati52;
          let x_1604 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[(x_1599 / 4i)][(x_1601 % 4i)];
          let x_1605 : vec3<f32> = vs_INTERP0;
          let x_1608 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1604 * vec4<f32>(x_1605.x, x_1605.x, x_1605.x, x_1605.x)) + x_1608);
          let x_1610 : i32 = u_xlati52;
          let x_1613 : i32 = u_xlati52;
          let x_1617 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1610 + 2i) / 4i)][((x_1613 + 2i) % 4i)];
          let x_1618 : vec3<f32> = vs_INTERP0;
          let x_1621 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1617 * vec4<f32>(x_1618.z, x_1618.z, x_1618.z, x_1618.z)) + x_1621);
          let x_1623 : vec4<f32> = u_xlat12;
          let x_1624 : i32 = u_xlati52;
          let x_1627 : i32 = u_xlati52;
          let x_1631 : vec4<f32> = x_1391.x_AdditionalLightsWorldToLights[((x_1624 + 3i) / 4i)][((x_1627 + 3i) % 4i)];
          u_xlat12 = (x_1623 + x_1631);
          let x_1633 : vec4<f32> = u_xlat12;
          let x_1635 : vec4<f32> = u_xlat12;
          let x_1637 : vec3<f32> = (vec3<f32>(x_1633.x, x_1633.y, x_1633.z) / vec3<f32>(x_1635.w, x_1635.w, x_1635.w));
          let x_1638 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
          let x_1640 : vec4<f32> = u_xlat12;
          let x_1642 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1640.x, x_1640.y, x_1640.z), vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
          let x_1645 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1645);
          let x_1647 : f32 = u_xlat50;
          let x_1649 : vec4<f32> = u_xlat12;
          let x_1651 : vec3<f32> = (vec3<f32>(x_1647, x_1647, x_1647) * vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
          let x_1652 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);
          let x_1654 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1654.x, x_1654.y, x_1654.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1659 : f32 = u_xlat50;
          u_xlat50 = max(x_1659, 0.000001f);
          let x_1662 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1662);
          let x_1665 : f32 = u_xlat50;
          let x_1667 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1665, x_1665, x_1665) * vec3<f32>(x_1667.z, x_1667.x, x_1667.y));
          let x_1671 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1671);
          let x_1675 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1675, 0.0f, 1.0f);
          let x_1679 : vec3<f32> = u_xlat13;
          let x_1682 : vec4<bool> = (vec4<f32>(x_1679.y, x_1679.z, x_1679.y, x_1679.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1682.x, x_1682.y);
          let x_1685 : bool = u_xlatb39.x;
          if (x_1685) {
            let x_1690 : f32 = u_xlat13.x;
            x_1686 = x_1690;
          } else {
            let x_1693 : f32 = u_xlat13.x;
            x_1686 = -(x_1693);
          }
          let x_1695 : f32 = x_1686;
          u_xlat39.x = x_1695;
          let x_1698 : bool = u_xlatb39.y;
          if (x_1698) {
            let x_1703 : f32 = u_xlat13.x;
            x_1699 = x_1703;
          } else {
            let x_1706 : f32 = u_xlat13.x;
            x_1699 = -(x_1706);
          }
          let x_1708 : f32 = x_1699;
          u_xlat39.y = x_1708;
          let x_1710 : vec4<f32> = u_xlat12;
          let x_1712 : f32 = u_xlat50;
          let x_1715 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1712, x_1712)) + x_1715);
          let x_1717 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1717 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1720 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1720, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1724 : u32 = u_xlatu3;
          let x_1727 : vec4<f32> = x_1391.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1724)];
          let x_1729 : vec2<f32> = u_xlat39;
          let x_1731 : u32 = u_xlatu3;
          let x_1734 : vec4<f32> = x_1391.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1731)];
          let x_1736 : vec2<f32> = ((vec2<f32>(x_1727.x, x_1727.y) * x_1729) + vec2<f32>(x_1734.z, x_1734.w));
          let x_1737 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1736.x, x_1736.y, x_1737.z, x_1737.w);
        }
      }
      let x_1744 : vec4<f32> = u_xlat11;
      let x_1747 : f32 = x_66.x_GlobalMipBias.x;
      let x_1748 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1744.x, x_1744.y), x_1747);
      u_xlat11 = x_1748;
      let x_1750 : bool = u_xlatb7.y;
      if (x_1750) {
        let x_1755 : f32 = u_xlat11.w;
        x_1751 = x_1755;
      } else {
        let x_1758 : f32 = u_xlat11.x;
        x_1751 = x_1758;
      }
      let x_1759 : f32 = x_1751;
      u_xlat50 = x_1759;
      let x_1761 : bool = u_xlatb7.x;
      if (x_1761) {
        let x_1765 : vec4<f32> = u_xlat11;
        x_1762 = vec3<f32>(x_1765.x, x_1765.y, x_1765.z);
      } else {
        let x_1768 : f32 = u_xlat50;
        x_1762 = vec3<f32>(x_1768, x_1768, x_1768);
      }
      let x_1770 : vec3<f32> = x_1762;
      let x_1771 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1777 : vec4<f32> = u_xlat11;
    let x_1779 : u32 = u_xlatu3;
    let x_1782 : vec4<f32> = x_1288.x_AdditionalLightsColor[bitcast<i32>(x_1779)];
    let x_1784 : vec3<f32> = (vec3<f32>(x_1777.x, x_1777.y, x_1777.z) * vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
    let x_1785 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
    let x_1787 : vec3<f32> = u_xlat6;
    let x_1789 : vec4<f32> = u_xlat11;
    let x_1791 : vec3<f32> = (vec3<f32>(x_1787.x, x_1787.x, x_1787.x) * vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
    let x_1792 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
    let x_1794 : vec3<f32> = u_xlat17;
    let x_1795 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(x_1794, x_1795);
    let x_1799 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1799, 0.0f, 1.0f);
    let x_1803 : f32 = u_xlat3.x;
    let x_1804 : f32 = u_xlat35;
    u_xlat3.x = (x_1803 * x_1804);
    let x_1807 : vec4<f32> = u_xlat3;
    let x_1809 : vec4<f32> = u_xlat11;
    let x_1811 : vec3<f32> = (vec3<f32>(x_1807.x, x_1807.x, x_1807.x) * vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
    let x_1812 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
    let x_1814 : vec3<f32> = u_xlat9;
    let x_1815 : f32 = u_xlat49;
    let x_1818 : vec4<f32> = u_xlat5;
    u_xlat9 = ((x_1814 * vec3<f32>(x_1815, x_1815, x_1815)) + vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : vec3<f32> = u_xlat9;
    let x_1822 : vec3<f32> = u_xlat9;
    u_xlat3.x = dot(x_1821, x_1822);
    let x_1826 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1826, 1.17549435e-37f);
    let x_1830 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1830);
    let x_1833 : vec4<f32> = u_xlat3;
    let x_1835 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1833.x, x_1833.x, x_1833.x) * x_1835);
    let x_1837 : vec3<f32> = u_xlat17;
    let x_1838 : vec3<f32> = u_xlat9;
    u_xlat3.x = dot(x_1837, x_1838);
    let x_1842 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1842, 0.0f, 1.0f);
    let x_1845 : vec3<f32> = u_xlat10;
    let x_1846 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1845, x_1846);
    let x_1848 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1848, 0.0f, 1.0f);
    let x_1851 : f32 = u_xlat3.x;
    let x_1853 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1851 * x_1853);
    let x_1857 : f32 = u_xlat3.x;
    let x_1859 : f32 = u_xlat15.x;
    u_xlat3.x = ((x_1857 * x_1859) + 1.000010014f);
    let x_1863 : f32 = u_xlat35;
    let x_1864 : f32 = u_xlat35;
    u_xlat35 = (x_1863 * x_1864);
    let x_1867 : f32 = u_xlat3.x;
    let x_1869 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1867 * x_1869);
    let x_1872 : f32 = u_xlat35;
    u_xlat35 = max(x_1872, 0.100000001f);
    let x_1875 : f32 = u_xlat3.x;
    let x_1876 : f32 = u_xlat35;
    u_xlat3.x = (x_1875 * x_1876);
    let x_1879 : f32 = u_xlat46;
    let x_1881 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1879 * x_1881);
    let x_1884 : f32 = u_xlat44;
    let x_1886 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1884 / x_1886);
    let x_1889 : vec4<f32> = u_xlat3;
    let x_1892 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1889.x, x_1889.x, x_1889.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1892);
    let x_1894 : vec3<f32> = u_xlat9;
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
  let x_1905 : vec4<f32> = u_xlat4;
  let x_1907 : f32 = u_xlat47;
  let x_1910 : vec3<f32> = u_xlat20;
  u_xlat2 = ((vec3<f32>(x_1905.x, x_1905.y, x_1905.z) * vec3<f32>(x_1907, x_1907, x_1907)) + x_1910);
  let x_1912 : vec4<f32> = u_xlat8;
  let x_1914 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1912.x, x_1912.y, x_1912.z) + x_1914);
  let x_1918 : vec4<f32> = vs_INTERP4;
  let x_1920 : vec3<f32> = u_xlat0;
  let x_1922 : vec3<f32> = u_xlat2;
  let x_1923 : vec3<f32> = ((vec3<f32>(x_1918.w, x_1918.w, x_1918.w) * x_1920) + x_1922);
  let x_1924 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : bool = u_xlatb29;
  if (x_1926) {
    let x_1931 : f32 = u_xlat1.x;
    x_1927 = x_1931;
  } else {
    x_1927 = 1.0f;
  }
  let x_1933 : f32 = x_1927;
  SV_Target0.w = x_1933;
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

