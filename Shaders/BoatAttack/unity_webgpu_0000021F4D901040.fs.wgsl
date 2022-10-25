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
  x_ScaleBiasRt : vec4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_306 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_369 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_507 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_630 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_731 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb36 : bool;
  var u_xlat36 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_455 : f32;
  var x_466 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1027 : f32;
  var x_1040 : f32;
  var x_1092 : f32;
  var x_1103 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat11 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat33;
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat22;
  u_xlat22 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat11;
  let x_106 : f32 = u_xlat22;
  u_xlat11 = (x_105 / x_106);
  let x_108 : f32 = u_xlat11;
  u_xlat11 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat11;
  u_xlat11 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb22;
  if (x_118) {
    let x_122 : f32 = u_xlat11;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_168 : vec2<f32> = vs_TEXCOORD1;
  let x_170 : f32 = x_43.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_168, x_170);
  u_xlat3 = x_171;
  let x_177 : vec2<f32> = vs_TEXCOORD1;
  let x_179 : f32 = x_43.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_177, x_179);
  let x_181 : vec3<f32> = vec3<f32>(x_180.x, x_180.y, x_180.z);
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat3;
  let x_188 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec3<f32> = u_xlat2;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_191, vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_197 : f32 = u_xlat0.x;
  u_xlat0.x = (x_197 + 0.5f);
  let x_200 : vec4<f32> = u_xlat0;
  let x_202 : vec4<f32> = u_xlat4;
  let x_204 : vec3<f32> = (vec3<f32>(x_200.x, x_200.x, x_200.x) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : f32 = u_xlat3.w;
  u_xlat0.x = max(x_208, 0.0001f);
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec4<f32> = u_xlat0;
  let x_215 : vec3<f32> = (vec3<f32>(x_211.x, x_211.y, x_211.z) / vec3<f32>(x_213.x, x_213.x, x_213.x));
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_221 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_222 : vec2<f32> = vec2<f32>(x_221.x, x_221.y);
  let x_226 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_222.x, x_222.y));
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_226.x, x_227.y, x_227.z, x_226.y);
  let x_229 : vec4<f32> = u_xlat0;
  let x_231 : vec4<f32> = hlslcc_FragCoord;
  let x_233 : vec2<f32> = (vec2<f32>(x_229.x, x_229.w) * vec2<f32>(x_231.x, x_231.y));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_234.w);
  let x_238 : f32 = u_xlat4.y;
  let x_241 : f32 = x_43.x_ScaleBiasRt.x;
  let x_244 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_238 * x_241) + x_244);
  let x_248 : f32 = u_xlat0.x;
  u_xlat4.z = (-(x_248) + 1.0f);
  let x_258 : vec4<f32> = u_xlat4;
  let x_261 : f32 = x_43.x_GlobalMipBias.x;
  let x_262 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_258.x, x_258.z), x_261);
  u_xlat0.x = x_262.x;
  let x_266 : f32 = u_xlat0.x;
  u_xlat33 = (x_266 + -1.0f);
  let x_271 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_272 : f32 = u_xlat33;
  u_xlat33 = ((x_271 * x_272) + 1.0f);
  let x_276 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_276, 1.0f);
  let x_281 : vec4<f32> = vs_TEXCOORD6;
  let x_282 : vec2<f32> = vec2<f32>(x_281.x, x_281.y);
  let x_284 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_282.x, x_282.y, x_284);
  let x_297 : vec3<f32> = txVec0;
  let x_299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_297.xy, x_297.z);
  u_xlat34 = x_299;
  let x_308 : f32 = x_306.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_308) + 1.0f);
  let x_311 : f32 = u_xlat34;
  let x_313 : f32 = x_306.x_MainLightShadowParams.x;
  let x_315 : f32 = u_xlat35;
  u_xlat34 = ((x_311 * x_313) + x_315);
  let x_319 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (0.0f >= x_319);
  let x_323 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (x_323 >= 1.0f);
  let x_325 : bool = u_xlatb35;
  let x_326 : bool = u_xlatb36;
  u_xlatb35 = (x_325 | x_326);
  let x_328 : bool = u_xlatb35;
  let x_329 : f32 = u_xlat34;
  u_xlat34 = select(x_329, 1.0f, x_328);
  let x_332 : vec4<f32> = vs_TEXCOORD2;
  let x_337 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_339 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + -(x_337));
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat4;
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_342.x, x_342.y, x_342.z), vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : f32 = u_xlat35;
  let x_349 : f32 = x_306.x_MainLightShadowParams.z;
  let x_352 : f32 = x_306.x_MainLightShadowParams.w;
  u_xlat35 = ((x_347 * x_349) + x_352);
  let x_354 : f32 = u_xlat35;
  u_xlat35 = clamp(x_354, 0.0f, 1.0f);
  let x_357 : f32 = u_xlat34;
  u_xlat36 = (-(x_357) + 1.0f);
  let x_360 : f32 = u_xlat35;
  let x_361 : f32 = u_xlat36;
  let x_363 : f32 = u_xlat34;
  u_xlat34 = ((x_360 * x_361) + x_363);
  let x_371 : f32 = x_369.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_371 == -1.0f));
  let x_373 : bool = u_xlatb35;
  if (x_373) {
    let x_376 : vec4<f32> = vs_TEXCOORD2;
    let x_379 : vec4<f32> = x_369.x_MainLightWorldToLight[1i];
    let x_381 : vec2<f32> = (vec2<f32>(x_376.y, x_376.y) * vec2<f32>(x_379.x, x_379.y));
    let x_382 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
    let x_385 : vec4<f32> = x_369.x_MainLightWorldToLight[0i];
    let x_387 : vec4<f32> = vs_TEXCOORD2;
    let x_390 : vec4<f32> = u_xlat4;
    let x_392 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(x_387.x, x_387.x)) + vec2<f32>(x_390.x, x_390.y));
    let x_393 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_396 : vec4<f32> = x_369.x_MainLightWorldToLight[2i];
    let x_398 : vec4<f32> = vs_TEXCOORD2;
    let x_401 : vec4<f32> = u_xlat4;
    let x_403 : vec2<f32> = ((vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_398.z, x_398.z)) + vec2<f32>(x_401.x, x_401.y));
    let x_404 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_406 : vec4<f32> = u_xlat4;
    let x_410 : vec4<f32> = x_369.x_MainLightWorldToLight[3i];
    let x_412 : vec2<f32> = (vec2<f32>(x_406.x, x_406.y) + vec2<f32>(x_410.x, x_410.y));
    let x_413 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
    let x_415 : vec4<f32> = u_xlat4;
    let x_419 : vec2<f32> = ((vec2<f32>(x_415.x, x_415.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_420 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
    let x_427 : vec4<f32> = u_xlat4;
    let x_430 : f32 = x_43.x_GlobalMipBias.x;
    let x_431 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_427.x, x_427.y), x_430);
    u_xlat4 = x_431;
    let x_436 : f32 = x_369.x_MainLightCookieTextureFormat;
    let x_438 : f32 = x_369.x_MainLightCookieTextureFormat;
    let x_440 : f32 = x_369.x_MainLightCookieTextureFormat;
    let x_442 : f32 = x_369.x_MainLightCookieTextureFormat;
    let x_443 : vec4<f32> = vec4<f32>(x_436, x_438, x_440, x_442);
    let x_451 : vec4<bool> = (vec4<f32>(x_443.x, x_443.y, x_443.z, x_443.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_451.x, x_451.y);
    let x_454 : bool = u_xlatb5.y;
    if (x_454) {
      let x_459 : f32 = u_xlat4.w;
      x_455 = x_459;
    } else {
      let x_462 : f32 = u_xlat4.x;
      x_455 = x_462;
    }
    let x_463 : f32 = x_455;
    u_xlat35 = x_463;
    let x_465 : bool = u_xlatb5.x;
    if (x_465) {
      let x_469 : vec4<f32> = u_xlat4;
      x_466 = vec3<f32>(x_469.x, x_469.y, x_469.z);
    } else {
      let x_472 : f32 = u_xlat35;
      x_466 = vec3<f32>(x_472, x_472, x_472);
    }
    let x_474 : vec3<f32> = x_466;
    let x_475 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_481 : vec4<f32> = u_xlat4;
  let x_484 : vec4<f32> = x_43.x_MainLightColor;
  let x_486 : vec3<f32> = (vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : f32 = u_xlat33;
  let x_491 : vec4<f32> = u_xlat4;
  let x_493 : vec3<f32> = (vec3<f32>(x_489, x_489, x_489) * vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat0;
  let x_498 : vec4<f32> = u_xlat3;
  let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.x, x_496.x) * vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : f32 = u_xlat34;
  let x_509 : f32 = x_507.unity_LightData.z;
  u_xlat0.x = (x_503 * x_509);
  let x_512 : vec4<f32> = u_xlat0;
  let x_514 : vec4<f32> = u_xlat4;
  let x_516 : vec3<f32> = (vec3<f32>(x_512.x, x_512.x, x_512.x) * vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec3<f32> = u_xlat2;
  let x_521 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_519, vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_526 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_526, 0.0f, 1.0f);
  let x_529 : vec4<f32> = u_xlat0;
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.x, x_529.x) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat1;
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_545 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_547 : f32 = x_507.unity_LightData.y;
  u_xlat0.x = min(x_545, x_547);
  let x_553 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_553));
  let x_557 : f32 = x_369.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_559 : f32 = x_369.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_561 : f32 = x_369.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_563 : f32 = x_369.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_564 : vec4<f32> = vec4<f32>(x_557, x_559, x_561, x_563);
  let x_570 : vec4<bool> = (vec4<f32>(x_564.x, x_564.y, x_564.z, x_564.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_570.x, x_570.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_582 : u32 = u_xlatu_loop_1;
    let x_583 : u32 = u_xlatu0;
    if ((x_582 < x_583)) {
    } else {
      break;
    }
    let x_586 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_586 >> 2u);
    let x_590 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_590 & 3u));
    let x_593 : u32 = u_xlatu35;
    let x_596 : vec4<f32> = x_507.unity_LightIndices[bitcast<i32>(x_593)];
    let x_606 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_611 : vec4<u32> = indexable[x_606];
    u_xlat35 = dot(x_596, bitcast<vec4<f32>>(x_611));
    let x_614 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_614));
    let x_618 : vec4<f32> = vs_TEXCOORD2;
    let x_631 : u32 = u_xlatu35;
    let x_634 : vec4<f32> = x_630.x_AdditionalLightsPosition[bitcast<i32>(x_631)];
    let x_637 : u32 = u_xlatu35;
    let x_640 : vec4<f32> = x_630.x_AdditionalLightsPosition[bitcast<i32>(x_637)];
    u_xlat7 = ((-(vec3<f32>(x_618.x, x_618.y, x_618.z)) * vec3<f32>(x_634.w, x_634.w, x_634.w)) + vec3<f32>(x_640.x, x_640.y, x_640.z));
    let x_643 : vec3<f32> = u_xlat7;
    let x_644 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_643, x_644);
    let x_646 : f32 = u_xlat36;
    u_xlat36 = max(x_646, 6.10351562e-05f);
    let x_650 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_650);
    let x_652 : f32 = u_xlat37;
    let x_654 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_652, x_652, x_652) * x_654);
    let x_656 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_656);
    let x_658 : f32 = u_xlat36;
    let x_659 : u32 = u_xlatu35;
    let x_662 : f32 = x_630.x_AdditionalLightsAttenuation[bitcast<i32>(x_659)].x;
    u_xlat36 = (x_658 * x_662);
    let x_664 : f32 = u_xlat36;
    let x_666 : f32 = u_xlat36;
    u_xlat36 = ((-(x_664) * x_666) + 1.0f);
    let x_669 : f32 = u_xlat36;
    u_xlat36 = max(x_669, 0.0f);
    let x_671 : f32 = u_xlat36;
    let x_672 : f32 = u_xlat36;
    u_xlat36 = (x_671 * x_672);
    let x_674 : f32 = u_xlat36;
    let x_675 : f32 = u_xlat37;
    u_xlat36 = (x_674 * x_675);
    let x_677 : u32 = u_xlatu35;
    let x_680 : vec4<f32> = x_630.x_AdditionalLightsSpotDir[bitcast<i32>(x_677)];
    let x_682 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_680.x, x_680.y, x_680.z), x_682);
    let x_684 : f32 = u_xlat37;
    let x_685 : u32 = u_xlatu35;
    let x_688 : f32 = x_630.x_AdditionalLightsAttenuation[bitcast<i32>(x_685)].z;
    let x_690 : u32 = u_xlatu35;
    let x_693 : f32 = x_630.x_AdditionalLightsAttenuation[bitcast<i32>(x_690)].w;
    u_xlat37 = ((x_684 * x_688) + x_693);
    let x_695 : f32 = u_xlat37;
    u_xlat37 = clamp(x_695, 0.0f, 1.0f);
    let x_697 : f32 = u_xlat37;
    let x_698 : f32 = u_xlat37;
    u_xlat37 = (x_697 * x_698);
    let x_700 : f32 = u_xlat36;
    let x_701 : f32 = u_xlat37;
    u_xlat36 = (x_700 * x_701);
    let x_704 : u32 = u_xlatu35;
    u_xlatu37 = (x_704 >> 5u);
    let x_707 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_707) & 31i)));
    let x_713 : i32 = u_xlati27;
    let x_715 : u32 = u_xlatu37;
    let x_718 : f32 = x_369.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_715)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_713) & bitcast<u32>(x_718)));
    let x_722 : i32 = u_xlati37;
    if ((x_722 != 0i)) {
      let x_732 : u32 = u_xlatu35;
      let x_735 : f32 = x_731.x_AdditionalLightsLightTypes[bitcast<i32>(x_732)].el;
      u_xlati37 = i32(x_735);
      let x_737 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_737 != 0i));
      let x_741 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_741) << bitcast<u32>(2i));
      let x_744 : i32 = u_xlati27;
      if ((x_744 != 0i)) {
        let x_749 : vec4<f32> = vs_TEXCOORD2;
        let x_751 : i32 = u_xlati38;
        let x_754 : i32 = u_xlati38;
        let x_758 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_751 + 1i) / 4i)][((x_754 + 1i) % 4i)];
        let x_760 : vec3<f32> = (vec3<f32>(x_749.y, x_749.y, x_749.y) * vec3<f32>(x_758.x, x_758.y, x_758.w));
        let x_761 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_763 : i32 = u_xlati38;
        let x_765 : i32 = u_xlati38;
        let x_768 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[(x_763 / 4i)][(x_765 % 4i)];
        let x_770 : vec4<f32> = vs_TEXCOORD2;
        let x_773 : vec4<f32> = u_xlat8;
        let x_775 : vec3<f32> = ((vec3<f32>(x_768.x, x_768.y, x_768.w) * vec3<f32>(x_770.x, x_770.x, x_770.x)) + vec3<f32>(x_773.x, x_773.y, x_773.z));
        let x_776 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
        let x_778 : i32 = u_xlati38;
        let x_781 : i32 = u_xlati38;
        let x_785 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_778 + 2i) / 4i)][((x_781 + 2i) % 4i)];
        let x_787 : vec4<f32> = vs_TEXCOORD2;
        let x_790 : vec4<f32> = u_xlat8;
        let x_792 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.y, x_785.w) * vec3<f32>(x_787.z, x_787.z, x_787.z)) + vec3<f32>(x_790.x, x_790.y, x_790.z));
        let x_793 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat8;
        let x_797 : i32 = u_xlati38;
        let x_800 : i32 = u_xlati38;
        let x_804 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_797 + 3i) / 4i)][((x_800 + 3i) % 4i)];
        let x_806 : vec3<f32> = (vec3<f32>(x_795.x, x_795.y, x_795.z) + vec3<f32>(x_804.x, x_804.y, x_804.w));
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat8;
        let x_811 : vec4<f32> = u_xlat8;
        let x_813 : vec2<f32> = (vec2<f32>(x_809.x, x_809.y) / vec2<f32>(x_811.z, x_811.z));
        let x_814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat8;
        let x_819 : vec2<f32> = ((vec2<f32>(x_816.x, x_816.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat8;
        let x_826 : vec2<f32> = clamp(vec2<f32>(x_822.x, x_822.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_827 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_829 : u32 = u_xlatu35;
        let x_832 : vec4<f32> = x_731.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_829)];
        let x_834 : vec4<f32> = u_xlat8;
        let x_837 : u32 = u_xlatu35;
        let x_840 : vec4<f32> = x_731.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_837)];
        let x_842 : vec2<f32> = ((vec2<f32>(x_832.x, x_832.y) * vec2<f32>(x_834.x, x_834.y)) + vec2<f32>(x_840.z, x_840.w));
        let x_843 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_842.x, x_842.y, x_843.z, x_843.w);
      } else {
        let x_847 : i32 = u_xlati37;
        u_xlatb37 = (x_847 == 1i);
        let x_849 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_849);
        let x_851 : i32 = u_xlati37;
        if ((x_851 != 0i)) {
          let x_857 : vec4<f32> = vs_TEXCOORD2;
          let x_859 : i32 = u_xlati38;
          let x_862 : i32 = u_xlati38;
          let x_866 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_859 + 1i) / 4i)][((x_862 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_857.y, x_857.y) * vec2<f32>(x_866.x, x_866.y));
          let x_869 : i32 = u_xlati38;
          let x_871 : i32 = u_xlati38;
          let x_874 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[(x_869 / 4i)][(x_871 % 4i)];
          let x_876 : vec4<f32> = vs_TEXCOORD2;
          let x_879 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_874.x, x_874.y) * vec2<f32>(x_876.x, x_876.x)) + x_879);
          let x_881 : i32 = u_xlati38;
          let x_884 : i32 = u_xlati38;
          let x_888 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_881 + 2i) / 4i)][((x_884 + 2i) % 4i)];
          let x_890 : vec4<f32> = vs_TEXCOORD2;
          let x_893 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(x_890.z, x_890.z)) + x_893);
          let x_895 : vec2<f32> = u_xlat30;
          let x_896 : i32 = u_xlati38;
          let x_899 : i32 = u_xlati38;
          let x_903 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_896 + 3i) / 4i)][((x_899 + 3i) % 4i)];
          u_xlat30 = (x_895 + vec2<f32>(x_903.x, x_903.y));
          let x_906 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_906 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_909 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_909);
          let x_911 : u32 = u_xlatu35;
          let x_914 : vec4<f32> = x_731.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_911)];
          let x_916 : vec2<f32> = u_xlat30;
          let x_918 : u32 = u_xlatu35;
          let x_921 : vec4<f32> = x_731.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_918)];
          let x_923 : vec2<f32> = ((vec2<f32>(x_914.x, x_914.y) * x_916) + vec2<f32>(x_921.z, x_921.w));
          let x_924 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        } else {
          let x_928 : vec4<f32> = vs_TEXCOORD2;
          let x_930 : i32 = u_xlati38;
          let x_933 : i32 = u_xlati38;
          let x_937 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_930 + 1i) / 4i)][((x_933 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_928.y, x_928.y, x_928.y, x_928.y) * x_937);
          let x_939 : i32 = u_xlati38;
          let x_941 : i32 = u_xlati38;
          let x_944 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[(x_939 / 4i)][(x_941 % 4i)];
          let x_945 : vec4<f32> = vs_TEXCOORD2;
          let x_948 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_944 * vec4<f32>(x_945.x, x_945.x, x_945.x, x_945.x)) + x_948);
          let x_950 : i32 = u_xlati38;
          let x_953 : i32 = u_xlati38;
          let x_957 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_950 + 2i) / 4i)][((x_953 + 2i) % 4i)];
          let x_958 : vec4<f32> = vs_TEXCOORD2;
          let x_961 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_957 * vec4<f32>(x_958.z, x_958.z, x_958.z, x_958.z)) + x_961);
          let x_963 : vec4<f32> = u_xlat9;
          let x_964 : i32 = u_xlati38;
          let x_967 : i32 = u_xlati38;
          let x_971 : vec4<f32> = x_731.x_AdditionalLightsWorldToLights[((x_964 + 3i) / 4i)][((x_967 + 3i) % 4i)];
          u_xlat9 = (x_963 + x_971);
          let x_973 : vec4<f32> = u_xlat9;
          let x_975 : vec4<f32> = u_xlat9;
          let x_977 : vec3<f32> = (vec3<f32>(x_973.x, x_973.y, x_973.z) / vec3<f32>(x_975.w, x_975.w, x_975.w));
          let x_978 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
          let x_980 : vec4<f32> = u_xlat9;
          let x_982 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_980.x, x_980.y, x_980.z), vec3<f32>(x_982.x, x_982.y, x_982.z));
          let x_985 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_985);
          let x_987 : f32 = u_xlat37;
          let x_989 : vec4<f32> = u_xlat9;
          let x_991 : vec3<f32> = (vec3<f32>(x_987, x_987, x_987) * vec3<f32>(x_989.x, x_989.y, x_989.z));
          let x_992 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
          let x_994 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_994.x, x_994.y, x_994.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_999 : f32 = u_xlat37;
          u_xlat37 = max(x_999, 0.000001f);
          let x_1002 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1002);
          let x_1005 : f32 = u_xlat37;
          let x_1007 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1005, x_1005, x_1005) * vec3<f32>(x_1007.z, x_1007.x, x_1007.y));
          let x_1011 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1011);
          let x_1015 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1015, 0.0f, 1.0f);
          let x_1019 : vec3<f32> = u_xlat10;
          let x_1022 : vec4<bool> = (vec4<f32>(x_1019.y, x_1019.z, x_1019.y, x_1019.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1022.x, x_1022.y);
          let x_1026 : bool = u_xlatb27.x;
          if (x_1026) {
            let x_1031 : f32 = u_xlat10.x;
            x_1027 = x_1031;
          } else {
            let x_1034 : f32 = u_xlat10.x;
            x_1027 = -(x_1034);
          }
          let x_1036 : f32 = x_1027;
          u_xlat27.x = x_1036;
          let x_1039 : bool = u_xlatb27.y;
          if (x_1039) {
            let x_1044 : f32 = u_xlat10.x;
            x_1040 = x_1044;
          } else {
            let x_1047 : f32 = u_xlat10.x;
            x_1040 = -(x_1047);
          }
          let x_1049 : f32 = x_1040;
          u_xlat27.y = x_1049;
          let x_1051 : vec4<f32> = u_xlat9;
          let x_1053 : f32 = u_xlat37;
          let x_1056 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1053, x_1053)) + x_1056);
          let x_1058 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1058 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1061 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1061, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1065 : u32 = u_xlatu35;
          let x_1068 : vec4<f32> = x_731.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1065)];
          let x_1070 : vec2<f32> = u_xlat27;
          let x_1072 : u32 = u_xlatu35;
          let x_1075 : vec4<f32> = x_731.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1072)];
          let x_1077 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.y) * x_1070) + vec2<f32>(x_1075.z, x_1075.w));
          let x_1078 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        }
      }
      let x_1085 : vec4<f32> = u_xlat8;
      let x_1088 : f32 = x_43.x_GlobalMipBias.x;
      let x_1089 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1085.x, x_1085.y), x_1088);
      u_xlat8 = x_1089;
      let x_1091 : bool = u_xlatb5.y;
      if (x_1091) {
        let x_1096 : f32 = u_xlat8.w;
        x_1092 = x_1096;
      } else {
        let x_1099 : f32 = u_xlat8.x;
        x_1092 = x_1099;
      }
      let x_1100 : f32 = x_1092;
      u_xlat37 = x_1100;
      let x_1102 : bool = u_xlatb5.x;
      if (x_1102) {
        let x_1106 : vec4<f32> = u_xlat8;
        x_1103 = vec3<f32>(x_1106.x, x_1106.y, x_1106.z);
      } else {
        let x_1109 : f32 = u_xlat37;
        x_1103 = vec3<f32>(x_1109, x_1109, x_1109);
      }
      let x_1111 : vec3<f32> = x_1103;
      let x_1112 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1118 : vec4<f32> = u_xlat8;
    let x_1120 : u32 = u_xlatu35;
    let x_1123 : vec4<f32> = x_630.x_AdditionalLightsColor[bitcast<i32>(x_1120)];
    let x_1125 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
    let x_1126 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
    let x_1128 : f32 = u_xlat33;
    let x_1130 : vec4<f32> = u_xlat8;
    let x_1132 : vec3<f32> = (vec3<f32>(x_1128, x_1128, x_1128) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
    let x_1133 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
    let x_1135 : f32 = u_xlat36;
    let x_1137 : vec4<f32> = u_xlat8;
    let x_1139 : vec3<f32> = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
    let x_1140 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
    let x_1142 : vec3<f32> = u_xlat2;
    let x_1143 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1142, x_1143);
    let x_1145 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1145, 0.0f, 1.0f);
    let x_1147 : f32 = u_xlat35;
    let x_1149 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1147, x_1147, x_1147) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
    let x_1152 : vec3<f32> = u_xlat7;
    let x_1153 : vec4<f32> = u_xlat1;
    let x_1156 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1152 * vec3<f32>(x_1153.x, x_1153.y, x_1153.z)) + x_1156);

    continuing {
      let x_1158 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1158 + bitcast<u32>(1i));
    }
  }
  let x_1160 : vec4<f32> = u_xlat3;
  let x_1162 : vec4<f32> = u_xlat1;
  let x_1165 : vec4<f32> = u_xlat4;
  let x_1167 : vec3<f32> = ((vec3<f32>(x_1160.x, x_1160.y, x_1160.z) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z)) + vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1172 : vec3<f32> = u_xlat6;
  let x_1173 : vec4<f32> = u_xlat1;
  let x_1175 : vec3<f32> = (x_1172 + vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1178 : bool = u_xlatb22;
  let x_1179 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1179, x_1178);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

