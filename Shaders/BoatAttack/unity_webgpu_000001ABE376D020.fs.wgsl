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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_352 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_413 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_603 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_860 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_961 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlatb47 : bool;
  var u_xlatb6 : bool;
  var u_xlat6 : vec4<f32>;
  var u_xlatb7 : vec2<bool>;
  var x_499 : f32;
  var x_510 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu44 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatu48 : u32;
  var u_xlati35 : i32;
  var u_xlati48 : i32;
  var u_xlati49 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb35 : vec2<bool>;
  var u_xlat35 : vec2<f32>;
  var x_1256 : f32;
  var x_1269 : f32;
  var x_1321 : f32;
  var x_1332 : vec3<f32>;
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
  u_xlatb15 = (x_70 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat29;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb15;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb15;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb15;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_137 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.z = x_138;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(x_142, x_143);
  let x_147 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_147);
  let x_150 : vec3<f32> = u_xlat15;
  let x_152 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_150.x, x_150.x, x_150.x) * x_152);
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_162 : f32 = x_44.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_159.z, x_159.w), x_162);
  u_xlat2 = x_163;
  let x_169 : vec4<f32> = vs_TEXCOORD0;
  let x_172 : f32 = x_44.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_169.z, x_169.w), x_172);
  u_xlat4 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_175 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec3<f32> = u_xlat15;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_182, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_188 : f32 = u_xlat2.x;
  u_xlat2.x = (x_188 + 0.5f);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec3<f32> = u_xlat4;
  let x_195 : vec3<f32> = (vec3<f32>(x_192.x, x_192.x, x_192.x) * x_194);
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_200 : f32 = u_xlat2.w;
  u_xlat44 = max(x_200, 0.0001f);
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : f32 = u_xlat44;
  let x_207 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) / vec3<f32>(x_205, x_205, x_205));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_213 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_214 : vec2<f32> = vec2<f32>(x_213.x, x_213.y);
  let x_218 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_214.x, x_214.y));
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec4<f32> = hlslcc_FragCoord;
  let x_225 : vec2<f32> = (vec2<f32>(x_221.x, x_221.y) * vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_225.x, x_225.y, x_226.z);
  let x_229 : f32 = u_xlat4.y;
  let x_232 : f32 = x_44.x_ScaleBiasRt.x;
  let x_235 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_229 * x_232) + x_235);
  let x_237 : f32 = u_xlat44;
  u_xlat4.z = (-(x_237) + 1.0f);
  let x_241 : f32 = u_xlat1;
  u_xlat44 = ((-(x_241) * 0.959999979f) + 0.959999979f);
  let x_247 : f32 = u_xlat44;
  u_xlat45 = (-(x_247) + 1.0f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat44;
  u_xlat5 = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat1;
  let x_278 : f32 = u_xlat1;
  u_xlat44 = (x_277 * x_278);
  let x_280 : f32 = u_xlat44;
  u_xlat44 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat44;
  let x_285 : f32 = u_xlat44;
  u_xlat18 = (x_284 * x_285);
  let x_289 : f32 = u_xlat0.w;
  let x_290 : f32 = u_xlat45;
  u_xlat42 = (x_289 + x_290);
  let x_292 : f32 = u_xlat42;
  u_xlat42 = clamp(x_292, 0.0f, 1.0f);
  let x_294 : f32 = u_xlat44;
  u_xlat45 = ((x_294 * 4.0f) + 2.0f);
  let x_304 : vec3<f32> = u_xlat4;
  let x_307 : f32 = x_44.x_GlobalMipBias.x;
  let x_308 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_304.x, x_304.z), x_307);
  u_xlat4.x = x_308.x;
  let x_313 : f32 = u_xlat4.x;
  u_xlat32 = (x_313 + -1.0f);
  let x_318 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_319 : f32 = u_xlat32;
  u_xlat32 = ((x_318 * x_319) + 1.0f);
  let x_323 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_323, 1.0f);
  let x_328 : vec4<f32> = vs_TEXCOORD8;
  let x_329 : vec2<f32> = vec2<f32>(x_328.x, x_328.y);
  let x_331 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_329.x, x_329.y, x_331);
  let x_344 : vec3<f32> = txVec0;
  let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_344.xy, x_344.z);
  u_xlat46 = x_346;
  let x_354 : f32 = x_352.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_354) + 1.0f);
  let x_357 : f32 = u_xlat46;
  let x_359 : f32 = x_352.x_MainLightShadowParams.x;
  let x_361 : f32 = u_xlat47;
  u_xlat46 = ((x_357 * x_359) + x_361);
  let x_365 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_365);
  let x_369 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_369 >= 1.0f);
  let x_371 : bool = u_xlatb47;
  let x_372 : bool = u_xlatb6;
  u_xlatb47 = (x_371 | x_372);
  let x_374 : bool = u_xlatb47;
  let x_375 : f32 = u_xlat46;
  u_xlat46 = select(x_375, 1.0f, x_374);
  let x_378 : vec3<f32> = vs_TEXCOORD7;
  let x_380 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_382 : vec3<f32> = (x_378 + -(x_380));
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat6;
  let x_387 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : f32 = u_xlat47;
  let x_392 : f32 = x_352.x_MainLightShadowParams.z;
  let x_395 : f32 = x_352.x_MainLightShadowParams.w;
  u_xlat47 = ((x_390 * x_392) + x_395);
  let x_397 : f32 = u_xlat47;
  u_xlat47 = clamp(x_397, 0.0f, 1.0f);
  let x_399 : f32 = u_xlat46;
  u_xlat6.x = (-(x_399) + 1.0f);
  let x_403 : f32 = u_xlat47;
  let x_405 : f32 = u_xlat6.x;
  let x_407 : f32 = u_xlat46;
  u_xlat46 = ((x_403 * x_405) + x_407);
  let x_415 : f32 = x_413.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_415 == -1.0f));
  let x_417 : bool = u_xlatb47;
  if (x_417) {
    let x_420 : vec3<f32> = vs_TEXCOORD7;
    let x_423 : vec4<f32> = x_413.x_MainLightWorldToLight[1i];
    let x_425 : vec2<f32> = (vec2<f32>(x_420.y, x_420.y) * vec2<f32>(x_423.x, x_423.y));
    let x_426 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
    let x_429 : vec4<f32> = x_413.x_MainLightWorldToLight[0i];
    let x_431 : vec3<f32> = vs_TEXCOORD7;
    let x_434 : vec4<f32> = u_xlat6;
    let x_436 : vec2<f32> = ((vec2<f32>(x_429.x, x_429.y) * vec2<f32>(x_431.x, x_431.x)) + vec2<f32>(x_434.x, x_434.y));
    let x_437 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
    let x_440 : vec4<f32> = x_413.x_MainLightWorldToLight[2i];
    let x_442 : vec3<f32> = vs_TEXCOORD7;
    let x_445 : vec4<f32> = u_xlat6;
    let x_447 : vec2<f32> = ((vec2<f32>(x_440.x, x_440.y) * vec2<f32>(x_442.z, x_442.z)) + vec2<f32>(x_445.x, x_445.y));
    let x_448 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
    let x_450 : vec4<f32> = u_xlat6;
    let x_454 : vec4<f32> = x_413.x_MainLightWorldToLight[3i];
    let x_456 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) + vec2<f32>(x_454.x, x_454.y));
    let x_457 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
    let x_459 : vec4<f32> = u_xlat6;
    let x_463 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_464 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
    let x_471 : vec4<f32> = u_xlat6;
    let x_474 : f32 = x_44.x_GlobalMipBias.x;
    let x_475 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_471.x, x_471.y), x_474);
    u_xlat6 = x_475;
    let x_480 : f32 = x_413.x_MainLightCookieTextureFormat;
    let x_482 : f32 = x_413.x_MainLightCookieTextureFormat;
    let x_484 : f32 = x_413.x_MainLightCookieTextureFormat;
    let x_486 : f32 = x_413.x_MainLightCookieTextureFormat;
    let x_487 : vec4<f32> = vec4<f32>(x_480, x_482, x_484, x_486);
    let x_495 : vec4<bool> = (vec4<f32>(x_487.x, x_487.y, x_487.z, x_487.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_495.x, x_495.y);
    let x_498 : bool = u_xlatb7.y;
    if (x_498) {
      let x_503 : f32 = u_xlat6.w;
      x_499 = x_503;
    } else {
      let x_506 : f32 = u_xlat6.x;
      x_499 = x_506;
    }
    let x_507 : f32 = x_499;
    u_xlat47 = x_507;
    let x_509 : bool = u_xlatb7.x;
    if (x_509) {
      let x_513 : vec4<f32> = u_xlat6;
      x_510 = vec3<f32>(x_513.x, x_513.y, x_513.z);
    } else {
      let x_516 : f32 = u_xlat47;
      x_510 = vec3<f32>(x_516, x_516, x_516);
    }
    let x_518 : vec3<f32> = x_510;
    let x_519 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_525 : vec4<f32> = u_xlat6;
  let x_528 : vec4<f32> = x_44.x_MainLightColor;
  let x_530 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : f32 = u_xlat32;
  let x_535 : vec4<f32> = u_xlat6;
  let x_537 : vec3<f32> = (vec3<f32>(x_533, x_533, x_533) * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec3<f32> = u_xlat3;
  let x_542 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_540), x_542);
  let x_544 : f32 = u_xlat47;
  let x_545 : f32 = u_xlat47;
  u_xlat47 = (x_544 + x_545);
  let x_548 : vec3<f32> = u_xlat15;
  let x_549 : f32 = u_xlat47;
  let x_553 : vec3<f32> = u_xlat3;
  let x_555 : vec3<f32> = ((x_548 * -(vec3<f32>(x_549, x_549, x_549))) + -(x_553));
  let x_556 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec3<f32> = u_xlat15;
  let x_559 : vec3<f32> = u_xlat3;
  u_xlat47 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat47;
  u_xlat47 = clamp(x_561, 0.0f, 1.0f);
  let x_563 : f32 = u_xlat47;
  u_xlat47 = (-(x_563) + 1.0f);
  let x_566 : f32 = u_xlat47;
  let x_567 : f32 = u_xlat47;
  u_xlat47 = (x_566 * x_567);
  let x_569 : f32 = u_xlat47;
  let x_570 : f32 = u_xlat47;
  u_xlat47 = (x_569 * x_570);
  let x_573 : f32 = u_xlat1;
  u_xlat48 = ((-(x_573) * 0.699999988f) + 1.700000048f);
  let x_579 : f32 = u_xlat1;
  let x_580 : f32 = u_xlat48;
  u_xlat1 = (x_579 * x_580);
  let x_582 : f32 = u_xlat1;
  u_xlat1 = (x_582 * 6.0f);
  let x_593 : vec4<f32> = u_xlat7;
  let x_595 : f32 = u_xlat1;
  let x_596 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_593.x, x_593.y, x_593.z), x_595);
  u_xlat7 = x_596;
  let x_598 : f32 = u_xlat7.w;
  u_xlat1 = (x_598 + -1.0f);
  let x_605 : f32 = x_603.unity_SpecCube0_HDR.w;
  let x_606 : f32 = u_xlat1;
  u_xlat1 = ((x_605 * x_606) + 1.0f);
  let x_609 : f32 = u_xlat1;
  u_xlat1 = max(x_609, 0.0f);
  let x_611 : f32 = u_xlat1;
  u_xlat1 = log2(x_611);
  let x_613 : f32 = u_xlat1;
  let x_615 : f32 = x_603.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_613 * x_615);
  let x_617 : f32 = u_xlat1;
  u_xlat1 = exp2(x_617);
  let x_619 : f32 = u_xlat1;
  let x_621 : f32 = x_603.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_619 * x_621);
  let x_623 : vec4<f32> = u_xlat7;
  let x_625 : f32 = u_xlat1;
  let x_627 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625, x_625, x_625));
  let x_628 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_632 : f32 = u_xlat44;
  let x_634 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_632, x_632) * vec2<f32>(x_634, x_634)) + vec2<f32>(-1.0f, 1.0f));
  let x_640 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_640);
  let x_643 : vec4<f32> = u_xlat0;
  let x_646 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_643.x, x_643.y, x_643.z)) + vec3<f32>(x_646, x_646, x_646));
  let x_649 : f32 = u_xlat47;
  let x_651 : vec3<f32> = u_xlat22;
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_649, x_649, x_649) * x_651) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : f32 = u_xlat1;
  let x_658 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_656, x_656, x_656) * x_658);
  let x_660 : vec4<f32> = u_xlat7;
  let x_662 : vec3<f32> = u_xlat22;
  let x_663 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * x_662);
  let x_664 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat2;
  let x_668 : vec3<f32> = u_xlat5;
  let x_670 : vec4<f32> = u_xlat7;
  let x_672 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * x_668) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : f32 = u_xlat46;
  let x_678 : f32 = x_603.unity_LightData.z;
  u_xlat42 = (x_675 * x_678);
  let x_680 : vec3<f32> = u_xlat15;
  let x_682 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_680, vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : f32 = u_xlat1;
  u_xlat1 = clamp(x_685, 0.0f, 1.0f);
  let x_687 : f32 = u_xlat42;
  let x_688 : f32 = u_xlat1;
  u_xlat42 = (x_687 * x_688);
  let x_690 : f32 = u_xlat42;
  let x_692 : vec4<f32> = u_xlat6;
  let x_694 : vec3<f32> = (vec3<f32>(x_690, x_690, x_690) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec3<f32> = u_xlat3;
  let x_699 : vec4<f32> = x_44.x_MainLightPosition;
  let x_701 : vec3<f32> = (x_697 + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat7;
  let x_706 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_704.x, x_704.y, x_704.z), vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : f32 = u_xlat42;
  u_xlat42 = max(x_709, 1.17549435e-37f);
  let x_712 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_712);
  let x_714 : f32 = u_xlat42;
  let x_716 : vec4<f32> = u_xlat7;
  let x_718 : vec3<f32> = (vec3<f32>(x_714, x_714, x_714) * vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec3<f32> = u_xlat15;
  let x_722 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_721, vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : f32 = u_xlat42;
  u_xlat42 = clamp(x_725, 0.0f, 1.0f);
  let x_728 : vec4<f32> = x_44.x_MainLightPosition;
  let x_730 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : f32 = u_xlat1;
  u_xlat1 = clamp(x_733, 0.0f, 1.0f);
  let x_735 : f32 = u_xlat42;
  let x_736 : f32 = u_xlat42;
  u_xlat42 = (x_735 * x_736);
  let x_738 : f32 = u_xlat42;
  let x_740 : f32 = u_xlat8.x;
  u_xlat42 = ((x_738 * x_740) + 1.000010014f);
  let x_744 : f32 = u_xlat1;
  let x_745 : f32 = u_xlat1;
  u_xlat1 = (x_744 * x_745);
  let x_747 : f32 = u_xlat42;
  let x_748 : f32 = u_xlat42;
  u_xlat42 = (x_747 * x_748);
  let x_750 : f32 = u_xlat1;
  u_xlat1 = max(x_750, 0.100000001f);
  let x_753 : f32 = u_xlat42;
  let x_754 : f32 = u_xlat1;
  u_xlat42 = (x_753 * x_754);
  let x_756 : f32 = u_xlat45;
  let x_757 : f32 = u_xlat42;
  u_xlat42 = (x_756 * x_757);
  let x_759 : f32 = u_xlat18;
  let x_760 : f32 = u_xlat42;
  u_xlat42 = (x_759 / x_760);
  let x_762 : vec4<f32> = u_xlat0;
  let x_764 : f32 = u_xlat42;
  let x_767 : vec3<f32> = u_xlat5;
  let x_768 : vec3<f32> = ((vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(x_764, x_764, x_764)) + x_767);
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat6;
  let x_773 : vec4<f32> = u_xlat7;
  let x_775 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_779 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_781 : f32 = x_603.unity_LightData.y;
  u_xlat42 = min(x_779, x_781);
  let x_785 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_785));
  let x_789 : f32 = x_413.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_791 : f32 = x_413.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_793 : f32 = x_413.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_795 : f32 = x_413.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_796 : vec4<f32> = vec4<f32>(x_789, x_791, x_793, x_795);
  let x_802 : vec4<bool> = (vec4<f32>(x_796.x, x_796.y, x_796.z, x_796.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_802.x, x_802.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_813 : u32 = u_xlatu_loop_1;
    let x_814 : u32 = u_xlatu42;
    if ((x_813 < x_814)) {
    } else {
      break;
    }
    let x_817 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_817 >> 2u);
    let x_821 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_821 & 3u));
    let x_824 : u32 = u_xlatu44;
    let x_827 : vec4<f32> = x_603.unity_LightIndices[bitcast<i32>(x_824)];
    let x_837 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_842 : vec4<u32> = indexable[x_837];
    u_xlat44 = dot(x_827, bitcast<vec4<f32>>(x_842));
    let x_845 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_845));
    let x_849 : vec3<f32> = vs_TEXCOORD7;
    let x_861 : u32 = u_xlatu44;
    let x_864 : vec4<f32> = x_860.x_AdditionalLightsPosition[bitcast<i32>(x_861)];
    let x_867 : u32 = u_xlatu44;
    let x_870 : vec4<f32> = x_860.x_AdditionalLightsPosition[bitcast<i32>(x_867)];
    u_xlat9 = ((-(x_849) * vec3<f32>(x_864.w, x_864.w, x_864.w)) + vec3<f32>(x_870.x, x_870.y, x_870.z));
    let x_873 : vec3<f32> = u_xlat9;
    let x_874 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_873, x_874);
    let x_876 : f32 = u_xlat46;
    u_xlat46 = max(x_876, 6.10351562e-05f);
    let x_879 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_879);
    let x_882 : f32 = u_xlat47;
    let x_884 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_882, x_882, x_882) * x_884);
    let x_886 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_886);
    let x_888 : f32 = u_xlat46;
    let x_889 : u32 = u_xlatu44;
    let x_892 : f32 = x_860.x_AdditionalLightsAttenuation[bitcast<i32>(x_889)].x;
    u_xlat46 = (x_888 * x_892);
    let x_894 : f32 = u_xlat46;
    let x_896 : f32 = u_xlat46;
    u_xlat46 = ((-(x_894) * x_896) + 1.0f);
    let x_899 : f32 = u_xlat46;
    u_xlat46 = max(x_899, 0.0f);
    let x_901 : f32 = u_xlat46;
    let x_902 : f32 = u_xlat46;
    u_xlat46 = (x_901 * x_902);
    let x_904 : f32 = u_xlat46;
    let x_905 : f32 = u_xlat48;
    u_xlat46 = (x_904 * x_905);
    let x_907 : u32 = u_xlatu44;
    let x_910 : vec4<f32> = x_860.x_AdditionalLightsSpotDir[bitcast<i32>(x_907)];
    let x_912 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), x_912);
    let x_914 : f32 = u_xlat48;
    let x_915 : u32 = u_xlatu44;
    let x_918 : f32 = x_860.x_AdditionalLightsAttenuation[bitcast<i32>(x_915)].z;
    let x_920 : u32 = u_xlatu44;
    let x_923 : f32 = x_860.x_AdditionalLightsAttenuation[bitcast<i32>(x_920)].w;
    u_xlat48 = ((x_914 * x_918) + x_923);
    let x_925 : f32 = u_xlat48;
    u_xlat48 = clamp(x_925, 0.0f, 1.0f);
    let x_927 : f32 = u_xlat48;
    let x_928 : f32 = u_xlat48;
    u_xlat48 = (x_927 * x_928);
    let x_930 : f32 = u_xlat46;
    let x_931 : f32 = u_xlat48;
    u_xlat46 = (x_930 * x_931);
    let x_934 : u32 = u_xlatu44;
    u_xlatu48 = (x_934 >> 5u);
    let x_937 : u32 = u_xlatu44;
    u_xlati35 = (1i << bitcast<u32>((bitcast<i32>(x_937) & 31i)));
    let x_943 : i32 = u_xlati35;
    let x_945 : u32 = u_xlatu48;
    let x_948 : f32 = x_413.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_945)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_943) & bitcast<u32>(x_948)));
    let x_952 : i32 = u_xlati48;
    if ((x_952 != 0i)) {
      let x_962 : u32 = u_xlatu44;
      let x_965 : f32 = x_961.x_AdditionalLightsLightTypes[bitcast<i32>(x_962)].el;
      u_xlati48 = i32(x_965);
      let x_967 : i32 = u_xlati48;
      u_xlati35 = select(1i, 0i, (x_967 != 0i));
      let x_971 : u32 = u_xlatu44;
      u_xlati49 = (bitcast<i32>(x_971) << bitcast<u32>(2i));
      let x_974 : i32 = u_xlati35;
      if ((x_974 != 0i)) {
        let x_979 : vec3<f32> = vs_TEXCOORD7;
        let x_981 : i32 = u_xlati49;
        let x_984 : i32 = u_xlati49;
        let x_988 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_981 + 1i) / 4i)][((x_984 + 1i) % 4i)];
        let x_990 : vec3<f32> = (vec3<f32>(x_979.y, x_979.y, x_979.y) * vec3<f32>(x_988.x, x_988.y, x_988.w));
        let x_991 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
        let x_993 : i32 = u_xlati49;
        let x_995 : i32 = u_xlati49;
        let x_998 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[(x_993 / 4i)][(x_995 % 4i)];
        let x_1000 : vec3<f32> = vs_TEXCOORD7;
        let x_1003 : vec4<f32> = u_xlat11;
        let x_1005 : vec3<f32> = ((vec3<f32>(x_998.x, x_998.y, x_998.w) * vec3<f32>(x_1000.x, x_1000.x, x_1000.x)) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
        let x_1006 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : i32 = u_xlati49;
        let x_1011 : i32 = u_xlati49;
        let x_1015 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_1008 + 2i) / 4i)][((x_1011 + 2i) % 4i)];
        let x_1017 : vec3<f32> = vs_TEXCOORD7;
        let x_1020 : vec4<f32> = u_xlat11;
        let x_1022 : vec3<f32> = ((vec3<f32>(x_1015.x, x_1015.y, x_1015.w) * vec3<f32>(x_1017.z, x_1017.z, x_1017.z)) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
        let x_1023 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
        let x_1025 : vec4<f32> = u_xlat11;
        let x_1027 : i32 = u_xlati49;
        let x_1030 : i32 = u_xlati49;
        let x_1034 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_1027 + 3i) / 4i)][((x_1030 + 3i) % 4i)];
        let x_1036 : vec3<f32> = (vec3<f32>(x_1025.x, x_1025.y, x_1025.z) + vec3<f32>(x_1034.x, x_1034.y, x_1034.w));
        let x_1037 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat11;
        let x_1041 : vec4<f32> = u_xlat11;
        let x_1043 : vec2<f32> = (vec2<f32>(x_1039.x, x_1039.y) / vec2<f32>(x_1041.z, x_1041.z));
        let x_1044 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat11;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1050 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat11;
        let x_1056 : vec2<f32> = clamp(vec2<f32>(x_1052.x, x_1052.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1057 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : u32 = u_xlatu44;
        let x_1062 : vec4<f32> = x_961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1059)];
        let x_1064 : vec4<f32> = u_xlat11;
        let x_1067 : u32 = u_xlatu44;
        let x_1070 : vec4<f32> = x_961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1067)];
        let x_1072 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1064.x, x_1064.y)) + vec2<f32>(x_1070.z, x_1070.w));
        let x_1073 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
      } else {
        let x_1077 : i32 = u_xlati48;
        u_xlatb48 = (x_1077 == 1i);
        let x_1079 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1079);
        let x_1081 : i32 = u_xlati48;
        if ((x_1081 != 0i)) {
          let x_1086 : vec3<f32> = vs_TEXCOORD7;
          let x_1088 : i32 = u_xlati49;
          let x_1091 : i32 = u_xlati49;
          let x_1095 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_1088 + 1i) / 4i)][((x_1091 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1086.y, x_1086.y) * vec2<f32>(x_1095.x, x_1095.y));
          let x_1098 : i32 = u_xlati49;
          let x_1100 : i32 = u_xlati49;
          let x_1103 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[(x_1098 / 4i)][(x_1100 % 4i)];
          let x_1105 : vec3<f32> = vs_TEXCOORD7;
          let x_1108 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1105.x, x_1105.x)) + x_1108);
          let x_1110 : i32 = u_xlati49;
          let x_1113 : i32 = u_xlati49;
          let x_1117 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_1110 + 2i) / 4i)][((x_1113 + 2i) % 4i)];
          let x_1119 : vec3<f32> = vs_TEXCOORD7;
          let x_1122 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1119.z, x_1119.z)) + x_1122);
          let x_1124 : vec2<f32> = u_xlat39;
          let x_1125 : i32 = u_xlati49;
          let x_1128 : i32 = u_xlati49;
          let x_1132 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_1125 + 3i) / 4i)][((x_1128 + 3i) % 4i)];
          u_xlat39 = (x_1124 + vec2<f32>(x_1132.x, x_1132.y));
          let x_1135 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1135 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1138 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1138);
          let x_1140 : u32 = u_xlatu44;
          let x_1143 : vec4<f32> = x_961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1140)];
          let x_1145 : vec2<f32> = u_xlat39;
          let x_1147 : u32 = u_xlatu44;
          let x_1150 : vec4<f32> = x_961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1147)];
          let x_1152 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.y) * x_1145) + vec2<f32>(x_1150.z, x_1150.w));
          let x_1153 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        } else {
          let x_1157 : vec3<f32> = vs_TEXCOORD7;
          let x_1159 : i32 = u_xlati49;
          let x_1162 : i32 = u_xlati49;
          let x_1166 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_1159 + 1i) / 4i)][((x_1162 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1157.y, x_1157.y, x_1157.y, x_1157.y) * x_1166);
          let x_1168 : i32 = u_xlati49;
          let x_1170 : i32 = u_xlati49;
          let x_1173 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[(x_1168 / 4i)][(x_1170 % 4i)];
          let x_1174 : vec3<f32> = vs_TEXCOORD7;
          let x_1177 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1173 * vec4<f32>(x_1174.x, x_1174.x, x_1174.x, x_1174.x)) + x_1177);
          let x_1179 : i32 = u_xlati49;
          let x_1182 : i32 = u_xlati49;
          let x_1186 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_1179 + 2i) / 4i)][((x_1182 + 2i) % 4i)];
          let x_1187 : vec3<f32> = vs_TEXCOORD7;
          let x_1190 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1186 * vec4<f32>(x_1187.z, x_1187.z, x_1187.z, x_1187.z)) + x_1190);
          let x_1192 : vec4<f32> = u_xlat12;
          let x_1193 : i32 = u_xlati49;
          let x_1196 : i32 = u_xlati49;
          let x_1200 : vec4<f32> = x_961.x_AdditionalLightsWorldToLights[((x_1193 + 3i) / 4i)][((x_1196 + 3i) % 4i)];
          u_xlat12 = (x_1192 + x_1200);
          let x_1202 : vec4<f32> = u_xlat12;
          let x_1204 : vec4<f32> = u_xlat12;
          let x_1206 : vec3<f32> = (vec3<f32>(x_1202.x, x_1202.y, x_1202.z) / vec3<f32>(x_1204.w, x_1204.w, x_1204.w));
          let x_1207 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
          let x_1209 : vec4<f32> = u_xlat12;
          let x_1211 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1209.x, x_1209.y, x_1209.z), vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
          let x_1214 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1214);
          let x_1216 : f32 = u_xlat48;
          let x_1218 : vec4<f32> = u_xlat12;
          let x_1220 : vec3<f32> = (vec3<f32>(x_1216, x_1216, x_1216) * vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
          let x_1221 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
          let x_1223 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1223.x, x_1223.y, x_1223.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1228 : f32 = u_xlat48;
          u_xlat48 = max(x_1228, 0.000001f);
          let x_1231 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1231);
          let x_1234 : f32 = u_xlat48;
          let x_1236 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1234, x_1234, x_1234) * vec3<f32>(x_1236.z, x_1236.x, x_1236.y));
          let x_1240 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1240);
          let x_1244 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1244, 0.0f, 1.0f);
          let x_1248 : vec3<f32> = u_xlat13;
          let x_1251 : vec4<bool> = (vec4<f32>(x_1248.y, x_1248.z, x_1248.y, x_1248.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb35 = vec2<bool>(x_1251.x, x_1251.y);
          let x_1255 : bool = u_xlatb35.x;
          if (x_1255) {
            let x_1260 : f32 = u_xlat13.x;
            x_1256 = x_1260;
          } else {
            let x_1263 : f32 = u_xlat13.x;
            x_1256 = -(x_1263);
          }
          let x_1265 : f32 = x_1256;
          u_xlat35.x = x_1265;
          let x_1268 : bool = u_xlatb35.y;
          if (x_1268) {
            let x_1273 : f32 = u_xlat13.x;
            x_1269 = x_1273;
          } else {
            let x_1276 : f32 = u_xlat13.x;
            x_1269 = -(x_1276);
          }
          let x_1278 : f32 = x_1269;
          u_xlat35.y = x_1278;
          let x_1280 : vec4<f32> = u_xlat12;
          let x_1282 : f32 = u_xlat48;
          let x_1285 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1282, x_1282)) + x_1285);
          let x_1287 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1287 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1290 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1290, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1294 : u32 = u_xlatu44;
          let x_1297 : vec4<f32> = x_961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1294)];
          let x_1299 : vec2<f32> = u_xlat35;
          let x_1301 : u32 = u_xlatu44;
          let x_1304 : vec4<f32> = x_961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1301)];
          let x_1306 : vec2<f32> = ((vec2<f32>(x_1297.x, x_1297.y) * x_1299) + vec2<f32>(x_1304.z, x_1304.w));
          let x_1307 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1306.x, x_1306.y, x_1307.z, x_1307.w);
        }
      }
      let x_1314 : vec4<f32> = u_xlat11;
      let x_1317 : f32 = x_44.x_GlobalMipBias.x;
      let x_1318 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1314.x, x_1314.y), x_1317);
      u_xlat11 = x_1318;
      let x_1320 : bool = u_xlatb7.y;
      if (x_1320) {
        let x_1325 : f32 = u_xlat11.w;
        x_1321 = x_1325;
      } else {
        let x_1328 : f32 = u_xlat11.x;
        x_1321 = x_1328;
      }
      let x_1329 : f32 = x_1321;
      u_xlat48 = x_1329;
      let x_1331 : bool = u_xlatb7.x;
      if (x_1331) {
        let x_1335 : vec4<f32> = u_xlat11;
        x_1332 = vec3<f32>(x_1335.x, x_1335.y, x_1335.z);
      } else {
        let x_1338 : f32 = u_xlat48;
        x_1332 = vec3<f32>(x_1338, x_1338, x_1338);
      }
      let x_1340 : vec3<f32> = x_1332;
      let x_1341 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1347 : vec4<f32> = u_xlat11;
    let x_1349 : u32 = u_xlatu44;
    let x_1352 : vec4<f32> = x_860.x_AdditionalLightsColor[bitcast<i32>(x_1349)];
    let x_1354 : vec3<f32> = (vec3<f32>(x_1347.x, x_1347.y, x_1347.z) * vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
    let x_1355 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
    let x_1357 : f32 = u_xlat32;
    let x_1359 : vec4<f32> = u_xlat11;
    let x_1361 : vec3<f32> = (vec3<f32>(x_1357, x_1357, x_1357) * vec3<f32>(x_1359.x, x_1359.y, x_1359.z));
    let x_1362 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1362.w);
    let x_1364 : vec3<f32> = u_xlat15;
    let x_1365 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(x_1364, x_1365);
    let x_1367 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1367, 0.0f, 1.0f);
    let x_1369 : f32 = u_xlat44;
    let x_1370 : f32 = u_xlat46;
    u_xlat44 = (x_1369 * x_1370);
    let x_1372 : f32 = u_xlat44;
    let x_1374 : vec4<f32> = u_xlat11;
    let x_1376 : vec3<f32> = (vec3<f32>(x_1372, x_1372, x_1372) * vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
    let x_1377 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
    let x_1379 : vec3<f32> = u_xlat9;
    let x_1380 : f32 = u_xlat47;
    let x_1383 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1379 * vec3<f32>(x_1380, x_1380, x_1380)) + x_1383);
    let x_1385 : vec3<f32> = u_xlat9;
    let x_1386 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1385, x_1386);
    let x_1388 : f32 = u_xlat44;
    u_xlat44 = max(x_1388, 1.17549435e-37f);
    let x_1390 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1390);
    let x_1392 : f32 = u_xlat44;
    let x_1394 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1392, x_1392, x_1392) * x_1394);
    let x_1396 : vec3<f32> = u_xlat15;
    let x_1397 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1396, x_1397);
    let x_1399 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1399, 0.0f, 1.0f);
    let x_1401 : vec3<f32> = u_xlat10;
    let x_1402 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1401, x_1402);
    let x_1404 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1404, 0.0f, 1.0f);
    let x_1406 : f32 = u_xlat44;
    let x_1407 : f32 = u_xlat44;
    u_xlat44 = (x_1406 * x_1407);
    let x_1409 : f32 = u_xlat44;
    let x_1411 : f32 = u_xlat8.x;
    u_xlat44 = ((x_1409 * x_1411) + 1.000010014f);
    let x_1414 : f32 = u_xlat46;
    let x_1415 : f32 = u_xlat46;
    u_xlat46 = (x_1414 * x_1415);
    let x_1417 : f32 = u_xlat44;
    let x_1418 : f32 = u_xlat44;
    u_xlat44 = (x_1417 * x_1418);
    let x_1420 : f32 = u_xlat46;
    u_xlat46 = max(x_1420, 0.100000001f);
    let x_1422 : f32 = u_xlat44;
    let x_1423 : f32 = u_xlat46;
    u_xlat44 = (x_1422 * x_1423);
    let x_1425 : f32 = u_xlat45;
    let x_1426 : f32 = u_xlat44;
    u_xlat44 = (x_1425 * x_1426);
    let x_1428 : f32 = u_xlat18;
    let x_1429 : f32 = u_xlat44;
    u_xlat44 = (x_1428 / x_1429);
    let x_1431 : vec4<f32> = u_xlat0;
    let x_1433 : f32 = u_xlat44;
    let x_1436 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1431.x, x_1431.y, x_1431.z) * vec3<f32>(x_1433, x_1433, x_1433)) + x_1436);
    let x_1438 : vec3<f32> = u_xlat9;
    let x_1439 : vec4<f32> = u_xlat11;
    let x_1442 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1438 * vec3<f32>(x_1439.x, x_1439.y, x_1439.z)) + x_1442);

    continuing {
      let x_1444 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1444 + bitcast<u32>(1i));
    }
  }
  let x_1446 : vec4<f32> = u_xlat2;
  let x_1448 : vec3<f32> = u_xlat4;
  let x_1451 : vec4<f32> = u_xlat6;
  let x_1453 : vec3<f32> = ((vec3<f32>(x_1446.x, x_1446.y, x_1446.z) * vec3<f32>(x_1448.x, x_1448.x, x_1448.x)) + vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
  let x_1454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
  let x_1458 : vec3<f32> = u_xlat22;
  let x_1459 : vec4<f32> = u_xlat0;
  let x_1461 : vec3<f32> = (x_1458 + vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
  let x_1462 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
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

