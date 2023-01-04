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
  unity_OrthoParams : vec4<f32>,
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

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_341 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_425 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_708 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_822 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat3 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat14 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlatb26 : vec2<bool>;
  var u_xlatb37 : bool;
  var x_374 : f32;
  var u_xlat37 : f32;
  var x_495 : f32;
  var x_506 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatu5 : u32;
  var u_xlatb16 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati7 : i32;
  var u_xlat39 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu8 : u32;
  var u_xlati19 : i32;
  var u_xlati8 : i32;
  var u_xlati30 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlatb31 : vec2<bool>;
  var u_xlat31 : vec2<f32>;
  var x_1142 : f32;
  var x_1155 : f32;
  var u_xlat41 : f32;
  var x_1217 : f32;
  var x_1228 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_1375 : f32;
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
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat12;
  let x_83 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat12;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat12 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_107;
  let x_110 : bool = u_xlatb1;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat12;
    x_111 = x_114;
  } else {
    let x_116 : vec4<f32> = u_xlat2;
    x_111 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  }
  let x_118 : vec3<f32> = x_111;
  u_xlat1 = x_118;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  u_xlat34 = dot(x_121, x_122);
  let x_124 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat34;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec3<f32> = (vec3<f32>(x_126, x_126, x_126) * x_128);
  let x_130 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : vec3<f32> = u_xlat1;
  let x_133 : vec3<f32> = u_xlat1;
  u_xlat34 = dot(x_132, x_133);
  let x_135 : f32 = u_xlat34;
  u_xlat34 = max(x_135, 1.17549435e-37f);
  let x_138 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_138);
  let x_142 : f32 = vs_TEXCOORD1.y;
  let x_144 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3 = (x_142 * x_144);
  let x_147 : f32 = x_44.unity_MatrixV[0i].z;
  let x_149 : f32 = vs_TEXCOORD1.x;
  let x_151 : f32 = u_xlat3;
  u_xlat3 = ((x_147 * x_149) + x_151);
  let x_154 : f32 = x_44.unity_MatrixV[2i].z;
  let x_156 : f32 = vs_TEXCOORD1.z;
  let x_158 : f32 = u_xlat3;
  u_xlat3 = ((x_154 * x_156) + x_158);
  let x_160 : f32 = u_xlat3;
  let x_163 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat3 = (x_160 + x_163);
  let x_165 : f32 = u_xlat3;
  let x_169 : f32 = x_44.x_ProjectionParams.y;
  u_xlat3 = (-(x_165) + -(x_169));
  let x_172 : f32 = u_xlat3;
  u_xlat3 = max(x_172, 0.0f);
  let x_174 : f32 = u_xlat3;
  let x_177 : f32 = x_44.unity_FogParams.x;
  u_xlat3 = (x_174 * x_177);
  u_xlat2.w = 1.0f;
  let x_187 : vec4<f32> = x_184.unity_SHAr;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_187, x_188);
  let x_193 : vec4<f32> = x_184.unity_SHAg;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_193, x_194);
  let x_199 : vec4<f32> = x_184.unity_SHAb;
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_199, x_200);
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_204.y, x_204.z, x_204.z, x_204.x) * vec4<f32>(x_206.x, x_206.y, x_206.z, x_206.z));
  let x_212 : vec4<f32> = x_184.unity_SHBr;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_212, x_213);
  let x_218 : vec4<f32> = x_184.unity_SHBg;
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_218, x_219);
  let x_224 : vec4<f32> = x_184.unity_SHBb;
  let x_225 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_224, x_225);
  let x_230 : f32 = u_xlat2.y;
  let x_232 : f32 = u_xlat2.y;
  u_xlat35 = (x_230 * x_232);
  let x_235 : f32 = u_xlat2.x;
  let x_237 : f32 = u_xlat2.x;
  let x_239 : f32 = u_xlat35;
  u_xlat35 = ((x_235 * x_237) + -(x_239));
  let x_245 : vec4<f32> = x_184.unity_SHC;
  let x_247 : f32 = u_xlat35;
  let x_250 : vec3<f32> = u_xlat6;
  u_xlat14 = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247, x_247, x_247)) + x_250);
  let x_252 : vec3<f32> = u_xlat14;
  let x_253 : vec3<f32> = u_xlat4;
  u_xlat14 = (x_252 + x_253);
  let x_255 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_255, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_260 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_261 : vec2<f32> = vec2<f32>(x_260.x, x_260.y);
  let x_265 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_261.x, x_261.y));
  let x_266 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_265.x, x_265.y, x_266.z);
  let x_268 : vec3<f32> = u_xlat4;
  let x_270 : vec4<f32> = hlslcc_FragCoord;
  let x_272 : vec2<f32> = (vec2<f32>(x_268.x, x_268.y) * vec2<f32>(x_270.x, x_270.y));
  let x_273 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_272.x, x_272.y, x_273.z);
  let x_276 : f32 = u_xlat4.y;
  let x_279 : f32 = x_44.x_ScaleBiasRt.x;
  let x_282 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_276 * x_279) + x_282);
  let x_284 : f32 = u_xlat35;
  u_xlat4.z = (-(x_284) + 1.0f);
  let x_293 : vec3<f32> = u_xlat4;
  let x_296 : f32 = x_44.x_GlobalMipBias.x;
  let x_297 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_293.x, x_293.z), x_296);
  u_xlat35 = x_297.x;
  let x_299 : f32 = u_xlat35;
  u_xlat4.x = (x_299 + -1.0f);
  let x_305 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_307 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_305 * x_307) + 1.0f);
  let x_311 : f32 = u_xlat35;
  u_xlat35 = min(x_311, 1.0f);
  let x_315 : vec4<f32> = vs_TEXCOORD6;
  let x_316 : vec2<f32> = vec2<f32>(x_315.x, x_315.y);
  let x_318 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_316.x, x_316.y, x_318);
  let x_331 : vec3<f32> = txVec0;
  let x_333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_331.xy, x_331.z);
  u_xlat15.x = x_333;
  let x_343 : f32 = x_341.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_343) + 1.0f);
  let x_348 : f32 = u_xlat15.x;
  let x_350 : f32 = x_341.x_MainLightShadowParams.x;
  let x_353 : f32 = u_xlat26.x;
  u_xlat15.x = ((x_348 * x_350) + x_353);
  let x_360 : f32 = vs_TEXCOORD6.z;
  u_xlatb26.x = (0.0f >= x_360);
  let x_365 : f32 = vs_TEXCOORD6.z;
  u_xlatb37 = (x_365 >= 1.0f);
  let x_367 : bool = u_xlatb37;
  let x_369 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_367 | x_369);
  let x_373 : bool = u_xlatb26.x;
  if (x_373) {
    x_374 = 1.0f;
  } else {
    let x_379 : f32 = u_xlat15.x;
    x_374 = x_379;
  }
  let x_380 : f32 = x_374;
  u_xlat15.x = x_380;
  let x_382 : vec3<f32> = vs_TEXCOORD1;
  let x_384 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_386 : vec3<f32> = (x_382 + -(x_384));
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec4<f32> = u_xlat5;
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat26.x = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_396 : f32 = u_xlat26.x;
  let x_398 : f32 = x_341.x_MainLightShadowParams.z;
  let x_401 : f32 = x_341.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_396 * x_398) + x_401);
  let x_405 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_405, 0.0f, 1.0f);
  let x_410 : f32 = u_xlat15.x;
  u_xlat37 = (-(x_410) + 1.0f);
  let x_414 : f32 = u_xlat26.x;
  let x_415 : f32 = u_xlat37;
  let x_418 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_414 * x_415) + x_418);
  let x_427 : f32 = x_425.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_427 == -1.0f));
  let x_431 : bool = u_xlatb26.x;
  if (x_431) {
    let x_434 : vec3<f32> = vs_TEXCOORD1;
    let x_437 : vec4<f32> = x_425.x_MainLightWorldToLight[1i];
    u_xlat26 = (vec2<f32>(x_434.y, x_434.y) * vec2<f32>(x_437.x, x_437.y));
    let x_441 : vec4<f32> = x_425.x_MainLightWorldToLight[0i];
    let x_443 : vec3<f32> = vs_TEXCOORD1;
    let x_446 : vec2<f32> = u_xlat26;
    u_xlat26 = ((vec2<f32>(x_441.x, x_441.y) * vec2<f32>(x_443.x, x_443.x)) + x_446);
    let x_449 : vec4<f32> = x_425.x_MainLightWorldToLight[2i];
    let x_451 : vec3<f32> = vs_TEXCOORD1;
    let x_454 : vec2<f32> = u_xlat26;
    u_xlat26 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_451.z, x_451.z)) + x_454);
    let x_456 : vec2<f32> = u_xlat26;
    let x_458 : vec4<f32> = x_425.x_MainLightWorldToLight[3i];
    u_xlat26 = (x_456 + vec2<f32>(x_458.x, x_458.y));
    let x_461 : vec2<f32> = u_xlat26;
    u_xlat26 = ((x_461 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_471 : vec2<f32> = u_xlat26;
    let x_473 : f32 = x_44.x_GlobalMipBias.x;
    let x_474 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_471, x_473);
    u_xlat5 = x_474;
    let x_476 : f32 = x_425.x_MainLightCookieTextureFormat;
    let x_478 : f32 = x_425.x_MainLightCookieTextureFormat;
    let x_480 : f32 = x_425.x_MainLightCookieTextureFormat;
    let x_482 : f32 = x_425.x_MainLightCookieTextureFormat;
    let x_483 : vec4<f32> = vec4<f32>(x_476, x_478, x_480, x_482);
    let x_491 : vec4<bool> = (vec4<f32>(x_483.x, x_483.y, x_483.z, x_483.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb26 = vec2<bool>(x_491.x, x_491.y);
    let x_494 : bool = u_xlatb26.y;
    if (x_494) {
      let x_499 : f32 = u_xlat5.w;
      x_495 = x_499;
    } else {
      let x_502 : f32 = u_xlat5.x;
      x_495 = x_502;
    }
    let x_503 : f32 = x_495;
    u_xlat37 = x_503;
    let x_505 : bool = u_xlatb26.x;
    if (x_505) {
      let x_509 : vec4<f32> = u_xlat5;
      x_506 = vec3<f32>(x_509.x, x_509.y, x_509.z);
    } else {
      let x_512 : f32 = u_xlat37;
      x_506 = vec3<f32>(x_512, x_512, x_512);
    }
    let x_514 : vec3<f32> = x_506;
    let x_515 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_521 : vec4<f32> = u_xlat5;
  let x_524 : vec4<f32> = x_44.x_MainLightColor;
  let x_526 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec3<f32> = u_xlat4;
  let x_531 : vec4<f32> = u_xlat5;
  let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.x, x_529.x) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : f32 = u_xlat35;
  let x_538 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_536, x_536, x_536) * x_538);
  let x_541 : f32 = u_xlat15.x;
  let x_544 : f32 = x_184.unity_LightData.z;
  u_xlat35 = (x_541 * x_544);
  let x_546 : f32 = u_xlat35;
  let x_548 : vec4<f32> = u_xlat5;
  u_xlat15 = (vec3<f32>(x_546, x_546, x_546) * vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : vec4<f32> = u_xlat2;
  let x_554 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : f32 = u_xlat35;
  u_xlat35 = clamp(x_557, 0.0f, 1.0f);
  let x_559 : f32 = u_xlat35;
  let x_561 : vec3<f32> = u_xlat15;
  let x_562 : vec3<f32> = (vec3<f32>(x_559, x_559, x_559) * x_561);
  let x_563 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_566 : f32 = u_xlat0.x;
  u_xlat35 = ((x_566 * 10.0f) + 1.0f);
  let x_570 : f32 = u_xlat35;
  u_xlat35 = exp2(x_570);
  let x_572 : vec3<f32> = u_xlat1;
  let x_573 : f32 = u_xlat34;
  let x_577 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_572 * vec3<f32>(x_573, x_573, x_573)) + vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_581 : vec3<f32> = u_xlat6;
  let x_582 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_581, x_582);
  let x_584 : f32 = u_xlat38;
  u_xlat38 = max(x_584, 1.17549435e-37f);
  let x_586 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_586);
  let x_588 : f32 = u_xlat38;
  let x_590 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_588, x_588, x_588) * x_590);
  let x_592 : vec4<f32> = u_xlat2;
  let x_594 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(vec3<f32>(x_592.x, x_592.y, x_592.z), x_594);
  let x_596 : f32 = u_xlat38;
  u_xlat38 = clamp(x_596, 0.0f, 1.0f);
  let x_598 : f32 = u_xlat38;
  u_xlat38 = log2(x_598);
  let x_600 : f32 = u_xlat35;
  let x_601 : f32 = u_xlat38;
  u_xlat38 = (x_600 * x_601);
  let x_603 : f32 = u_xlat38;
  u_xlat38 = exp2(x_603);
  let x_605 : f32 = u_xlat38;
  let x_608 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_605, x_605, x_605) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec3<f32> = u_xlat15;
  let x_612 : vec3<f32> = u_xlat6;
  u_xlat15 = (x_611 * x_612);
  let x_614 : vec4<f32> = u_xlat5;
  let x_616 : vec4<f32> = u_xlat0;
  let x_619 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616.y, x_616.z, x_616.w)) + x_619);
  let x_622 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_624 : f32 = x_184.unity_LightData.y;
  u_xlat5.x = min(x_622, x_624);
  let x_630 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_630));
  let x_635 : f32 = x_425.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_637 : f32 = x_425.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_639 : f32 = x_425.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_641 : f32 = x_425.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_642 : vec4<f32> = vec4<f32>(x_635, x_637, x_639, x_641);
  let x_649 : vec4<bool> = (vec4<f32>(x_642.x, x_642.y, x_642.z, x_642.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb16 = vec2<bool>(x_649.x, x_649.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_660 : u32 = u_xlatu_loop_1;
    let x_661 : u32 = u_xlatu5;
    if ((x_660 < x_661)) {
    } else {
      break;
    }
    let x_664 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_664 >> 2u);
    let x_668 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_668 & 3u));
    let x_672 : u32 = u_xlatu39;
    let x_675 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_672)];
    let x_685 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_690 : vec4<u32> = indexable[x_685];
    u_xlat39 = dot(x_675, bitcast<vec4<f32>>(x_690));
    let x_693 : f32 = u_xlat39;
    u_xlatu39 = bitcast<u32>(i32(x_693));
    let x_697 : vec3<f32> = vs_TEXCOORD1;
    let x_709 : u32 = u_xlatu39;
    let x_712 : vec4<f32> = x_708.x_AdditionalLightsPosition[bitcast<i32>(x_709)];
    let x_715 : u32 = u_xlatu39;
    let x_718 : vec4<f32> = x_708.x_AdditionalLightsPosition[bitcast<i32>(x_715)];
    u_xlat7 = ((-(x_697) * vec3<f32>(x_712.w, x_712.w, x_712.w)) + vec3<f32>(x_718.x, x_718.y, x_718.z));
    let x_722 : vec3<f32> = u_xlat7;
    let x_723 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(x_722, x_723);
    let x_725 : f32 = u_xlat40;
    u_xlat40 = max(x_725, 6.10351562e-05f);
    let x_729 : f32 = u_xlat40;
    u_xlat8.x = inverseSqrt(x_729);
    let x_732 : vec3<f32> = u_xlat7;
    let x_733 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_732 * vec3<f32>(x_733.x, x_733.x, x_733.x));
    let x_736 : f32 = u_xlat40;
    u_xlat8.x = (1.0f / x_736);
    let x_739 : f32 = u_xlat40;
    let x_740 : u32 = u_xlatu39;
    let x_743 : f32 = x_708.x_AdditionalLightsAttenuation[bitcast<i32>(x_740)].x;
    u_xlat40 = (x_739 * x_743);
    let x_745 : f32 = u_xlat40;
    let x_747 : f32 = u_xlat40;
    u_xlat40 = ((-(x_745) * x_747) + 1.0f);
    let x_750 : f32 = u_xlat40;
    u_xlat40 = max(x_750, 0.0f);
    let x_752 : f32 = u_xlat40;
    let x_753 : f32 = u_xlat40;
    u_xlat40 = (x_752 * x_753);
    let x_755 : f32 = u_xlat40;
    let x_757 : f32 = u_xlat8.x;
    u_xlat40 = (x_755 * x_757);
    let x_759 : u32 = u_xlatu39;
    let x_762 : vec4<f32> = x_708.x_AdditionalLightsSpotDir[bitcast<i32>(x_759)];
    let x_764 : vec3<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_762.x, x_762.y, x_762.z), x_764);
    let x_768 : f32 = u_xlat8.x;
    let x_769 : u32 = u_xlatu39;
    let x_772 : f32 = x_708.x_AdditionalLightsAttenuation[bitcast<i32>(x_769)].z;
    let x_774 : u32 = u_xlatu39;
    let x_777 : f32 = x_708.x_AdditionalLightsAttenuation[bitcast<i32>(x_774)].w;
    u_xlat8.x = ((x_768 * x_772) + x_777);
    let x_781 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_781, 0.0f, 1.0f);
    let x_785 : f32 = u_xlat8.x;
    let x_787 : f32 = u_xlat8.x;
    u_xlat8.x = (x_785 * x_787);
    let x_790 : f32 = u_xlat40;
    let x_792 : f32 = u_xlat8.x;
    u_xlat40 = (x_790 * x_792);
    let x_795 : u32 = u_xlatu39;
    u_xlatu8 = (x_795 >> 5u);
    let x_798 : u32 = u_xlatu39;
    u_xlati19 = (1i << bitcast<u32>((bitcast<i32>(x_798) & 31i)));
    let x_804 : i32 = u_xlati19;
    let x_806 : u32 = u_xlatu8;
    let x_809 : f32 = x_425.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_806)].el;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_804) & bitcast<u32>(x_809)));
    let x_813 : i32 = u_xlati8;
    if ((x_813 != 0i)) {
      let x_823 : u32 = u_xlatu39;
      let x_826 : f32 = x_822.x_AdditionalLightsLightTypes[bitcast<i32>(x_823)].el;
      u_xlati8 = i32(x_826);
      let x_828 : i32 = u_xlati8;
      u_xlati19 = select(1i, 0i, (x_828 != 0i));
      let x_832 : u32 = u_xlatu39;
      u_xlati30 = (bitcast<i32>(x_832) << bitcast<u32>(2i));
      let x_835 : i32 = u_xlati19;
      if ((x_835 != 0i)) {
        let x_840 : vec3<f32> = vs_TEXCOORD1;
        let x_842 : i32 = u_xlati30;
        let x_845 : i32 = u_xlati30;
        let x_849 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_842 + 1i) / 4i)][((x_845 + 1i) % 4i)];
        let x_851 : vec3<f32> = (vec3<f32>(x_840.y, x_840.y, x_840.y) * vec3<f32>(x_849.x, x_849.y, x_849.w));
        let x_852 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
        let x_854 : i32 = u_xlati30;
        let x_856 : i32 = u_xlati30;
        let x_859 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[(x_854 / 4i)][(x_856 % 4i)];
        let x_861 : vec3<f32> = vs_TEXCOORD1;
        let x_864 : vec4<f32> = u_xlat9;
        let x_866 : vec3<f32> = ((vec3<f32>(x_859.x, x_859.y, x_859.w) * vec3<f32>(x_861.x, x_861.x, x_861.x)) + vec3<f32>(x_864.x, x_864.y, x_864.z));
        let x_867 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
        let x_869 : i32 = u_xlati30;
        let x_872 : i32 = u_xlati30;
        let x_876 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_869 + 2i) / 4i)][((x_872 + 2i) % 4i)];
        let x_878 : vec3<f32> = vs_TEXCOORD1;
        let x_881 : vec4<f32> = u_xlat9;
        let x_883 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.w) * vec3<f32>(x_878.z, x_878.z, x_878.z)) + vec3<f32>(x_881.x, x_881.y, x_881.z));
        let x_884 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
        let x_886 : vec4<f32> = u_xlat9;
        let x_888 : i32 = u_xlati30;
        let x_891 : i32 = u_xlati30;
        let x_895 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_888 + 3i) / 4i)][((x_891 + 3i) % 4i)];
        let x_897 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) + vec3<f32>(x_895.x, x_895.y, x_895.w));
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
        let x_901 : vec4<f32> = u_xlat9;
        let x_903 : vec4<f32> = u_xlat9;
        let x_905 : vec2<f32> = (vec2<f32>(x_901.x, x_901.y) / vec2<f32>(x_903.z, x_903.z));
        let x_906 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_905.x, x_906.y, x_905.y);
        let x_908 : vec3<f32> = u_xlat19;
        let x_911 : vec2<f32> = ((vec2<f32>(x_908.x, x_908.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_912 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_911.x, x_912.y, x_911.y);
        let x_914 : vec3<f32> = u_xlat19;
        let x_918 : vec2<f32> = clamp(vec2<f32>(x_914.x, x_914.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_919 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_918.x, x_919.y, x_918.y);
        let x_921 : u32 = u_xlatu39;
        let x_924 : vec4<f32> = x_822.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_921)];
        let x_926 : vec3<f32> = u_xlat19;
        let x_929 : u32 = u_xlatu39;
        let x_932 : vec4<f32> = x_822.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_929)];
        let x_934 : vec2<f32> = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_926.x, x_926.z)) + vec2<f32>(x_932.z, x_932.w));
        let x_935 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_934.x, x_935.y, x_934.y);
      } else {
        let x_939 : i32 = u_xlati8;
        u_xlatb8 = (x_939 == 1i);
        let x_941 : bool = u_xlatb8;
        u_xlati8 = select(0i, 1i, x_941);
        let x_943 : i32 = u_xlati8;
        if ((x_943 != 0i)) {
          let x_947 : vec3<f32> = vs_TEXCOORD1;
          let x_949 : i32 = u_xlati30;
          let x_952 : i32 = u_xlati30;
          let x_956 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_949 + 1i) / 4i)][((x_952 + 1i) % 4i)];
          let x_958 : vec2<f32> = (vec2<f32>(x_947.y, x_947.y) * vec2<f32>(x_956.x, x_956.y));
          let x_959 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
          let x_961 : i32 = u_xlati30;
          let x_963 : i32 = u_xlati30;
          let x_966 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[(x_961 / 4i)][(x_963 % 4i)];
          let x_968 : vec3<f32> = vs_TEXCOORD1;
          let x_971 : vec4<f32> = u_xlat9;
          let x_973 : vec2<f32> = ((vec2<f32>(x_966.x, x_966.y) * vec2<f32>(x_968.x, x_968.x)) + vec2<f32>(x_971.x, x_971.y));
          let x_974 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
          let x_976 : i32 = u_xlati30;
          let x_979 : i32 = u_xlati30;
          let x_983 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_976 + 2i) / 4i)][((x_979 + 2i) % 4i)];
          let x_985 : vec3<f32> = vs_TEXCOORD1;
          let x_988 : vec4<f32> = u_xlat9;
          let x_990 : vec2<f32> = ((vec2<f32>(x_983.x, x_983.y) * vec2<f32>(x_985.z, x_985.z)) + vec2<f32>(x_988.x, x_988.y));
          let x_991 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
          let x_993 : vec4<f32> = u_xlat9;
          let x_995 : i32 = u_xlati30;
          let x_998 : i32 = u_xlati30;
          let x_1002 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_995 + 3i) / 4i)][((x_998 + 3i) % 4i)];
          let x_1004 : vec2<f32> = (vec2<f32>(x_993.x, x_993.y) + vec2<f32>(x_1002.x, x_1002.y));
          let x_1005 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
          let x_1007 : vec4<f32> = u_xlat9;
          let x_1010 : vec2<f32> = ((vec2<f32>(x_1007.x, x_1007.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1011 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
          let x_1013 : vec4<f32> = u_xlat9;
          let x_1015 : vec2<f32> = fract(vec2<f32>(x_1013.x, x_1013.y));
          let x_1016 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
          let x_1018 : u32 = u_xlatu39;
          let x_1021 : vec4<f32> = x_822.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1018)];
          let x_1023 : vec4<f32> = u_xlat9;
          let x_1026 : u32 = u_xlatu39;
          let x_1029 : vec4<f32> = x_822.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1026)];
          let x_1031 : vec2<f32> = ((vec2<f32>(x_1021.x, x_1021.y) * vec2<f32>(x_1023.x, x_1023.y)) + vec2<f32>(x_1029.z, x_1029.w));
          let x_1032 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1031.x, x_1032.y, x_1031.y);
        } else {
          let x_1035 : vec3<f32> = vs_TEXCOORD1;
          let x_1037 : i32 = u_xlati30;
          let x_1040 : i32 = u_xlati30;
          let x_1044 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_1037 + 1i) / 4i)][((x_1040 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1035.y, x_1035.y, x_1035.y, x_1035.y) * x_1044);
          let x_1046 : i32 = u_xlati30;
          let x_1048 : i32 = u_xlati30;
          let x_1051 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[(x_1046 / 4i)][(x_1048 % 4i)];
          let x_1052 : vec3<f32> = vs_TEXCOORD1;
          let x_1055 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1051 * vec4<f32>(x_1052.x, x_1052.x, x_1052.x, x_1052.x)) + x_1055);
          let x_1057 : i32 = u_xlati30;
          let x_1060 : i32 = u_xlati30;
          let x_1064 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_1057 + 2i) / 4i)][((x_1060 + 2i) % 4i)];
          let x_1065 : vec3<f32> = vs_TEXCOORD1;
          let x_1068 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1064 * vec4<f32>(x_1065.z, x_1065.z, x_1065.z, x_1065.z)) + x_1068);
          let x_1070 : vec4<f32> = u_xlat9;
          let x_1071 : i32 = u_xlati30;
          let x_1074 : i32 = u_xlati30;
          let x_1078 : vec4<f32> = x_822.x_AdditionalLightsWorldToLights[((x_1071 + 3i) / 4i)][((x_1074 + 3i) % 4i)];
          u_xlat9 = (x_1070 + x_1078);
          let x_1080 : vec4<f32> = u_xlat9;
          let x_1082 : vec4<f32> = u_xlat9;
          let x_1084 : vec3<f32> = (vec3<f32>(x_1080.x, x_1080.y, x_1080.z) / vec3<f32>(x_1082.w, x_1082.w, x_1082.w));
          let x_1085 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
          let x_1087 : vec4<f32> = u_xlat9;
          let x_1089 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_1087.x, x_1087.y, x_1087.z), vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
          let x_1094 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_1094);
          let x_1097 : vec4<f32> = u_xlat8;
          let x_1099 : vec4<f32> = u_xlat9;
          let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.x, x_1097.x) * vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
          let x_1102 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
          let x_1104 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_1104.x, x_1104.y, x_1104.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1111 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_1111, 0.000001f);
          let x_1116 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_1116);
          let x_1120 : vec4<f32> = u_xlat8;
          let x_1122 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1120.x, x_1120.x, x_1120.x) * vec3<f32>(x_1122.z, x_1122.x, x_1122.y));
          let x_1126 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1126);
          let x_1130 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1130, 0.0f, 1.0f);
          let x_1134 : vec3<f32> = u_xlat10;
          let x_1137 : vec4<bool> = (vec4<f32>(x_1134.y, x_1134.z, x_1134.y, x_1134.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb31 = vec2<bool>(x_1137.x, x_1137.y);
          let x_1141 : bool = u_xlatb31.x;
          if (x_1141) {
            let x_1146 : f32 = u_xlat10.x;
            x_1142 = x_1146;
          } else {
            let x_1149 : f32 = u_xlat10.x;
            x_1142 = -(x_1149);
          }
          let x_1151 : f32 = x_1142;
          u_xlat31.x = x_1151;
          let x_1154 : bool = u_xlatb31.y;
          if (x_1154) {
            let x_1159 : f32 = u_xlat10.x;
            x_1155 = x_1159;
          } else {
            let x_1162 : f32 = u_xlat10.x;
            x_1155 = -(x_1162);
          }
          let x_1164 : f32 = x_1155;
          u_xlat31.y = x_1164;
          let x_1166 : vec4<f32> = u_xlat9;
          let x_1168 : vec4<f32> = u_xlat8;
          let x_1171 : vec2<f32> = u_xlat31;
          let x_1172 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1168.x, x_1168.x)) + x_1171);
          let x_1173 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1172.x, x_1173.y, x_1172.y, x_1173.w);
          let x_1175 : vec4<f32> = u_xlat8;
          let x_1178 : vec2<f32> = ((vec2<f32>(x_1175.x, x_1175.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1179 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1179.w);
          let x_1181 : vec4<f32> = u_xlat8;
          let x_1185 : vec2<f32> = clamp(vec2<f32>(x_1181.x, x_1181.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1186 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1186.w);
          let x_1188 : u32 = u_xlatu39;
          let x_1191 : vec4<f32> = x_822.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1188)];
          let x_1193 : vec4<f32> = u_xlat8;
          let x_1196 : u32 = u_xlatu39;
          let x_1199 : vec4<f32> = x_822.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1196)];
          let x_1201 : vec2<f32> = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1193.x, x_1193.z)) + vec2<f32>(x_1199.z, x_1199.w));
          let x_1202 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1201.x, x_1202.y, x_1201.y);
        }
      }
      let x_1209 : vec3<f32> = u_xlat19;
      let x_1212 : f32 = x_44.x_GlobalMipBias.x;
      let x_1213 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1209.x, x_1209.z), x_1212);
      u_xlat8 = x_1213;
      let x_1216 : bool = u_xlatb16.y;
      if (x_1216) {
        let x_1221 : f32 = u_xlat8.w;
        x_1217 = x_1221;
      } else {
        let x_1224 : f32 = u_xlat8.x;
        x_1217 = x_1224;
      }
      let x_1225 : f32 = x_1217;
      u_xlat41 = x_1225;
      let x_1227 : bool = u_xlatb16.x;
      if (x_1227) {
        let x_1231 : vec4<f32> = u_xlat8;
        x_1228 = vec3<f32>(x_1231.x, x_1231.y, x_1231.z);
      } else {
        let x_1234 : f32 = u_xlat41;
        x_1228 = vec3<f32>(x_1234, x_1234, x_1234);
      }
      let x_1236 : vec3<f32> = x_1228;
      let x_1237 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1243 : vec4<f32> = u_xlat8;
    let x_1245 : u32 = u_xlatu39;
    let x_1248 : vec4<f32> = x_708.x_AdditionalLightsColor[bitcast<i32>(x_1245)];
    let x_1250 : vec3<f32> = (vec3<f32>(x_1243.x, x_1243.y, x_1243.z) * vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
    let x_1251 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
    let x_1253 : vec3<f32> = u_xlat4;
    let x_1255 : vec4<f32> = u_xlat8;
    let x_1257 : vec3<f32> = (vec3<f32>(x_1253.x, x_1253.x, x_1253.x) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
    let x_1258 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
    let x_1260 : f32 = u_xlat40;
    let x_1262 : vec4<f32> = u_xlat8;
    let x_1264 : vec3<f32> = (vec3<f32>(x_1260, x_1260, x_1260) * vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
    let x_1265 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
    let x_1267 : vec4<f32> = u_xlat2;
    let x_1269 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(vec3<f32>(x_1267.x, x_1267.y, x_1267.z), x_1269);
    let x_1271 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1271, 0.0f, 1.0f);
    let x_1273 : f32 = u_xlat39;
    let x_1275 : vec4<f32> = u_xlat8;
    let x_1277 : vec3<f32> = (vec3<f32>(x_1273, x_1273, x_1273) * vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
    let x_1278 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
    let x_1280 : vec3<f32> = u_xlat1;
    let x_1281 : f32 = u_xlat34;
    let x_1284 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1280 * vec3<f32>(x_1281, x_1281, x_1281)) + x_1284);
    let x_1286 : vec3<f32> = u_xlat7;
    let x_1287 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1286, x_1287);
    let x_1289 : f32 = u_xlat39;
    u_xlat39 = max(x_1289, 1.17549435e-37f);
    let x_1291 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1291);
    let x_1293 : f32 = u_xlat39;
    let x_1295 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1293, x_1293, x_1293) * x_1295);
    let x_1297 : vec4<f32> = u_xlat2;
    let x_1299 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(vec3<f32>(x_1297.x, x_1297.y, x_1297.z), x_1299);
    let x_1301 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1301, 0.0f, 1.0f);
    let x_1303 : f32 = u_xlat39;
    u_xlat39 = log2(x_1303);
    let x_1305 : f32 = u_xlat35;
    let x_1306 : f32 = u_xlat39;
    u_xlat39 = (x_1305 * x_1306);
    let x_1308 : f32 = u_xlat39;
    u_xlat39 = exp2(x_1308);
    let x_1310 : f32 = u_xlat39;
    let x_1313 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1310, x_1310, x_1310) * vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
    let x_1316 : vec3<f32> = u_xlat7;
    let x_1317 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1316 * vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
    let x_1320 : vec4<f32> = u_xlat9;
    let x_1322 : vec4<f32> = u_xlat0;
    let x_1325 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1320.x, x_1320.y, x_1320.z) * vec3<f32>(x_1322.y, x_1322.z, x_1322.w)) + x_1325);
    let x_1327 : vec3<f32> = u_xlat6;
    let x_1328 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1327 + x_1328);

    continuing {
      let x_1330 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1330 + bitcast<u32>(1i));
    }
  }
  let x_1333 : vec3<f32> = u_xlat14;
  let x_1334 : vec4<f32> = u_xlat0;
  let x_1337 : vec3<f32> = u_xlat15;
  u_xlat11 = ((x_1333 * vec3<f32>(x_1334.y, x_1334.z, x_1334.w)) + x_1337);
  let x_1339 : vec3<f32> = u_xlat6;
  let x_1340 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1339 + x_1340);
  let x_1342 : f32 = u_xlat3;
  let x_1343 : f32 = u_xlat3;
  u_xlat1.x = (x_1342 * -(x_1343));
  let x_1348 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1348);
  let x_1351 : vec3<f32> = u_xlat11;
  let x_1354 : vec4<f32> = x_44.unity_FogColor;
  u_xlat11 = (x_1351 + -(vec3<f32>(x_1354.x, x_1354.y, x_1354.z)));
  let x_1360 : vec3<f32> = u_xlat1;
  let x_1362 : vec3<f32> = u_xlat11;
  let x_1365 : vec4<f32> = x_44.unity_FogColor;
  let x_1367 : vec3<f32> = ((vec3<f32>(x_1360.x, x_1360.x, x_1360.x) * x_1362) + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1372 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1372 == 1.0f);
  let x_1374 : bool = u_xlatb11;
  if (x_1374) {
    let x_1379 : f32 = u_xlat0.x;
    x_1375 = x_1379;
  } else {
    x_1375 = 1.0f;
  }
  let x_1381 : f32 = x_1375;
  SV_Target0.w = x_1381;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

