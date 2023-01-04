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

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_402 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_465 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_603 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_770 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_885 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat36 : f32;
  var u_xlatb24 : bool;
  var x_130 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlatb39 : bool;
  var u_xlatb40 : bool;
  var u_xlat40 : f32;
  var u_xlatb6 : vec2<bool>;
  var x_551 : f32;
  var x_562 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat8 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat30 : vec2<f32>;
  var u_xlatu30 : u32;
  var u_xlati42 : i32;
  var u_xlati30 : i32;
  var u_xlati43 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlatb30 : bool;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb33 : vec2<bool>;
  var u_xlat33 : vec2<f32>;
  var x_1187 : f32;
  var x_1200 : f32;
  var x_1252 : f32;
  var x_1264 : vec3<f32>;
  var x_1391 : f32;
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
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat12.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat36;
  let x_104 : f32 = u_xlat24;
  u_xlat24 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat24;
  u_xlat24 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat12.x;
  let x_112 : f32 = u_xlat24;
  u_xlat12.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat12.x;
  u_xlat12.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb24;
  if (x_129) {
    let x_134 : f32 = u_xlat12.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat12.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat12.x;
  u_xlatb12 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb12;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_43.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_164, x_166);
  u_xlat2 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_170 : f32 = u_xlat2.x;
  let x_173 : f32 = u_xlat2.z;
  u_xlat2.x = (x_170 * x_173);
  let x_176 : vec3<f32> = u_xlat2;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat12;
  let x_188 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec3<f32> = u_xlat12;
  let x_213 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_210.z, x_210.z, x_210.z) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec3<f32> = u_xlat12;
  let x_219 : vec4<f32> = vs_TEXCOORD3;
  let x_222 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_219.x, x_219.y, x_219.z)) + x_222);
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = vs_TEXCOORD2;
  let x_230 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_224.x, x_224.x, x_224.x) * vec3<f32>(x_227.x, x_227.y, x_227.z)) + x_230);
  let x_232 : vec3<f32> = u_xlat2;
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat12.x = dot(x_232, x_233);
  let x_237 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat12;
  let x_242 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_240.x, x_240.x, x_240.x) * x_242);
  let x_246 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_246;
  let x_249 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_249;
  let x_253 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_253;
  let x_255 : vec3<f32> = u_xlat3;
  let x_256 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_255, x_256);
  let x_260 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_260, 1.17549435e-37f);
  let x_265 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_265);
  let x_275 : vec2<f32> = vs_TEXCOORD7;
  let x_277 : f32 = x_43.x_GlobalMipBias.x;
  let x_278 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_275, x_277);
  u_xlat4 = x_278;
  let x_284 : vec2<f32> = vs_TEXCOORD7;
  let x_286 : f32 = x_43.x_GlobalMipBias.x;
  let x_287 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_284, x_286);
  let x_288 : vec3<f32> = vec3<f32>(x_287.x, x_287.y, x_287.z);
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat4;
  let x_295 : vec3<f32> = (vec3<f32>(x_291.x, x_291.y, x_291.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec3<f32> = u_xlat2;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_298, vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : f32 = u_xlat36;
  u_xlat36 = (x_302 + 0.5f);
  let x_304 : f32 = u_xlat36;
  let x_306 : vec4<f32> = u_xlat5;
  let x_308 : vec3<f32> = (vec3<f32>(x_304, x_304, x_304) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_312 : f32 = u_xlat4.w;
  u_xlat36 = max(x_312, 0.0001f);
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : f32 = u_xlat36;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) / vec3<f32>(x_316, x_316, x_316));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_323 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_324 : vec2<f32> = vec2<f32>(x_323.x, x_323.y);
  let x_328 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_324.x, x_324.y));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_329.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = hlslcc_FragCoord;
  let x_335 : vec2<f32> = (vec2<f32>(x_331.x, x_331.y) * vec2<f32>(x_333.x, x_333.y));
  let x_336 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
  let x_339 : f32 = u_xlat5.y;
  let x_342 : f32 = x_43.x_ScaleBiasRt.x;
  let x_345 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat36 = ((x_339 * x_342) + x_345);
  let x_347 : f32 = u_xlat36;
  u_xlat5.z = (-(x_347) + 1.0f);
  let x_356 : vec4<f32> = u_xlat5;
  let x_359 : f32 = x_43.x_GlobalMipBias.x;
  let x_360 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_356.x, x_356.z), x_359);
  u_xlat36 = x_360.x;
  let x_362 : f32 = u_xlat36;
  u_xlat1.x = (x_362 + -1.0f);
  let x_367 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_369 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_367 * x_369) + 1.0f);
  let x_373 : f32 = u_xlat36;
  u_xlat36 = min(x_373, 1.0f);
  let x_377 : vec4<f32> = vs_TEXCOORD6;
  let x_378 : vec2<f32> = vec2<f32>(x_377.x, x_377.y);
  let x_380 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_378.x, x_378.y, x_380);
  let x_393 : vec3<f32> = txVec0;
  let x_395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_393.xy, x_393.z);
  u_xlat38 = x_395;
  let x_404 : f32 = x_402.x_MainLightShadowParams.x;
  u_xlat39 = (-(x_404) + 1.0f);
  let x_407 : f32 = u_xlat38;
  let x_409 : f32 = x_402.x_MainLightShadowParams.x;
  let x_411 : f32 = u_xlat39;
  u_xlat38 = ((x_407 * x_409) + x_411);
  let x_415 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (0.0f >= x_415);
  let x_419 : f32 = vs_TEXCOORD6.z;
  u_xlatb40 = (x_419 >= 1.0f);
  let x_421 : bool = u_xlatb39;
  let x_422 : bool = u_xlatb40;
  u_xlatb39 = (x_421 | x_422);
  let x_424 : bool = u_xlatb39;
  let x_425 : f32 = u_xlat38;
  u_xlat38 = select(x_425, 1.0f, x_424);
  let x_429 : vec3<f32> = vs_TEXCOORD1;
  let x_433 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_435 : vec3<f32> = (x_429 + -(x_433));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat5;
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_438.x, x_438.y, x_438.z), vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : f32 = u_xlat39;
  let x_445 : f32 = x_402.x_MainLightShadowParams.z;
  let x_448 : f32 = x_402.x_MainLightShadowParams.w;
  u_xlat39 = ((x_443 * x_445) + x_448);
  let x_450 : f32 = u_xlat39;
  u_xlat39 = clamp(x_450, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat38;
  u_xlat40 = (-(x_453) + 1.0f);
  let x_456 : f32 = u_xlat39;
  let x_457 : f32 = u_xlat40;
  let x_459 : f32 = u_xlat38;
  u_xlat38 = ((x_456 * x_457) + x_459);
  let x_467 : f32 = x_465.x_MainLightCookieTextureFormat;
  u_xlatb39 = !((x_467 == -1.0f));
  let x_469 : bool = u_xlatb39;
  if (x_469) {
    let x_472 : vec3<f32> = vs_TEXCOORD1;
    let x_475 : vec4<f32> = x_465.x_MainLightWorldToLight[1i];
    let x_477 : vec2<f32> = (vec2<f32>(x_472.y, x_472.y) * vec2<f32>(x_475.x, x_475.y));
    let x_478 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
    let x_481 : vec4<f32> = x_465.x_MainLightWorldToLight[0i];
    let x_483 : vec3<f32> = vs_TEXCOORD1;
    let x_486 : vec4<f32> = u_xlat5;
    let x_488 : vec2<f32> = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_483.x, x_483.x)) + vec2<f32>(x_486.x, x_486.y));
    let x_489 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
    let x_492 : vec4<f32> = x_465.x_MainLightWorldToLight[2i];
    let x_494 : vec3<f32> = vs_TEXCOORD1;
    let x_497 : vec4<f32> = u_xlat5;
    let x_499 : vec2<f32> = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(x_494.z, x_494.z)) + vec2<f32>(x_497.x, x_497.y));
    let x_500 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
    let x_502 : vec4<f32> = u_xlat5;
    let x_506 : vec4<f32> = x_465.x_MainLightWorldToLight[3i];
    let x_508 : vec2<f32> = (vec2<f32>(x_502.x, x_502.y) + vec2<f32>(x_506.x, x_506.y));
    let x_509 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
    let x_511 : vec4<f32> = u_xlat5;
    let x_515 : vec2<f32> = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_516 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
    let x_523 : vec4<f32> = u_xlat5;
    let x_526 : f32 = x_43.x_GlobalMipBias.x;
    let x_527 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_523.x, x_523.y), x_526);
    u_xlat5 = x_527;
    let x_532 : f32 = x_465.x_MainLightCookieTextureFormat;
    let x_534 : f32 = x_465.x_MainLightCookieTextureFormat;
    let x_536 : f32 = x_465.x_MainLightCookieTextureFormat;
    let x_538 : f32 = x_465.x_MainLightCookieTextureFormat;
    let x_539 : vec4<f32> = vec4<f32>(x_532, x_534, x_536, x_538);
    let x_547 : vec4<bool> = (vec4<f32>(x_539.x, x_539.y, x_539.z, x_539.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_547.x, x_547.y);
    let x_550 : bool = u_xlatb6.y;
    if (x_550) {
      let x_555 : f32 = u_xlat5.w;
      x_551 = x_555;
    } else {
      let x_558 : f32 = u_xlat5.x;
      x_551 = x_558;
    }
    let x_559 : f32 = x_551;
    u_xlat39 = x_559;
    let x_561 : bool = u_xlatb6.x;
    if (x_561) {
      let x_565 : vec4<f32> = u_xlat5;
      x_562 = vec3<f32>(x_565.x, x_565.y, x_565.z);
    } else {
      let x_568 : f32 = u_xlat39;
      x_562 = vec3<f32>(x_568, x_568, x_568);
    }
    let x_570 : vec3<f32> = x_562;
    let x_571 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_577 : vec4<f32> = u_xlat5;
  let x_580 : vec4<f32> = x_43.x_MainLightColor;
  let x_582 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat1;
  let x_587 : vec4<f32> = u_xlat5;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.x, x_585.x) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : f32 = u_xlat36;
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : vec3<f32> = (vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : f32 = u_xlat38;
  let x_605 : f32 = x_603.unity_LightData.z;
  u_xlat36 = (x_599 * x_605);
  let x_607 : f32 = u_xlat36;
  let x_609 : vec4<f32> = u_xlat5;
  let x_611 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec3<f32> = u_xlat2;
  let x_616 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat36 = dot(x_614, vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : f32 = u_xlat36;
  u_xlat36 = clamp(x_619, 0.0f, 1.0f);
  let x_622 : f32 = u_xlat36;
  let x_624 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_622, x_622, x_622) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_628 : f32 = x_56.x_SpecColor.w;
  u_xlat36 = ((x_628 * 10.0f) + 1.0f);
  let x_632 : f32 = u_xlat36;
  u_xlat36 = exp2(x_632);
  let x_635 : vec3<f32> = u_xlat3;
  let x_636 : vec3<f32> = u_xlat12;
  let x_640 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat7 = ((x_635 * vec3<f32>(x_636.x, x_636.x, x_636.x)) + vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec3<f32> = u_xlat7;
  let x_644 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_643, x_644);
  let x_646 : f32 = u_xlat38;
  u_xlat38 = max(x_646, 1.17549435e-37f);
  let x_648 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_648);
  let x_650 : f32 = u_xlat38;
  let x_652 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_650, x_650, x_650) * x_652);
  let x_654 : vec3<f32> = u_xlat2;
  let x_655 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_654, x_655);
  let x_657 : f32 = u_xlat38;
  u_xlat38 = clamp(x_657, 0.0f, 1.0f);
  let x_659 : f32 = u_xlat38;
  u_xlat38 = log2(x_659);
  let x_661 : f32 = u_xlat36;
  let x_662 : f32 = u_xlat38;
  u_xlat38 = (x_661 * x_662);
  let x_664 : f32 = u_xlat38;
  u_xlat38 = exp2(x_664);
  let x_666 : f32 = u_xlat38;
  let x_669 : vec4<f32> = x_56.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_666, x_666, x_666) * vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec4<f32> = u_xlat5;
  let x_674 : vec3<f32> = u_xlat7;
  let x_675 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) * x_674);
  let x_676 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec3<f32> = u_xlat6;
  let x_679 : vec4<f32> = u_xlat1;
  let x_682 : vec4<f32> = u_xlat5;
  let x_684 : vec3<f32> = ((x_678 * vec3<f32>(x_679.y, x_679.z, x_679.w)) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_689 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_691 : f32 = x_603.unity_LightData.y;
  u_xlat38 = min(x_689, x_691);
  let x_695 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_695));
  let x_699 : f32 = x_465.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_701 : f32 = x_465.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_703 : f32 = x_465.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_705 : f32 = x_465.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_706 : vec4<f32> = vec4<f32>(x_699, x_701, x_703, x_705);
  let x_712 : vec4<bool> = (vec4<f32>(x_706.x, x_706.y, x_706.z, x_706.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_712.x, x_712.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_723 : u32 = u_xlatu_loop_1;
    let x_724 : u32 = u_xlatu38;
    if ((x_723 < x_724)) {
    } else {
      break;
    }
    let x_727 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_727 >> 2u);
    let x_731 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_731 & 3u));
    let x_734 : u32 = u_xlatu40;
    let x_737 : vec4<f32> = x_603.unity_LightIndices[bitcast<i32>(x_734)];
    let x_747 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_752 : vec4<u32> = indexable[x_747];
    u_xlat40 = dot(x_737, bitcast<vec4<f32>>(x_752));
    let x_755 : f32 = u_xlat40;
    u_xlatu40 = bitcast<u32>(i32(x_755));
    let x_759 : vec3<f32> = vs_TEXCOORD1;
    let x_771 : u32 = u_xlatu40;
    let x_774 : vec4<f32> = x_770.x_AdditionalLightsPosition[bitcast<i32>(x_771)];
    let x_777 : u32 = u_xlatu40;
    let x_780 : vec4<f32> = x_770.x_AdditionalLightsPosition[bitcast<i32>(x_777)];
    u_xlat8 = ((-(x_759) * vec3<f32>(x_774.w, x_774.w, x_774.w)) + vec3<f32>(x_780.x, x_780.y, x_780.z));
    let x_784 : vec3<f32> = u_xlat8;
    let x_785 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_784, x_785);
    let x_787 : f32 = u_xlat41;
    u_xlat41 = max(x_787, 6.10351562e-05f);
    let x_792 : f32 = u_xlat41;
    u_xlat30.x = inverseSqrt(x_792);
    let x_795 : vec2<f32> = u_xlat30;
    let x_797 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_795.x, x_795.x, x_795.x) * x_797);
    let x_799 : f32 = u_xlat41;
    u_xlat30.x = (1.0f / x_799);
    let x_802 : f32 = u_xlat41;
    let x_803 : u32 = u_xlatu40;
    let x_806 : f32 = x_770.x_AdditionalLightsAttenuation[bitcast<i32>(x_803)].x;
    u_xlat41 = (x_802 * x_806);
    let x_808 : f32 = u_xlat41;
    let x_810 : f32 = u_xlat41;
    u_xlat41 = ((-(x_808) * x_810) + 1.0f);
    let x_813 : f32 = u_xlat41;
    u_xlat41 = max(x_813, 0.0f);
    let x_815 : f32 = u_xlat41;
    let x_816 : f32 = u_xlat41;
    u_xlat41 = (x_815 * x_816);
    let x_818 : f32 = u_xlat41;
    let x_820 : f32 = u_xlat30.x;
    u_xlat41 = (x_818 * x_820);
    let x_822 : u32 = u_xlatu40;
    let x_825 : vec4<f32> = x_770.x_AdditionalLightsSpotDir[bitcast<i32>(x_822)];
    let x_827 : vec3<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_825.x, x_825.y, x_825.z), x_827);
    let x_831 : f32 = u_xlat30.x;
    let x_832 : u32 = u_xlatu40;
    let x_835 : f32 = x_770.x_AdditionalLightsAttenuation[bitcast<i32>(x_832)].z;
    let x_837 : u32 = u_xlatu40;
    let x_840 : f32 = x_770.x_AdditionalLightsAttenuation[bitcast<i32>(x_837)].w;
    u_xlat30.x = ((x_831 * x_835) + x_840);
    let x_844 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_844, 0.0f, 1.0f);
    let x_848 : f32 = u_xlat30.x;
    let x_850 : f32 = u_xlat30.x;
    u_xlat30.x = (x_848 * x_850);
    let x_853 : f32 = u_xlat41;
    let x_855 : f32 = u_xlat30.x;
    u_xlat41 = (x_853 * x_855);
    let x_858 : u32 = u_xlatu40;
    u_xlatu30 = (x_858 >> 5u);
    let x_861 : u32 = u_xlatu40;
    u_xlati42 = (1i << bitcast<u32>((bitcast<i32>(x_861) & 31i)));
    let x_867 : i32 = u_xlati42;
    let x_869 : u32 = u_xlatu30;
    let x_872 : f32 = x_465.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_869)].el;
    u_xlati30 = bitcast<i32>((bitcast<u32>(x_867) & bitcast<u32>(x_872)));
    let x_876 : i32 = u_xlati30;
    if ((x_876 != 0i)) {
      let x_886 : u32 = u_xlatu40;
      let x_889 : f32 = x_885.x_AdditionalLightsLightTypes[bitcast<i32>(x_886)].el;
      u_xlati30 = i32(x_889);
      let x_891 : i32 = u_xlati30;
      u_xlati42 = select(1i, 0i, (x_891 != 0i));
      let x_895 : u32 = u_xlatu40;
      u_xlati43 = (bitcast<i32>(x_895) << bitcast<u32>(2i));
      let x_898 : i32 = u_xlati42;
      if ((x_898 != 0i)) {
        let x_903 : vec3<f32> = vs_TEXCOORD1;
        let x_905 : i32 = u_xlati43;
        let x_908 : i32 = u_xlati43;
        let x_912 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_905 + 1i) / 4i)][((x_908 + 1i) % 4i)];
        let x_914 : vec3<f32> = (vec3<f32>(x_903.y, x_903.y, x_903.y) * vec3<f32>(x_912.x, x_912.y, x_912.w));
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
        let x_917 : i32 = u_xlati43;
        let x_919 : i32 = u_xlati43;
        let x_922 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_917 / 4i)][(x_919 % 4i)];
        let x_924 : vec3<f32> = vs_TEXCOORD1;
        let x_927 : vec4<f32> = u_xlat9;
        let x_929 : vec3<f32> = ((vec3<f32>(x_922.x, x_922.y, x_922.w) * vec3<f32>(x_924.x, x_924.x, x_924.x)) + vec3<f32>(x_927.x, x_927.y, x_927.z));
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_932 : i32 = u_xlati43;
        let x_935 : i32 = u_xlati43;
        let x_939 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_932 + 2i) / 4i)][((x_935 + 2i) % 4i)];
        let x_941 : vec3<f32> = vs_TEXCOORD1;
        let x_944 : vec4<f32> = u_xlat9;
        let x_946 : vec3<f32> = ((vec3<f32>(x_939.x, x_939.y, x_939.w) * vec3<f32>(x_941.z, x_941.z, x_941.z)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
        let x_947 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat9;
        let x_951 : i32 = u_xlati43;
        let x_954 : i32 = u_xlati43;
        let x_958 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_951 + 3i) / 4i)][((x_954 + 3i) % 4i)];
        let x_960 : vec3<f32> = (vec3<f32>(x_949.x, x_949.y, x_949.z) + vec3<f32>(x_958.x, x_958.y, x_958.w));
        let x_961 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
        let x_963 : vec4<f32> = u_xlat9;
        let x_965 : vec4<f32> = u_xlat9;
        let x_967 : vec2<f32> = (vec2<f32>(x_963.x, x_963.y) / vec2<f32>(x_965.z, x_965.z));
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat9;
        let x_973 : vec2<f32> = ((vec2<f32>(x_970.x, x_970.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_974 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec4<f32> = u_xlat9;
        let x_980 : vec2<f32> = clamp(vec2<f32>(x_976.x, x_976.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_981 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : u32 = u_xlatu40;
        let x_986 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_983)];
        let x_988 : vec4<f32> = u_xlat9;
        let x_991 : u32 = u_xlatu40;
        let x_994 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_991)];
        let x_996 : vec2<f32> = ((vec2<f32>(x_986.x, x_986.y) * vec2<f32>(x_988.x, x_988.y)) + vec2<f32>(x_994.z, x_994.w));
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
      } else {
        let x_1001 : i32 = u_xlati30;
        u_xlatb30 = (x_1001 == 1i);
        let x_1003 : bool = u_xlatb30;
        u_xlati30 = select(0i, 1i, x_1003);
        let x_1005 : i32 = u_xlati30;
        if ((x_1005 != 0i)) {
          let x_1009 : vec3<f32> = vs_TEXCOORD1;
          let x_1011 : i32 = u_xlati43;
          let x_1014 : i32 = u_xlati43;
          let x_1018 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1011 + 1i) / 4i)][((x_1014 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1009.y, x_1009.y) * vec2<f32>(x_1018.x, x_1018.y));
          let x_1021 : i32 = u_xlati43;
          let x_1023 : i32 = u_xlati43;
          let x_1026 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_1021 / 4i)][(x_1023 % 4i)];
          let x_1028 : vec3<f32> = vs_TEXCOORD1;
          let x_1031 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(x_1028.x, x_1028.x)) + x_1031);
          let x_1033 : i32 = u_xlati43;
          let x_1036 : i32 = u_xlati43;
          let x_1040 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1033 + 2i) / 4i)][((x_1036 + 2i) % 4i)];
          let x_1042 : vec3<f32> = vs_TEXCOORD1;
          let x_1045 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(x_1042.z, x_1042.z)) + x_1045);
          let x_1047 : vec2<f32> = u_xlat30;
          let x_1048 : i32 = u_xlati43;
          let x_1051 : i32 = u_xlati43;
          let x_1055 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1048 + 3i) / 4i)][((x_1051 + 3i) % 4i)];
          u_xlat30 = (x_1047 + vec2<f32>(x_1055.x, x_1055.y));
          let x_1058 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1058 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1061 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1061);
          let x_1063 : u32 = u_xlatu40;
          let x_1066 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1063)];
          let x_1068 : vec2<f32> = u_xlat30;
          let x_1070 : u32 = u_xlatu40;
          let x_1073 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1070)];
          let x_1075 : vec2<f32> = ((vec2<f32>(x_1066.x, x_1066.y) * x_1068) + vec2<f32>(x_1073.z, x_1073.w));
          let x_1076 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        } else {
          let x_1080 : vec3<f32> = vs_TEXCOORD1;
          let x_1082 : i32 = u_xlati43;
          let x_1085 : i32 = u_xlati43;
          let x_1089 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1082 + 1i) / 4i)][((x_1085 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1080.y, x_1080.y, x_1080.y, x_1080.y) * x_1089);
          let x_1091 : i32 = u_xlati43;
          let x_1093 : i32 = u_xlati43;
          let x_1096 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_1091 / 4i)][(x_1093 % 4i)];
          let x_1097 : vec3<f32> = vs_TEXCOORD1;
          let x_1100 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1096 * vec4<f32>(x_1097.x, x_1097.x, x_1097.x, x_1097.x)) + x_1100);
          let x_1102 : i32 = u_xlati43;
          let x_1105 : i32 = u_xlati43;
          let x_1109 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1102 + 2i) / 4i)][((x_1105 + 2i) % 4i)];
          let x_1110 : vec3<f32> = vs_TEXCOORD1;
          let x_1113 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1109 * vec4<f32>(x_1110.z, x_1110.z, x_1110.z, x_1110.z)) + x_1113);
          let x_1115 : vec4<f32> = u_xlat10;
          let x_1116 : i32 = u_xlati43;
          let x_1119 : i32 = u_xlati43;
          let x_1123 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1116 + 3i) / 4i)][((x_1119 + 3i) % 4i)];
          u_xlat10 = (x_1115 + x_1123);
          let x_1125 : vec4<f32> = u_xlat10;
          let x_1127 : vec4<f32> = u_xlat10;
          let x_1129 : vec3<f32> = (vec3<f32>(x_1125.x, x_1125.y, x_1125.z) / vec3<f32>(x_1127.w, x_1127.w, x_1127.w));
          let x_1130 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
          let x_1132 : vec4<f32> = u_xlat10;
          let x_1134 : vec4<f32> = u_xlat10;
          u_xlat30.x = dot(vec3<f32>(x_1132.x, x_1132.y, x_1132.z), vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
          let x_1139 : f32 = u_xlat30.x;
          u_xlat30.x = inverseSqrt(x_1139);
          let x_1142 : vec2<f32> = u_xlat30;
          let x_1144 : vec4<f32> = u_xlat10;
          let x_1146 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.x, x_1142.x) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
          let x_1147 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
          let x_1149 : vec4<f32> = u_xlat10;
          u_xlat30.x = dot(abs(vec3<f32>(x_1149.x, x_1149.y, x_1149.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1156 : f32 = u_xlat30.x;
          u_xlat30.x = max(x_1156, 0.000001f);
          let x_1161 : f32 = u_xlat30.x;
          u_xlat30.x = (1.0f / x_1161);
          let x_1165 : vec2<f32> = u_xlat30;
          let x_1167 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1165.x, x_1165.x, x_1165.x) * vec3<f32>(x_1167.z, x_1167.x, x_1167.y));
          let x_1171 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1171);
          let x_1175 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1175, 0.0f, 1.0f);
          let x_1179 : vec3<f32> = u_xlat11;
          let x_1182 : vec4<bool> = (vec4<f32>(x_1179.y, x_1179.z, x_1179.y, x_1179.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1182.x, x_1182.y);
          let x_1186 : bool = u_xlatb33.x;
          if (x_1186) {
            let x_1191 : f32 = u_xlat11.x;
            x_1187 = x_1191;
          } else {
            let x_1194 : f32 = u_xlat11.x;
            x_1187 = -(x_1194);
          }
          let x_1196 : f32 = x_1187;
          u_xlat33.x = x_1196;
          let x_1199 : bool = u_xlatb33.y;
          if (x_1199) {
            let x_1204 : f32 = u_xlat11.x;
            x_1200 = x_1204;
          } else {
            let x_1207 : f32 = u_xlat11.x;
            x_1200 = -(x_1207);
          }
          let x_1209 : f32 = x_1200;
          u_xlat33.y = x_1209;
          let x_1211 : vec4<f32> = u_xlat10;
          let x_1213 : vec2<f32> = u_xlat30;
          let x_1216 : vec2<f32> = u_xlat33;
          u_xlat30 = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(x_1213.x, x_1213.x)) + x_1216);
          let x_1218 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1218 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1221 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1221, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1225 : u32 = u_xlatu40;
          let x_1228 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1225)];
          let x_1230 : vec2<f32> = u_xlat30;
          let x_1232 : u32 = u_xlatu40;
          let x_1235 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1232)];
          let x_1237 : vec2<f32> = ((vec2<f32>(x_1228.x, x_1228.y) * x_1230) + vec2<f32>(x_1235.z, x_1235.w));
          let x_1238 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1237.x, x_1237.y, x_1238.z, x_1238.w);
        }
      }
      let x_1245 : vec4<f32> = u_xlat9;
      let x_1248 : f32 = x_43.x_GlobalMipBias.x;
      let x_1249 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1245.x, x_1245.y), x_1248);
      u_xlat9 = x_1249;
      let x_1251 : bool = u_xlatb6.y;
      if (x_1251) {
        let x_1256 : f32 = u_xlat9.w;
        x_1252 = x_1256;
      } else {
        let x_1259 : f32 = u_xlat9.x;
        x_1252 = x_1259;
      }
      let x_1260 : f32 = x_1252;
      u_xlat30.x = x_1260;
      let x_1263 : bool = u_xlatb6.x;
      if (x_1263) {
        let x_1267 : vec4<f32> = u_xlat9;
        x_1264 = vec3<f32>(x_1267.x, x_1267.y, x_1267.z);
      } else {
        let x_1270 : vec2<f32> = u_xlat30;
        x_1264 = vec3<f32>(x_1270.x, x_1270.x, x_1270.x);
      }
      let x_1272 : vec3<f32> = x_1264;
      let x_1273 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1279 : vec4<f32> = u_xlat9;
    let x_1281 : u32 = u_xlatu40;
    let x_1284 : vec4<f32> = x_770.x_AdditionalLightsColor[bitcast<i32>(x_1281)];
    let x_1286 : vec3<f32> = (vec3<f32>(x_1279.x, x_1279.y, x_1279.z) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
    let x_1287 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
    let x_1289 : vec4<f32> = u_xlat1;
    let x_1291 : vec4<f32> = u_xlat9;
    let x_1293 : vec3<f32> = (vec3<f32>(x_1289.x, x_1289.x, x_1289.x) * vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
    let x_1294 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
    let x_1296 : f32 = u_xlat41;
    let x_1298 : vec4<f32> = u_xlat9;
    let x_1300 : vec3<f32> = (vec3<f32>(x_1296, x_1296, x_1296) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
    let x_1301 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
    let x_1303 : vec3<f32> = u_xlat2;
    let x_1304 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1303, x_1304);
    let x_1306 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1306, 0.0f, 1.0f);
    let x_1308 : f32 = u_xlat40;
    let x_1310 : vec4<f32> = u_xlat9;
    let x_1312 : vec3<f32> = (vec3<f32>(x_1308, x_1308, x_1308) * vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
    let x_1313 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
    let x_1315 : vec3<f32> = u_xlat3;
    let x_1316 : vec3<f32> = u_xlat12;
    let x_1319 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1315 * vec3<f32>(x_1316.x, x_1316.x, x_1316.x)) + x_1319);
    let x_1321 : vec3<f32> = u_xlat8;
    let x_1322 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1321, x_1322);
    let x_1324 : f32 = u_xlat40;
    u_xlat40 = max(x_1324, 1.17549435e-37f);
    let x_1326 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1326);
    let x_1328 : f32 = u_xlat40;
    let x_1330 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1328, x_1328, x_1328) * x_1330);
    let x_1332 : vec3<f32> = u_xlat2;
    let x_1333 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1332, x_1333);
    let x_1335 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1335, 0.0f, 1.0f);
    let x_1337 : f32 = u_xlat40;
    u_xlat40 = log2(x_1337);
    let x_1339 : f32 = u_xlat36;
    let x_1340 : f32 = u_xlat40;
    u_xlat40 = (x_1339 * x_1340);
    let x_1342 : f32 = u_xlat40;
    u_xlat40 = exp2(x_1342);
    let x_1344 : f32 = u_xlat40;
    let x_1347 : vec4<f32> = x_56.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1344, x_1344, x_1344) * vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
    let x_1350 : vec3<f32> = u_xlat8;
    let x_1351 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1350 * vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
    let x_1354 : vec4<f32> = u_xlat10;
    let x_1356 : vec4<f32> = u_xlat1;
    let x_1359 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1354.x, x_1354.y, x_1354.z) * vec3<f32>(x_1356.y, x_1356.z, x_1356.w)) + x_1359);
    let x_1361 : vec3<f32> = u_xlat7;
    let x_1362 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1361 + x_1362);

    continuing {
      let x_1364 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1364 + bitcast<u32>(1i));
    }
  }
  let x_1366 : vec4<f32> = u_xlat4;
  let x_1368 : vec4<f32> = u_xlat1;
  let x_1371 : vec4<f32> = u_xlat5;
  let x_1373 : vec3<f32> = ((vec3<f32>(x_1366.x, x_1366.y, x_1366.z) * vec3<f32>(x_1368.y, x_1368.z, x_1368.w)) + vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
  let x_1378 : vec3<f32> = u_xlat7;
  let x_1379 : vec4<f32> = u_xlat1;
  let x_1381 : vec3<f32> = (x_1378 + vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
  let x_1382 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
  let x_1385 : f32 = x_56.x_Surface;
  u_xlatb12 = (x_1385 == 1.0f);
  let x_1387 : bool = u_xlatb12;
  let x_1388 : bool = u_xlatb24;
  u_xlatb12 = (x_1387 | x_1388);
  let x_1390 : bool = u_xlatb12;
  if (x_1390) {
    let x_1395 : f32 = u_xlat0.x;
    x_1391 = x_1395;
  } else {
    x_1391 = 1.0f;
  }
  let x_1397 : f32 = x_1391;
  SV_Target0.w = x_1397;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

