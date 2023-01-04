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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_264 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_353 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_475 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_586 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_688 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlatb23 : vec2<bool>;
  var u_xlatb33 : bool;
  var x_299 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat33 : f32;
  var x_422 : f32;
  var x_433 : vec3<f32>;
  var u_xlatu32 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu34 : u32;
  var u_xlati35 : i32;
  var u_xlat34 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatu36 : u32;
  var u_xlati7 : i32;
  var u_xlati36 : i32;
  var u_xlati17 : i32;
  var u_xlat7 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb17 : vec3<bool>;
  var u_xlat17 : vec3<f32>;
  var x_1004 : f32;
  var x_1017 : f32;
  var x_1079 : f32;
  var x_1090 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1191 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  let x_67 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_66, x_67);
  let x_72 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_72);
  let x_75 : vec3<f32> = u_xlat1;
  let x_77 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_75.x, x_75.x, x_75.x) * x_77);
  let x_83 : f32 = vs_TEXCOORD1.y;
  let x_87 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat31 = (x_83 * x_87);
  let x_91 : f32 = x_44.unity_MatrixV[0i].z;
  let x_93 : f32 = vs_TEXCOORD1.x;
  let x_95 : f32 = u_xlat31;
  u_xlat31 = ((x_91 * x_93) + x_95);
  let x_99 : f32 = x_44.unity_MatrixV[2i].z;
  let x_101 : f32 = vs_TEXCOORD1.z;
  let x_103 : f32 = u_xlat31;
  u_xlat31 = ((x_99 * x_101) + x_103);
  let x_105 : f32 = u_xlat31;
  let x_108 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat31 = (x_105 + x_108);
  let x_110 : f32 = u_xlat31;
  let x_114 : f32 = x_44.x_ProjectionParams.y;
  u_xlat31 = (-(x_110) + -(x_114));
  let x_117 : f32 = u_xlat31;
  u_xlat31 = max(x_117, 0.0f);
  let x_120 : f32 = u_xlat31;
  let x_123 : f32 = x_44.unity_FogParams.x;
  u_xlat31 = (x_120 * x_123);
  let x_132 : vec2<f32> = vs_TEXCOORD7;
  let x_134 : f32 = x_44.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_132, x_134);
  u_xlat2 = x_135;
  let x_141 : vec2<f32> = vs_TEXCOORD7;
  let x_143 : f32 = x_44.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_141, x_143);
  u_xlat3 = vec3<f32>(x_144.x, x_144.y, x_144.z);
  let x_146 : vec4<f32> = u_xlat2;
  let x_150 : vec3<f32> = (vec3<f32>(x_146.x, x_146.y, x_146.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_153 : vec3<f32> = u_xlat1;
  let x_154 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_153, vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_159 : f32 = u_xlat2.x;
  u_xlat2.x = (x_159 + 0.5f);
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = u_xlat3;
  let x_166 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * x_165);
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_171 : f32 = u_xlat2.w;
  u_xlat32 = max(x_171, 0.0001f);
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : f32 = u_xlat32;
  let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) / vec3<f32>(x_176, x_176, x_176));
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_183 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_184 : vec2<f32> = vec2<f32>(x_183.x, x_183.y);
  let x_188 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_184.x, x_184.y));
  let x_189 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_188.x, x_188.y, x_189.z);
  let x_191 : vec3<f32> = u_xlat3;
  let x_193 : vec4<f32> = hlslcc_FragCoord;
  let x_195 : vec2<f32> = (vec2<f32>(x_191.x, x_191.y) * vec2<f32>(x_193.x, x_193.y));
  let x_196 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_195.x, x_195.y, x_196.z);
  let x_199 : f32 = u_xlat3.y;
  let x_202 : f32 = x_44.x_ScaleBiasRt.x;
  let x_205 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat32 = ((x_199 * x_202) + x_205);
  let x_207 : f32 = u_xlat32;
  u_xlat3.z = (-(x_207) + 1.0f);
  let x_216 : vec3<f32> = u_xlat3;
  let x_219 : f32 = x_44.x_GlobalMipBias.x;
  let x_220 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_216.x, x_216.z), x_219);
  u_xlat32 = x_220.x;
  let x_222 : f32 = u_xlat32;
  u_xlat3.x = (x_222 + -1.0f);
  let x_228 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_230 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_228 * x_230) + 1.0f);
  let x_234 : f32 = u_xlat32;
  u_xlat32 = min(x_234, 1.0f);
  let x_238 : vec4<f32> = vs_TEXCOORD6;
  let x_239 : vec2<f32> = vec2<f32>(x_238.x, x_238.y);
  let x_241 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_239.x, x_239.y, x_241);
  let x_254 : vec3<f32> = txVec0;
  let x_256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_254.xy, x_254.z);
  u_xlat13.x = x_256;
  let x_266 : f32 = x_264.x_MainLightShadowParams.x;
  u_xlat23.x = (-(x_266) + 1.0f);
  let x_271 : f32 = u_xlat13.x;
  let x_273 : f32 = x_264.x_MainLightShadowParams.x;
  let x_276 : f32 = u_xlat23.x;
  u_xlat13.x = ((x_271 * x_273) + x_276);
  let x_284 : f32 = vs_TEXCOORD6.z;
  u_xlatb23.x = (0.0f >= x_284);
  let x_290 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (x_290 >= 1.0f);
  let x_292 : bool = u_xlatb33;
  let x_294 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_292 | x_294);
  let x_298 : bool = u_xlatb23.x;
  if (x_298) {
    x_299 = 1.0f;
  } else {
    let x_304 : f32 = u_xlat13.x;
    x_299 = x_304;
  }
  let x_305 : f32 = x_299;
  u_xlat13.x = x_305;
  let x_308 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_314 : vec3<f32> = (x_308 + -(x_312));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_317.x, x_317.y, x_317.z), vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_324 : f32 = u_xlat23.x;
  let x_326 : f32 = x_264.x_MainLightShadowParams.z;
  let x_329 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_324 * x_326) + x_329);
  let x_333 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_333, 0.0f, 1.0f);
  let x_338 : f32 = u_xlat13.x;
  u_xlat33 = (-(x_338) + 1.0f);
  let x_342 : f32 = u_xlat23.x;
  let x_343 : f32 = u_xlat33;
  let x_346 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_342 * x_343) + x_346);
  let x_355 : f32 = x_353.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_355 == -1.0f));
  let x_359 : bool = u_xlatb23.x;
  if (x_359) {
    let x_362 : vec3<f32> = vs_TEXCOORD1;
    let x_365 : vec4<f32> = x_353.x_MainLightWorldToLight[1i];
    u_xlat23 = (vec2<f32>(x_362.y, x_362.y) * vec2<f32>(x_365.x, x_365.y));
    let x_369 : vec4<f32> = x_353.x_MainLightWorldToLight[0i];
    let x_371 : vec3<f32> = vs_TEXCOORD1;
    let x_374 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_369.x, x_369.y) * vec2<f32>(x_371.x, x_371.x)) + x_374);
    let x_377 : vec4<f32> = x_353.x_MainLightWorldToLight[2i];
    let x_379 : vec3<f32> = vs_TEXCOORD1;
    let x_382 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_377.x, x_377.y) * vec2<f32>(x_379.z, x_379.z)) + x_382);
    let x_384 : vec2<f32> = u_xlat23;
    let x_386 : vec4<f32> = x_353.x_MainLightWorldToLight[3i];
    u_xlat23 = (x_384 + vec2<f32>(x_386.x, x_386.y));
    let x_389 : vec2<f32> = u_xlat23;
    u_xlat23 = ((x_389 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_398 : vec2<f32> = u_xlat23;
    let x_400 : f32 = x_44.x_GlobalMipBias.x;
    let x_401 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_398, x_400);
    u_xlat4 = x_401;
    let x_403 : f32 = x_353.x_MainLightCookieTextureFormat;
    let x_405 : f32 = x_353.x_MainLightCookieTextureFormat;
    let x_407 : f32 = x_353.x_MainLightCookieTextureFormat;
    let x_409 : f32 = x_353.x_MainLightCookieTextureFormat;
    let x_410 : vec4<f32> = vec4<f32>(x_403, x_405, x_407, x_409);
    let x_418 : vec4<bool> = (vec4<f32>(x_410.x, x_410.y, x_410.z, x_410.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb23 = vec2<bool>(x_418.x, x_418.y);
    let x_421 : bool = u_xlatb23.y;
    if (x_421) {
      let x_426 : f32 = u_xlat4.w;
      x_422 = x_426;
    } else {
      let x_429 : f32 = u_xlat4.x;
      x_422 = x_429;
    }
    let x_430 : f32 = x_422;
    u_xlat33 = x_430;
    let x_432 : bool = u_xlatb23.x;
    if (x_432) {
      let x_436 : vec4<f32> = u_xlat4;
      x_433 = vec3<f32>(x_436.x, x_436.y, x_436.z);
    } else {
      let x_439 : f32 = u_xlat33;
      x_433 = vec3<f32>(x_439, x_439, x_439);
    }
    let x_441 : vec3<f32> = x_433;
    let x_442 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_448 : vec4<f32> = u_xlat4;
  let x_451 : vec4<f32> = x_44.x_MainLightColor;
  let x_453 : vec3<f32> = (vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec3<f32> = u_xlat3;
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.x, x_456.x, x_456.x) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : f32 = u_xlat32;
  let x_465 : vec4<f32> = u_xlat2;
  let x_467 : vec3<f32> = (vec3<f32>(x_463, x_463, x_463) * vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_471 : f32 = u_xlat13.x;
  let x_478 : f32 = x_475.unity_LightData.z;
  u_xlat32 = (x_471 * x_478);
  let x_480 : f32 = u_xlat32;
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat13 = (vec3<f32>(x_480, x_480, x_480) * vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec3<f32> = u_xlat1;
  let x_487 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat32 = dot(x_485, vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : f32 = u_xlat32;
  u_xlat32 = clamp(x_490, 0.0f, 1.0f);
  let x_492 : f32 = u_xlat32;
  let x_494 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_492, x_492, x_492) * x_494);
  let x_496 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_496.y, x_496.z, x_496.w) * x_498);
  let x_501 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_503 : f32 = x_475.unity_LightData.y;
  u_xlat32 = min(x_501, x_503);
  let x_507 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_507));
  let x_512 : f32 = x_353.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_514 : f32 = x_353.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_516 : f32 = x_353.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_518 : f32 = x_353.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_519 : vec4<f32> = vec4<f32>(x_512, x_514, x_516, x_518);
  let x_526 : vec4<bool> = (vec4<f32>(x_519.x, x_519.y, x_519.z, x_519.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_526.x, x_526.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_538 : u32 = u_xlatu_loop_1;
    let x_539 : u32 = u_xlatu32;
    if ((x_538 < x_539)) {
    } else {
      break;
    }
    let x_542 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_542 >> 2u);
    let x_546 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_546 & 3u));
    let x_550 : u32 = u_xlatu34;
    let x_553 : vec4<f32> = x_475.unity_LightIndices[bitcast<i32>(x_550)];
    let x_563 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_568 : vec4<u32> = indexable[x_563];
    u_xlat34 = dot(x_553, bitcast<vec4<f32>>(x_568));
    let x_571 : f32 = u_xlat34;
    u_xlatu34 = bitcast<u32>(i32(x_571));
    let x_575 : vec3<f32> = vs_TEXCOORD1;
    let x_587 : u32 = u_xlatu34;
    let x_590 : vec4<f32> = x_586.x_AdditionalLightsPosition[bitcast<i32>(x_587)];
    let x_593 : u32 = u_xlatu34;
    let x_596 : vec4<f32> = x_586.x_AdditionalLightsPosition[bitcast<i32>(x_593)];
    u_xlat6 = ((-(x_575) * vec3<f32>(x_590.w, x_590.w, x_590.w)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
    let x_600 : vec3<f32> = u_xlat6;
    let x_601 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_600, x_601);
    let x_603 : f32 = u_xlat35;
    u_xlat35 = max(x_603, 6.10351562e-05f);
    let x_607 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_607);
    let x_609 : f32 = u_xlat36;
    let x_611 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_609, x_609, x_609) * x_611);
    let x_613 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_613);
    let x_615 : f32 = u_xlat35;
    let x_616 : u32 = u_xlatu34;
    let x_619 : f32 = x_586.x_AdditionalLightsAttenuation[bitcast<i32>(x_616)].x;
    u_xlat35 = (x_615 * x_619);
    let x_621 : f32 = u_xlat35;
    let x_623 : f32 = u_xlat35;
    u_xlat35 = ((-(x_621) * x_623) + 1.0f);
    let x_626 : f32 = u_xlat35;
    u_xlat35 = max(x_626, 0.0f);
    let x_628 : f32 = u_xlat35;
    let x_629 : f32 = u_xlat35;
    u_xlat35 = (x_628 * x_629);
    let x_631 : f32 = u_xlat35;
    let x_632 : f32 = u_xlat36;
    u_xlat35 = (x_631 * x_632);
    let x_634 : u32 = u_xlatu34;
    let x_637 : vec4<f32> = x_586.x_AdditionalLightsSpotDir[bitcast<i32>(x_634)];
    let x_639 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), x_639);
    let x_641 : f32 = u_xlat36;
    let x_642 : u32 = u_xlatu34;
    let x_645 : f32 = x_586.x_AdditionalLightsAttenuation[bitcast<i32>(x_642)].z;
    let x_647 : u32 = u_xlatu34;
    let x_650 : f32 = x_586.x_AdditionalLightsAttenuation[bitcast<i32>(x_647)].w;
    u_xlat36 = ((x_641 * x_645) + x_650);
    let x_652 : f32 = u_xlat36;
    u_xlat36 = clamp(x_652, 0.0f, 1.0f);
    let x_654 : f32 = u_xlat36;
    let x_655 : f32 = u_xlat36;
    u_xlat36 = (x_654 * x_655);
    let x_657 : f32 = u_xlat35;
    let x_658 : f32 = u_xlat36;
    u_xlat35 = (x_657 * x_658);
    let x_661 : u32 = u_xlatu34;
    u_xlatu36 = (x_661 >> 5u);
    let x_664 : u32 = u_xlatu34;
    u_xlati7 = (1i << bitcast<u32>((bitcast<i32>(x_664) & 31i)));
    let x_670 : i32 = u_xlati7;
    let x_672 : u32 = u_xlatu36;
    let x_675 : f32 = x_353.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_672)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_670) & bitcast<u32>(x_675)));
    let x_679 : i32 = u_xlati36;
    if ((x_679 != 0i)) {
      let x_689 : u32 = u_xlatu34;
      let x_692 : f32 = x_688.x_AdditionalLightsLightTypes[bitcast<i32>(x_689)].el;
      u_xlati36 = i32(x_692);
      let x_694 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_694 != 0i));
      let x_698 : u32 = u_xlatu34;
      u_xlati17 = (bitcast<i32>(x_698) << bitcast<u32>(2i));
      let x_701 : i32 = u_xlati7;
      if ((x_701 != 0i)) {
        let x_706 : vec3<f32> = vs_TEXCOORD1;
        let x_708 : i32 = u_xlati17;
        let x_711 : i32 = u_xlati17;
        let x_715 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_708 + 1i) / 4i)][((x_711 + 1i) % 4i)];
        let x_717 : vec3<f32> = (vec3<f32>(x_706.y, x_706.y, x_706.y) * vec3<f32>(x_715.x, x_715.y, x_715.w));
        let x_718 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_717.x, x_718.y, x_717.y, x_717.z);
        let x_720 : i32 = u_xlati17;
        let x_722 : i32 = u_xlati17;
        let x_725 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[(x_720 / 4i)][(x_722 % 4i)];
        let x_727 : vec3<f32> = vs_TEXCOORD1;
        let x_730 : vec4<f32> = u_xlat7;
        let x_732 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.y, x_725.w) * vec3<f32>(x_727.x, x_727.x, x_727.x)) + vec3<f32>(x_730.x, x_730.z, x_730.w));
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_732.x, x_733.y, x_732.y, x_732.z);
        let x_735 : i32 = u_xlati17;
        let x_738 : i32 = u_xlati17;
        let x_742 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_735 + 2i) / 4i)][((x_738 + 2i) % 4i)];
        let x_744 : vec3<f32> = vs_TEXCOORD1;
        let x_747 : vec4<f32> = u_xlat7;
        let x_749 : vec3<f32> = ((vec3<f32>(x_742.x, x_742.y, x_742.w) * vec3<f32>(x_744.z, x_744.z, x_744.z)) + vec3<f32>(x_747.x, x_747.z, x_747.w));
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_749.x, x_750.y, x_749.y, x_749.z);
        let x_752 : vec4<f32> = u_xlat7;
        let x_754 : i32 = u_xlati17;
        let x_757 : i32 = u_xlati17;
        let x_761 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_754 + 3i) / 4i)][((x_757 + 3i) % 4i)];
        let x_763 : vec3<f32> = (vec3<f32>(x_752.x, x_752.z, x_752.w) + vec3<f32>(x_761.x, x_761.y, x_761.w));
        let x_764 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_763.x, x_764.y, x_763.y, x_763.z);
        let x_766 : vec4<f32> = u_xlat7;
        let x_768 : vec4<f32> = u_xlat7;
        let x_770 : vec2<f32> = (vec2<f32>(x_766.x, x_766.z) / vec2<f32>(x_768.w, x_768.w));
        let x_771 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_770.x, x_771.y, x_770.y, x_771.w);
        let x_773 : vec4<f32> = u_xlat7;
        let x_776 : vec2<f32> = ((vec2<f32>(x_773.x, x_773.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_777 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_776.x, x_777.y, x_776.y, x_777.w);
        let x_779 : vec4<f32> = u_xlat7;
        let x_783 : vec2<f32> = clamp(vec2<f32>(x_779.x, x_779.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_784 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_783.x, x_784.y, x_783.y, x_784.w);
        let x_786 : u32 = u_xlatu34;
        let x_789 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_786)];
        let x_791 : vec4<f32> = u_xlat7;
        let x_794 : u32 = u_xlatu34;
        let x_797 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_794)];
        let x_799 : vec2<f32> = ((vec2<f32>(x_789.x, x_789.y) * vec2<f32>(x_791.x, x_791.z)) + vec2<f32>(x_797.z, x_797.w));
        let x_800 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_799.x, x_800.y, x_799.y, x_800.w);
      } else {
        let x_804 : i32 = u_xlati36;
        u_xlatb36 = (x_804 == 1i);
        let x_806 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_806);
        let x_808 : i32 = u_xlati36;
        if ((x_808 != 0i)) {
          let x_813 : vec3<f32> = vs_TEXCOORD1;
          let x_815 : i32 = u_xlati17;
          let x_818 : i32 = u_xlati17;
          let x_822 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_815 + 1i) / 4i)][((x_818 + 1i) % 4i)];
          let x_824 : vec2<f32> = (vec2<f32>(x_813.y, x_813.y) * vec2<f32>(x_822.x, x_822.y));
          let x_825 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
          let x_827 : i32 = u_xlati17;
          let x_829 : i32 = u_xlati17;
          let x_832 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[(x_827 / 4i)][(x_829 % 4i)];
          let x_834 : vec3<f32> = vs_TEXCOORD1;
          let x_837 : vec4<f32> = u_xlat8;
          let x_839 : vec2<f32> = ((vec2<f32>(x_832.x, x_832.y) * vec2<f32>(x_834.x, x_834.x)) + vec2<f32>(x_837.x, x_837.y));
          let x_840 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
          let x_842 : i32 = u_xlati17;
          let x_845 : i32 = u_xlati17;
          let x_849 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_842 + 2i) / 4i)][((x_845 + 2i) % 4i)];
          let x_851 : vec3<f32> = vs_TEXCOORD1;
          let x_854 : vec4<f32> = u_xlat8;
          let x_856 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_851.z, x_851.z)) + vec2<f32>(x_854.x, x_854.y));
          let x_857 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_856.x, x_856.y, x_857.z, x_857.w);
          let x_859 : vec4<f32> = u_xlat8;
          let x_861 : i32 = u_xlati17;
          let x_864 : i32 = u_xlati17;
          let x_868 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_861 + 3i) / 4i)][((x_864 + 3i) % 4i)];
          let x_870 : vec2<f32> = (vec2<f32>(x_859.x, x_859.y) + vec2<f32>(x_868.x, x_868.y));
          let x_871 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
          let x_873 : vec4<f32> = u_xlat8;
          let x_876 : vec2<f32> = ((vec2<f32>(x_873.x, x_873.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_877 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
          let x_879 : vec4<f32> = u_xlat8;
          let x_881 : vec2<f32> = fract(vec2<f32>(x_879.x, x_879.y));
          let x_882 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_881.x, x_881.y, x_882.z, x_882.w);
          let x_884 : u32 = u_xlatu34;
          let x_887 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_884)];
          let x_889 : vec4<f32> = u_xlat8;
          let x_892 : u32 = u_xlatu34;
          let x_895 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_892)];
          let x_897 : vec2<f32> = ((vec2<f32>(x_887.x, x_887.y) * vec2<f32>(x_889.x, x_889.y)) + vec2<f32>(x_895.z, x_895.w));
          let x_898 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_897.x, x_898.y, x_897.y, x_898.w);
        } else {
          let x_901 : vec3<f32> = vs_TEXCOORD1;
          let x_903 : i32 = u_xlati17;
          let x_906 : i32 = u_xlati17;
          let x_910 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_903 + 1i) / 4i)][((x_906 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_901.y, x_901.y, x_901.y, x_901.y) * x_910);
          let x_912 : i32 = u_xlati17;
          let x_914 : i32 = u_xlati17;
          let x_917 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[(x_912 / 4i)][(x_914 % 4i)];
          let x_918 : vec3<f32> = vs_TEXCOORD1;
          let x_921 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_917 * vec4<f32>(x_918.x, x_918.x, x_918.x, x_918.x)) + x_921);
          let x_923 : i32 = u_xlati17;
          let x_926 : i32 = u_xlati17;
          let x_930 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_923 + 2i) / 4i)][((x_926 + 2i) % 4i)];
          let x_931 : vec3<f32> = vs_TEXCOORD1;
          let x_934 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_930 * vec4<f32>(x_931.z, x_931.z, x_931.z, x_931.z)) + x_934);
          let x_936 : vec4<f32> = u_xlat8;
          let x_937 : i32 = u_xlati17;
          let x_940 : i32 = u_xlati17;
          let x_944 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_937 + 3i) / 4i)][((x_940 + 3i) % 4i)];
          u_xlat8 = (x_936 + x_944);
          let x_946 : vec4<f32> = u_xlat8;
          let x_948 : vec4<f32> = u_xlat8;
          let x_950 : vec3<f32> = (vec3<f32>(x_946.x, x_946.y, x_946.z) / vec3<f32>(x_948.w, x_948.w, x_948.w));
          let x_951 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
          let x_953 : vec4<f32> = u_xlat8;
          let x_955 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_953.x, x_953.y, x_953.z), vec3<f32>(x_955.x, x_955.y, x_955.z));
          let x_958 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_958);
          let x_960 : f32 = u_xlat36;
          let x_962 : vec4<f32> = u_xlat8;
          let x_964 : vec3<f32> = (vec3<f32>(x_960, x_960, x_960) * vec3<f32>(x_962.x, x_962.y, x_962.z));
          let x_965 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
          let x_967 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_967.x, x_967.y, x_967.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_972 : f32 = u_xlat36;
          u_xlat36 = max(x_972, 0.000001f);
          let x_975 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_975);
          let x_978 : f32 = u_xlat36;
          let x_980 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_978, x_978, x_978) * vec3<f32>(x_980.z, x_980.x, x_980.y));
          let x_984 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_984);
          let x_988 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_988, 0.0f, 1.0f);
          let x_994 : vec3<f32> = u_xlat9;
          let x_997 : vec4<bool> = (vec4<f32>(x_994.y, x_994.y, x_994.z, x_994.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_998 : vec2<bool> = vec2<bool>(x_997.x, x_997.z);
          let x_999 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_998.x, x_999.y, x_998.y);
          let x_1003 : bool = u_xlatb17.x;
          if (x_1003) {
            let x_1008 : f32 = u_xlat9.x;
            x_1004 = x_1008;
          } else {
            let x_1011 : f32 = u_xlat9.x;
            x_1004 = -(x_1011);
          }
          let x_1013 : f32 = x_1004;
          u_xlat17.x = x_1013;
          let x_1016 : bool = u_xlatb17.z;
          if (x_1016) {
            let x_1021 : f32 = u_xlat9.x;
            x_1017 = x_1021;
          } else {
            let x_1024 : f32 = u_xlat9.x;
            x_1017 = -(x_1024);
          }
          let x_1026 : f32 = x_1017;
          u_xlat17.z = x_1026;
          let x_1028 : vec4<f32> = u_xlat8;
          let x_1030 : f32 = u_xlat36;
          let x_1033 : vec3<f32> = u_xlat17;
          let x_1035 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1030, x_1030)) + vec2<f32>(x_1033.x, x_1033.z));
          let x_1036 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1035.x, x_1036.y, x_1035.y);
          let x_1038 : vec3<f32> = u_xlat17;
          let x_1041 : vec2<f32> = ((vec2<f32>(x_1038.x, x_1038.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1042 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1041.x, x_1042.y, x_1041.y);
          let x_1044 : vec3<f32> = u_xlat17;
          let x_1048 : vec2<f32> = clamp(vec2<f32>(x_1044.x, x_1044.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1049 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1048.x, x_1049.y, x_1048.y);
          let x_1051 : u32 = u_xlatu34;
          let x_1054 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1051)];
          let x_1056 : vec3<f32> = u_xlat17;
          let x_1059 : u32 = u_xlatu34;
          let x_1062 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1059)];
          let x_1064 : vec2<f32> = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1056.x, x_1056.z)) + vec2<f32>(x_1062.z, x_1062.w));
          let x_1065 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1064.x, x_1065.y, x_1064.y, x_1065.w);
        }
      }
      let x_1072 : vec4<f32> = u_xlat7;
      let x_1075 : f32 = x_44.x_GlobalMipBias.x;
      let x_1076 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1072.x, x_1072.z), x_1075);
      u_xlat7 = x_1076;
      let x_1078 : bool = u_xlatb4.y;
      if (x_1078) {
        let x_1083 : f32 = u_xlat7.w;
        x_1079 = x_1083;
      } else {
        let x_1086 : f32 = u_xlat7.x;
        x_1079 = x_1086;
      }
      let x_1087 : f32 = x_1079;
      u_xlat36 = x_1087;
      let x_1089 : bool = u_xlatb4.x;
      if (x_1089) {
        let x_1093 : vec4<f32> = u_xlat7;
        x_1090 = vec3<f32>(x_1093.x, x_1093.y, x_1093.z);
      } else {
        let x_1096 : f32 = u_xlat36;
        x_1090 = vec3<f32>(x_1096, x_1096, x_1096);
      }
      let x_1098 : vec3<f32> = x_1090;
      let x_1099 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1105 : vec4<f32> = u_xlat7;
    let x_1107 : u32 = u_xlatu34;
    let x_1110 : vec4<f32> = x_586.x_AdditionalLightsColor[bitcast<i32>(x_1107)];
    let x_1112 : vec3<f32> = (vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
    let x_1113 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
    let x_1115 : vec3<f32> = u_xlat3;
    let x_1117 : vec4<f32> = u_xlat7;
    let x_1119 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.x, x_1115.x) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
    let x_1120 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
    let x_1122 : f32 = u_xlat35;
    let x_1124 : vec4<f32> = u_xlat7;
    let x_1126 : vec3<f32> = (vec3<f32>(x_1122, x_1122, x_1122) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
    let x_1127 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
    let x_1129 : vec3<f32> = u_xlat1;
    let x_1130 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_1129, x_1130);
    let x_1132 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1132, 0.0f, 1.0f);
    let x_1134 : f32 = u_xlat34;
    let x_1136 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1134, x_1134, x_1134) * vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
    let x_1139 : vec3<f32> = u_xlat6;
    let x_1140 : vec4<f32> = u_xlat0;
    let x_1143 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1139 * vec3<f32>(x_1140.y, x_1140.z, x_1140.w)) + x_1143);

    continuing {
      let x_1145 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1145 + bitcast<u32>(1i));
    }
  }
  let x_1148 : vec4<f32> = u_xlat2;
  let x_1150 : vec4<f32> = u_xlat0;
  let x_1153 : vec3<f32> = u_xlat13;
  u_xlat10 = ((vec3<f32>(x_1148.x, x_1148.y, x_1148.z) * vec3<f32>(x_1150.y, x_1150.z, x_1150.w)) + x_1153);
  let x_1155 : vec3<f32> = u_xlat5;
  let x_1156 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1155 + x_1156);
  let x_1158 : f32 = u_xlat31;
  let x_1159 : f32 = u_xlat31;
  u_xlat1.x = (x_1158 * -(x_1159));
  let x_1164 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1164);
  let x_1167 : vec3<f32> = u_xlat10;
  let x_1170 : vec4<f32> = x_44.unity_FogColor;
  u_xlat10 = (x_1167 + -(vec3<f32>(x_1170.x, x_1170.y, x_1170.z)));
  let x_1176 : vec3<f32> = u_xlat1;
  let x_1178 : vec3<f32> = u_xlat10;
  let x_1181 : vec4<f32> = x_44.unity_FogColor;
  let x_1183 : vec3<f32> = ((vec3<f32>(x_1176.x, x_1176.x, x_1176.x) * x_1178) + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1188 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_1188 == 1.0f);
  let x_1190 : bool = u_xlatb10;
  if (x_1190) {
    let x_1195 : f32 = u_xlat0.x;
    x_1191 = x_1195;
  } else {
    x_1191 = 1.0f;
  }
  let x_1197 : f32 = x_1191;
  SV_Target0.w = x_1197;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

