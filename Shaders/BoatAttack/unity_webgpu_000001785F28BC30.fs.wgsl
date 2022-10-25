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

@group(1) @binding(4) var<uniform> x_285 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_1573 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1710 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1830 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1939 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat18 : f32;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb55 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat55 : f32;
  var u_xlatb56 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat56 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb57 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_1658 : f32;
  var x_1669 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlatu58 : u32;
  var u_xlati41 : i32;
  var u_xlati58 : i32;
  var u_xlati59 : i32;
  var u_xlatb58 : bool;
  var u_xlat44 : vec2<f32>;
  var u_xlatb41 : vec2<bool>;
  var u_xlat41 : vec2<f32>;
  var x_2233 : f32;
  var x_2246 : f32;
  var x_2298 : f32;
  var x_2309 : vec3<f32>;
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
  u_xlat18 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat36 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat54 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat54;
  let x_99 : f32 = u_xlat36;
  u_xlat36 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat36;
  u_xlat36 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat18;
  let x_106 : f32 = u_xlat36;
  u_xlat18 = (x_105 / x_106);
  let x_108 : f32 = u_xlat18;
  u_xlat18 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat18;
  u_xlat18 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb36;
  if (x_118) {
    let x_122 : f32 = u_xlat18;
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
  u_xlat54 = (x_266 + -1.0f);
  let x_271 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_272 : f32 = u_xlat54;
  u_xlat54 = ((x_271 * x_272) + 1.0f);
  let x_276 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_276, 1.0f);
  let x_287 : f32 = x_285.x_MainLightShadowParams.y;
  u_xlatb55 = (0.0f < x_287);
  let x_289 : bool = u_xlatb55;
  if (x_289) {
    let x_293 : f32 = x_285.x_MainLightShadowParams.y;
    u_xlatb55 = (x_293 == 1.0f);
    let x_295 : bool = u_xlatb55;
    if (x_295) {
      let x_299 : vec4<f32> = vs_TEXCOORD6;
      let x_303 : vec4<f32> = x_285.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_299.x, x_299.y, x_299.x, x_299.y) + x_303);
      let x_306 : vec4<f32> = u_xlat4;
      let x_307 : vec2<f32> = vec2<f32>(x_306.x, x_306.y);
      let x_309 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_307.x, x_307.y, x_309);
      let x_322 : vec3<f32> = txVec0;
      let x_324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_322.xy, x_322.z);
      u_xlat5.x = x_324;
      let x_327 : vec4<f32> = u_xlat4;
      let x_328 : vec2<f32> = vec2<f32>(x_327.z, x_327.w);
      let x_330 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_328.x, x_328.y, x_330);
      let x_337 : vec3<f32> = txVec1;
      let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_337.xy, x_337.z);
      u_xlat5.y = x_339;
      let x_341 : vec4<f32> = vs_TEXCOORD6;
      let x_345 : vec4<f32> = x_285.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_341.x, x_341.y, x_341.x, x_341.y) + x_345);
      let x_348 : vec4<f32> = u_xlat4;
      let x_349 : vec2<f32> = vec2<f32>(x_348.x, x_348.y);
      let x_351 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_349.x, x_349.y, x_351);
      let x_358 : vec3<f32> = txVec2;
      let x_360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_358.xy, x_358.z);
      u_xlat5.z = x_360;
      let x_363 : vec4<f32> = u_xlat4;
      let x_364 : vec2<f32> = vec2<f32>(x_363.z, x_363.w);
      let x_366 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_364.x, x_364.y, x_366);
      let x_373 : vec3<f32> = txVec3;
      let x_375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_373.xy, x_373.z);
      u_xlat5.w = x_375;
      let x_378 : vec4<f32> = u_xlat5;
      u_xlat55 = dot(x_378, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_385 : f32 = x_285.x_MainLightShadowParams.y;
      u_xlatb56 = (x_385 == 2.0f);
      let x_388 : bool = u_xlatb56;
      if (x_388) {
        let x_391 : vec4<f32> = vs_TEXCOORD6;
        let x_395 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_399 : vec2<f32> = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_395.z, x_395.w)) + vec2<f32>(0.5f, 0.5f));
        let x_400 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
        let x_402 : vec4<f32> = u_xlat4;
        let x_404 : vec2<f32> = floor(vec2<f32>(x_402.x, x_402.y));
        let x_405 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
        let x_409 : vec4<f32> = vs_TEXCOORD6;
        let x_412 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_415 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_412.z, x_412.w)) + -(vec2<f32>(x_415.x, x_415.y)));
        let x_419 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_419.x, x_419.x, x_419.y, x_419.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_424 : vec4<f32> = u_xlat5;
        let x_426 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_424.x, x_424.x, x_424.z, x_424.z) * vec4<f32>(x_426.x, x_426.x, x_426.z, x_426.z));
        let x_429 : vec4<f32> = u_xlat6;
        let x_433 : vec2<f32> = (vec2<f32>(x_429.y, x_429.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_434 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_433.x, x_434.y, x_433.y, x_434.w);
        let x_436 : vec4<f32> = u_xlat6;
        let x_439 : vec2<f32> = u_xlat40;
        let x_441 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.z) * vec2<f32>(0.5f, 0.5f)) + -(x_439));
        let x_442 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
        let x_445 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_445) + vec2<f32>(1.0f, 1.0f));
        let x_449 : vec2<f32> = u_xlat40;
        let x_451 : vec2<f32> = min(x_449, vec2<f32>(0.0f, 0.0f));
        let x_452 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
        let x_454 : vec4<f32> = u_xlat7;
        let x_457 : vec4<f32> = u_xlat7;
        let x_460 : vec2<f32> = u_xlat42;
        let x_461 : vec2<f32> = ((-(vec2<f32>(x_454.x, x_454.y)) * vec2<f32>(x_457.x, x_457.y)) + x_460);
        let x_462 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_464 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_464, vec2<f32>(0.0f, 0.0f));
        let x_466 : vec2<f32> = u_xlat40;
        let x_468 : vec2<f32> = u_xlat40;
        let x_470 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_466) * x_468) + vec2<f32>(x_470.y, x_470.w));
        let x_473 : vec4<f32> = u_xlat7;
        let x_475 : vec2<f32> = (vec2<f32>(x_473.x, x_473.y) + vec2<f32>(1.0f, 1.0f));
        let x_476 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_478 + vec2<f32>(1.0f, 1.0f));
        let x_481 : vec4<f32> = u_xlat6;
        let x_485 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_486 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_488 : vec2<f32> = u_xlat42;
        let x_489 : vec2<f32> = (x_488 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_490 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_492 : vec4<f32> = u_xlat7;
        let x_494 : vec2<f32> = (vec2<f32>(x_492.x, x_492.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_495 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
        let x_498 : vec2<f32> = u_xlat40;
        let x_499 : vec2<f32> = (x_498 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_500 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_502 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_502.y, x_502.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_506 : f32 = u_xlat7.x;
        u_xlat8.z = x_506;
        let x_509 : f32 = u_xlat40.x;
        u_xlat8.w = x_509;
        let x_512 : f32 = u_xlat9.x;
        u_xlat6.z = x_512;
        let x_515 : f32 = u_xlat5.x;
        u_xlat6.w = x_515;
        let x_518 : vec4<f32> = u_xlat6;
        let x_520 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_518.z, x_518.w, x_518.x, x_518.z) + vec4<f32>(x_520.z, x_520.w, x_520.x, x_520.z));
        let x_524 : f32 = u_xlat8.y;
        u_xlat7.z = x_524;
        let x_527 : f32 = u_xlat40.y;
        u_xlat7.w = x_527;
        let x_530 : f32 = u_xlat6.y;
        u_xlat9.z = x_530;
        let x_533 : f32 = u_xlat5.z;
        u_xlat9.w = x_533;
        let x_535 : vec4<f32> = u_xlat7;
        let x_537 : vec4<f32> = u_xlat9;
        let x_539 : vec3<f32> = (vec3<f32>(x_535.z, x_535.y, x_535.w) + vec3<f32>(x_537.z, x_537.y, x_537.w));
        let x_540 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat6;
        let x_544 : vec4<f32> = u_xlat10;
        let x_546 : vec3<f32> = (vec3<f32>(x_542.x, x_542.z, x_542.w) / vec3<f32>(x_544.z, x_544.w, x_544.y));
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat6;
        let x_554 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_555 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat9;
        let x_559 : vec4<f32> = u_xlat5;
        let x_561 : vec3<f32> = (vec3<f32>(x_557.z, x_557.y, x_557.w) / vec3<f32>(x_559.x, x_559.y, x_559.z));
        let x_562 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat7;
        let x_566 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_567 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat6;
        let x_572 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_574 : vec3<f32> = (vec3<f32>(x_569.y, x_569.x, x_569.z) * vec3<f32>(x_572.x, x_572.x, x_572.x));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_577 : vec4<f32> = u_xlat7;
        let x_580 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_582 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_580.y, x_580.y, x_580.y));
        let x_583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_586 : f32 = u_xlat7.x;
        u_xlat6.w = x_586;
        let x_588 : vec4<f32> = u_xlat4;
        let x_591 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_594 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y) * vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y)) + vec4<f32>(x_594.y, x_594.w, x_594.x, x_594.w));
        let x_597 : vec4<f32> = u_xlat4;
        let x_600 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_603 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_597.x, x_597.y) * vec2<f32>(x_600.x, x_600.y)) + vec2<f32>(x_603.z, x_603.w));
        let x_607 : f32 = u_xlat6.y;
        u_xlat7.w = x_607;
        let x_609 : vec4<f32> = u_xlat7;
        let x_610 : vec2<f32> = vec2<f32>(x_609.y, x_609.z);
        let x_611 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_611.x, x_610.x, x_611.z, x_610.y);
        let x_613 : vec4<f32> = u_xlat4;
        let x_616 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y) * vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y)) + vec4<f32>(x_619.x, x_619.y, x_619.z, x_619.y));
        let x_622 : vec4<f32> = u_xlat4;
        let x_625 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y) * vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y)) + vec4<f32>(x_628.w, x_628.y, x_628.w, x_628.z));
        let x_631 : vec4<f32> = u_xlat4;
        let x_634 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y) * vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y)) + vec4<f32>(x_637.x, x_637.w, x_637.z, x_637.w));
        let x_641 : vec4<f32> = u_xlat5;
        let x_643 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_641.x, x_641.x, x_641.x, x_641.y) * vec4<f32>(x_643.z, x_643.w, x_643.y, x_643.z));
        let x_647 : vec4<f32> = u_xlat5;
        let x_649 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_647.y, x_647.y, x_647.z, x_647.z) * x_649);
        let x_653 : f32 = u_xlat5.z;
        let x_655 : f32 = u_xlat10.y;
        u_xlat56 = (x_653 * x_655);
        let x_658 : vec4<f32> = u_xlat8;
        let x_659 : vec2<f32> = vec2<f32>(x_658.x, x_658.y);
        let x_661 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_659.x, x_659.y, x_661);
        let x_669 : vec3<f32> = txVec4;
        let x_671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_669.xy, x_669.z);
        u_xlat57 = x_671;
        let x_673 : vec4<f32> = u_xlat8;
        let x_674 : vec2<f32> = vec2<f32>(x_673.z, x_673.w);
        let x_676 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_683 : vec3<f32> = txVec5;
        let x_685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_683.xy, x_683.z);
        u_xlat4.x = x_685;
        let x_688 : f32 = u_xlat4.x;
        let x_690 : f32 = u_xlat11.y;
        u_xlat4.x = (x_688 * x_690);
        let x_694 : f32 = u_xlat11.x;
        let x_695 : f32 = u_xlat57;
        let x_698 : f32 = u_xlat4.x;
        u_xlat57 = ((x_694 * x_695) + x_698);
        let x_701 : vec2<f32> = u_xlat40;
        let x_703 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_701.x, x_701.y, x_703);
        let x_710 : vec3<f32> = txVec6;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_710.xy, x_710.z);
        u_xlat4.x = x_712;
        let x_715 : f32 = u_xlat11.z;
        let x_717 : f32 = u_xlat4.x;
        let x_719 : f32 = u_xlat57;
        u_xlat57 = ((x_715 * x_717) + x_719);
        let x_722 : vec4<f32> = u_xlat7;
        let x_723 : vec2<f32> = vec2<f32>(x_722.x, x_722.y);
        let x_725 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_723.x, x_723.y, x_725);
        let x_732 : vec3<f32> = txVec7;
        let x_734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_732.xy, x_732.z);
        u_xlat4.x = x_734;
        let x_737 : f32 = u_xlat11.w;
        let x_739 : f32 = u_xlat4.x;
        let x_741 : f32 = u_xlat57;
        u_xlat57 = ((x_737 * x_739) + x_741);
        let x_744 : vec4<f32> = u_xlat9;
        let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
        let x_747 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec8;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_754.xy, x_754.z);
        u_xlat4.x = x_756;
        let x_759 : f32 = u_xlat12.x;
        let x_761 : f32 = u_xlat4.x;
        let x_763 : f32 = u_xlat57;
        u_xlat57 = ((x_759 * x_761) + x_763);
        let x_766 : vec4<f32> = u_xlat9;
        let x_767 : vec2<f32> = vec2<f32>(x_766.z, x_766.w);
        let x_769 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_767.x, x_767.y, x_769);
        let x_776 : vec3<f32> = txVec9;
        let x_778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_776.xy, x_776.z);
        u_xlat4.x = x_778;
        let x_781 : f32 = u_xlat12.y;
        let x_783 : f32 = u_xlat4.x;
        let x_785 : f32 = u_xlat57;
        u_xlat57 = ((x_781 * x_783) + x_785);
        let x_788 : vec4<f32> = u_xlat7;
        let x_789 : vec2<f32> = vec2<f32>(x_788.z, x_788.w);
        let x_791 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec10;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_798.xy, x_798.z);
        u_xlat4.x = x_800;
        let x_803 : f32 = u_xlat12.z;
        let x_805 : f32 = u_xlat4.x;
        let x_807 : f32 = u_xlat57;
        u_xlat57 = ((x_803 * x_805) + x_807);
        let x_810 : vec4<f32> = u_xlat6;
        let x_811 : vec2<f32> = vec2<f32>(x_810.x, x_810.y);
        let x_813 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec11;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_820.xy, x_820.z);
        u_xlat4.x = x_822;
        let x_825 : f32 = u_xlat12.w;
        let x_827 : f32 = u_xlat4.x;
        let x_829 : f32 = u_xlat57;
        u_xlat57 = ((x_825 * x_827) + x_829);
        let x_832 : vec4<f32> = u_xlat6;
        let x_833 : vec2<f32> = vec2<f32>(x_832.z, x_832.w);
        let x_835 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec12;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_842.xy, x_842.z);
        u_xlat4.x = x_844;
        let x_846 : f32 = u_xlat56;
        let x_848 : f32 = u_xlat4.x;
        let x_850 : f32 = u_xlat57;
        u_xlat55 = ((x_846 * x_848) + x_850);
      } else {
        let x_853 : vec4<f32> = vs_TEXCOORD6;
        let x_856 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_859 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + vec2<f32>(0.5f, 0.5f));
        let x_860 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec4<f32> = u_xlat4;
        let x_864 : vec2<f32> = floor(vec2<f32>(x_862.x, x_862.y));
        let x_865 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec4<f32> = vs_TEXCOORD6;
        let x_870 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_873 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_870.z, x_870.w)) + -(vec2<f32>(x_873.x, x_873.y)));
        let x_877 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_877.x, x_877.x, x_877.y, x_877.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_880 : vec4<f32> = u_xlat5;
        let x_882 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_880.x, x_880.x, x_880.z, x_880.z) * vec4<f32>(x_882.x, x_882.x, x_882.z, x_882.z));
        let x_885 : vec4<f32> = u_xlat6;
        let x_889 : vec2<f32> = (vec2<f32>(x_885.y, x_885.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_890 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_890.x, x_889.x, x_890.z, x_889.y);
        let x_892 : vec4<f32> = u_xlat6;
        let x_895 : vec2<f32> = u_xlat40;
        let x_897 : vec2<f32> = ((vec2<f32>(x_892.x, x_892.z) * vec2<f32>(0.5f, 0.5f)) + -(x_895));
        let x_898 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_897.x, x_898.y, x_897.y, x_898.w);
        let x_900 : vec2<f32> = u_xlat40;
        let x_902 : vec2<f32> = (-(x_900) + vec2<f32>(1.0f, 1.0f));
        let x_903 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_905, vec2<f32>(0.0f, 0.0f));
        let x_907 : vec2<f32> = u_xlat42;
        let x_909 : vec2<f32> = u_xlat42;
        let x_911 : vec4<f32> = u_xlat6;
        let x_913 : vec2<f32> = ((-(x_907) * x_909) + vec2<f32>(x_911.x, x_911.y));
        let x_914 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_916 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_916, vec2<f32>(0.0f, 0.0f));
        let x_919 : vec2<f32> = u_xlat42;
        let x_921 : vec2<f32> = u_xlat42;
        let x_923 : vec4<f32> = u_xlat5;
        let x_925 : vec2<f32> = ((-(x_919) * x_921) + vec2<f32>(x_923.y, x_923.w));
        let x_926 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_925.x, x_926.y, x_925.y);
        let x_928 : vec4<f32> = u_xlat6;
        let x_931 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) + vec2<f32>(2.0f, 2.0f));
        let x_932 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec3<f32> = u_xlat23;
        let x_936 : vec2<f32> = (vec2<f32>(x_934.x, x_934.z) + vec2<f32>(2.0f, 2.0f));
        let x_937 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_937.x, x_936.x, x_937.z, x_936.y);
        let x_940 : f32 = u_xlat5.y;
        u_xlat8.z = (x_940 * 0.081632003f);
        let x_944 : vec4<f32> = u_xlat5;
        let x_947 : vec3<f32> = (vec3<f32>(x_944.z, x_944.x, x_944.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_948 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
        let x_950 : vec4<f32> = u_xlat6;
        let x_953 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_954 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_957 : f32 = u_xlat9.y;
        u_xlat8.x = x_957;
        let x_959 : vec2<f32> = u_xlat40;
        let x_966 : vec2<f32> = ((vec2<f32>(x_959.x, x_959.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_967.x, x_966.x, x_967.z, x_966.y);
        let x_969 : vec2<f32> = u_xlat40;
        let x_973 : vec2<f32> = ((vec2<f32>(x_969.x, x_969.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_974 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_973.x, x_974.y, x_973.y, x_974.w);
        let x_977 : f32 = u_xlat5.x;
        u_xlat6.y = x_977;
        let x_980 : f32 = u_xlat7.y;
        u_xlat6.w = x_980;
        let x_982 : vec4<f32> = u_xlat6;
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_982 + x_983);
        let x_985 : vec2<f32> = u_xlat40;
        let x_988 : vec2<f32> = ((vec2<f32>(x_985.y, x_985.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_989.x, x_988.x, x_989.z, x_988.y);
        let x_991 : vec2<f32> = u_xlat40;
        let x_994 : vec2<f32> = ((vec2<f32>(x_991.y, x_991.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_994.x, x_995.y, x_994.y, x_995.w);
        let x_998 : f32 = u_xlat5.y;
        u_xlat7.y = x_998;
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1000 + x_1001);
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1004 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1003 / x_1004);
        let x_1006 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1006 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1012 : vec4<f32> = u_xlat7;
        let x_1013 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1012 / x_1013);
        let x_1015 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1015 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1020 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1017.w, x_1017.x, x_1017.y, x_1017.z) * vec4<f32>(x_1020.x, x_1020.x, x_1020.x, x_1020.x));
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1026 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1023.x, x_1023.w, x_1023.y, x_1023.z) * vec4<f32>(x_1026.y, x_1026.y, x_1026.y, x_1026.y));
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1030 : vec3<f32> = vec3<f32>(x_1029.y, x_1029.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1031.y, x_1030.y, x_1030.z);
        let x_1034 : f32 = u_xlat7.x;
        u_xlat9.y = x_1034;
        let x_1036 : vec4<f32> = u_xlat4;
        let x_1039 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1036.x, x_1036.y, x_1036.x, x_1036.y) * vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y)) + vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1042.y));
        let x_1045 : vec4<f32> = u_xlat4;
        let x_1048 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1048.x, x_1048.y)) + vec2<f32>(x_1051.w, x_1051.y));
        let x_1055 : f32 = u_xlat9.y;
        u_xlat6.y = x_1055;
        let x_1058 : f32 = u_xlat7.z;
        u_xlat9.y = x_1058;
        let x_1060 : vec4<f32> = u_xlat4;
        let x_1063 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y) * vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y)) + vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.y));
        let x_1069 : vec4<f32> = u_xlat4;
        let x_1072 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat9;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(x_1072.x, x_1072.y)) + vec2<f32>(x_1075.w, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1081 : f32 = u_xlat9.y;
        u_xlat6.z = x_1081;
        let x_1084 : vec4<f32> = u_xlat4;
        let x_1087 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y) * vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y)) + vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.z));
        let x_1094 : f32 = u_xlat7.w;
        u_xlat9.y = x_1094;
        let x_1097 : vec4<f32> = u_xlat4;
        let x_1100 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y) * vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y)) + vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1103.y));
        let x_1107 : vec4<f32> = u_xlat4;
        let x_1110 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1110.x, x_1110.y)) + vec2<f32>(x_1113.w, x_1113.y));
        let x_1117 : f32 = u_xlat9.y;
        u_xlat6.w = x_1117;
        let x_1120 : vec4<f32> = u_xlat4;
        let x_1123 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1123.x, x_1123.y)) + vec2<f32>(x_1126.x, x_1126.w));
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1130 : vec3<f32> = vec3<f32>(x_1129.x, x_1129.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1130.x, x_1131.y, x_1130.y, x_1130.z);
        let x_1133 : vec4<f32> = u_xlat4;
        let x_1136 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1133.x, x_1133.y, x_1133.x, x_1133.y) * vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y)) + vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1139.y));
        let x_1143 : vec4<f32> = u_xlat4;
        let x_1146 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.w, x_1149.y));
        let x_1153 : f32 = u_xlat6.x;
        u_xlat7.x = x_1153;
        let x_1155 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = x_285.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat7;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1158.x, x_1158.y)) + vec2<f32>(x_1161.x, x_1161.y));
        let x_1164 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1163.x, x_1163.y, x_1164.z, x_1164.w);
        let x_1167 : vec4<f32> = u_xlat5;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1167.x, x_1167.x, x_1167.x, x_1167.x) * x_1169);
        let x_1172 : vec4<f32> = u_xlat5;
        let x_1174 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1172.y, x_1172.y, x_1172.y, x_1172.y) * x_1174);
        let x_1177 : vec4<f32> = u_xlat5;
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1177.z, x_1177.z, x_1177.z, x_1177.z) * x_1179);
        let x_1181 : vec4<f32> = u_xlat5;
        let x_1183 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1181.w, x_1181.w, x_1181.w, x_1181.w) * x_1183);
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.x, x_1186.y);
        let x_1189 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec13;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1196.xy, x_1196.z);
        u_xlat56 = x_1198;
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.z, x_1200.w);
        let x_1203 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec14;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1210.xy, x_1210.z);
        u_xlat57 = x_1212;
        let x_1213 : f32 = u_xlat57;
        let x_1215 : f32 = u_xlat15.y;
        u_xlat57 = (x_1213 * x_1215);
        let x_1218 : f32 = u_xlat15.x;
        let x_1219 : f32 = u_xlat56;
        let x_1221 : f32 = u_xlat57;
        u_xlat56 = ((x_1218 * x_1219) + x_1221);
        let x_1224 : vec2<f32> = u_xlat40;
        let x_1226 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec15;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1233.xy, x_1233.z);
        u_xlat57 = x_1235;
        let x_1237 : f32 = u_xlat15.z;
        let x_1238 : f32 = u_xlat57;
        let x_1240 : f32 = u_xlat56;
        u_xlat56 = ((x_1237 * x_1238) + x_1240);
        let x_1243 : vec4<f32> = u_xlat13;
        let x_1244 : vec2<f32> = vec2<f32>(x_1243.x, x_1243.y);
        let x_1246 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
        let x_1253 : vec3<f32> = txVec16;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1253.xy, x_1253.z);
        u_xlat57 = x_1255;
        let x_1257 : f32 = u_xlat15.w;
        let x_1258 : f32 = u_xlat57;
        let x_1260 : f32 = u_xlat56;
        u_xlat56 = ((x_1257 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat11;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec17;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1273.xy, x_1273.z);
        u_xlat57 = x_1275;
        let x_1277 : f32 = u_xlat16.x;
        let x_1278 : f32 = u_xlat57;
        let x_1280 : f32 = u_xlat56;
        u_xlat56 = ((x_1277 * x_1278) + x_1280);
        let x_1283 : vec4<f32> = u_xlat11;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec18;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1293.xy, x_1293.z);
        u_xlat57 = x_1295;
        let x_1297 : f32 = u_xlat16.y;
        let x_1298 : f32 = u_xlat57;
        let x_1300 : f32 = u_xlat56;
        u_xlat56 = ((x_1297 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat12;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.x, x_1303.y);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec19;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1313.xy, x_1313.z);
        u_xlat57 = x_1315;
        let x_1317 : f32 = u_xlat16.z;
        let x_1318 : f32 = u_xlat57;
        let x_1320 : f32 = u_xlat56;
        u_xlat56 = ((x_1317 * x_1318) + x_1320);
        let x_1323 : vec4<f32> = u_xlat13;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec20;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1333.xy, x_1333.z);
        u_xlat57 = x_1335;
        let x_1337 : f32 = u_xlat16.w;
        let x_1338 : f32 = u_xlat57;
        let x_1340 : f32 = u_xlat56;
        u_xlat56 = ((x_1337 * x_1338) + x_1340);
        let x_1343 : vec4<f32> = u_xlat14;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.x, x_1343.y);
        let x_1346 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec21;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1353.xy, x_1353.z);
        u_xlat57 = x_1355;
        let x_1357 : f32 = u_xlat17.x;
        let x_1358 : f32 = u_xlat57;
        let x_1360 : f32 = u_xlat56;
        u_xlat56 = ((x_1357 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat14;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.z, x_1363.w);
        let x_1366 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec22;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat57 = x_1375;
        let x_1377 : f32 = u_xlat17.y;
        let x_1378 : f32 = u_xlat57;
        let x_1380 : f32 = u_xlat56;
        u_xlat56 = ((x_1377 * x_1378) + x_1380);
        let x_1383 : vec2<f32> = u_xlat24;
        let x_1385 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec23;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1392.xy, x_1392.z);
        u_xlat57 = x_1394;
        let x_1396 : f32 = u_xlat17.z;
        let x_1397 : f32 = u_xlat57;
        let x_1399 : f32 = u_xlat56;
        u_xlat56 = ((x_1396 * x_1397) + x_1399);
        let x_1402 : vec2<f32> = u_xlat48;
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec24;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat57 = x_1413;
        let x_1415 : f32 = u_xlat17.w;
        let x_1416 : f32 = u_xlat57;
        let x_1418 : f32 = u_xlat56;
        u_xlat56 = ((x_1415 * x_1416) + x_1418);
        let x_1421 : vec4<f32> = u_xlat9;
        let x_1422 : vec2<f32> = vec2<f32>(x_1421.x, x_1421.y);
        let x_1424 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec25;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1431.xy, x_1431.z);
        u_xlat57 = x_1433;
        let x_1435 : f32 = u_xlat5.x;
        let x_1436 : f32 = u_xlat57;
        let x_1438 : f32 = u_xlat56;
        u_xlat56 = ((x_1435 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec26;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1451.xy, x_1451.z);
        u_xlat57 = x_1453;
        let x_1455 : f32 = u_xlat5.y;
        let x_1456 : f32 = u_xlat57;
        let x_1458 : f32 = u_xlat56;
        u_xlat56 = ((x_1455 * x_1456) + x_1458);
        let x_1461 : vec2<f32> = u_xlat43;
        let x_1463 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec27;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1470.xy, x_1470.z);
        u_xlat57 = x_1472;
        let x_1474 : f32 = u_xlat5.z;
        let x_1475 : f32 = u_xlat57;
        let x_1477 : f32 = u_xlat56;
        u_xlat56 = ((x_1474 * x_1475) + x_1477);
        let x_1480 : vec4<f32> = u_xlat4;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.x, x_1480.y);
        let x_1483 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec28;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1490.xy, x_1490.z);
        u_xlat57 = x_1492;
        let x_1494 : f32 = u_xlat5.w;
        let x_1495 : f32 = u_xlat57;
        let x_1497 : f32 = u_xlat56;
        u_xlat55 = ((x_1494 * x_1495) + x_1497);
      }
    }
  } else {
    let x_1501 : vec4<f32> = vs_TEXCOORD6;
    let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
    let x_1504 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
    let x_1511 : vec3<f32> = txVec29;
    let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1511.xy, x_1511.z);
    u_xlat55 = x_1513;
  }
  let x_1515 : f32 = x_285.x_MainLightShadowParams.x;
  u_xlat56 = (-(x_1515) + 1.0f);
  let x_1518 : f32 = u_xlat55;
  let x_1520 : f32 = x_285.x_MainLightShadowParams.x;
  let x_1522 : f32 = u_xlat56;
  u_xlat55 = ((x_1518 * x_1520) + x_1522);
  let x_1525 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (0.0f >= x_1525);
  let x_1529 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1529 >= 1.0f);
  let x_1531 : bool = u_xlatb56;
  let x_1532 : bool = u_xlatb57;
  u_xlatb56 = (x_1531 | x_1532);
  let x_1534 : bool = u_xlatb56;
  let x_1535 : f32 = u_xlat55;
  u_xlat55 = select(x_1535, 1.0f, x_1534);
  let x_1538 : vec4<f32> = vs_TEXCOORD2;
  let x_1542 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1544 : vec3<f32> = (vec3<f32>(x_1538.x, x_1538.y, x_1538.z) + -(x_1542));
  let x_1545 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
  let x_1547 : vec4<f32> = u_xlat4;
  let x_1549 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(vec3<f32>(x_1547.x, x_1547.y, x_1547.z), vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
  let x_1552 : f32 = u_xlat56;
  let x_1554 : f32 = x_285.x_MainLightShadowParams.z;
  let x_1557 : f32 = x_285.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1552 * x_1554) + x_1557);
  let x_1559 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1559, 0.0f, 1.0f);
  let x_1561 : f32 = u_xlat55;
  u_xlat57 = (-(x_1561) + 1.0f);
  let x_1564 : f32 = u_xlat56;
  let x_1565 : f32 = u_xlat57;
  let x_1567 : f32 = u_xlat55;
  u_xlat55 = ((x_1564 * x_1565) + x_1567);
  let x_1575 : f32 = x_1573.x_MainLightCookieTextureFormat;
  u_xlatb56 = !((x_1575 == -1.0f));
  let x_1577 : bool = u_xlatb56;
  if (x_1577) {
    let x_1580 : vec4<f32> = vs_TEXCOORD2;
    let x_1583 : vec4<f32> = x_1573.x_MainLightWorldToLight[1i];
    let x_1585 : vec2<f32> = (vec2<f32>(x_1580.y, x_1580.y) * vec2<f32>(x_1583.x, x_1583.y));
    let x_1586 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1585.x, x_1585.y, x_1586.z, x_1586.w);
    let x_1589 : vec4<f32> = x_1573.x_MainLightWorldToLight[0i];
    let x_1591 : vec4<f32> = vs_TEXCOORD2;
    let x_1594 : vec4<f32> = u_xlat4;
    let x_1596 : vec2<f32> = ((vec2<f32>(x_1589.x, x_1589.y) * vec2<f32>(x_1591.x, x_1591.x)) + vec2<f32>(x_1594.x, x_1594.y));
    let x_1597 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1596.x, x_1596.y, x_1597.z, x_1597.w);
    let x_1600 : vec4<f32> = x_1573.x_MainLightWorldToLight[2i];
    let x_1602 : vec4<f32> = vs_TEXCOORD2;
    let x_1605 : vec4<f32> = u_xlat4;
    let x_1607 : vec2<f32> = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(x_1602.z, x_1602.z)) + vec2<f32>(x_1605.x, x_1605.y));
    let x_1608 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
    let x_1610 : vec4<f32> = u_xlat4;
    let x_1614 : vec4<f32> = x_1573.x_MainLightWorldToLight[3i];
    let x_1616 : vec2<f32> = (vec2<f32>(x_1610.x, x_1610.y) + vec2<f32>(x_1614.x, x_1614.y));
    let x_1617 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
    let x_1619 : vec4<f32> = u_xlat4;
    let x_1622 : vec2<f32> = ((vec2<f32>(x_1619.x, x_1619.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1623 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1622.x, x_1622.y, x_1623.z, x_1623.w);
    let x_1630 : vec4<f32> = u_xlat4;
    let x_1633 : f32 = x_43.x_GlobalMipBias.x;
    let x_1634 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1630.x, x_1630.y), x_1633);
    u_xlat4 = x_1634;
    let x_1639 : f32 = x_1573.x_MainLightCookieTextureFormat;
    let x_1641 : f32 = x_1573.x_MainLightCookieTextureFormat;
    let x_1643 : f32 = x_1573.x_MainLightCookieTextureFormat;
    let x_1645 : f32 = x_1573.x_MainLightCookieTextureFormat;
    let x_1646 : vec4<f32> = vec4<f32>(x_1639, x_1641, x_1643, x_1645);
    let x_1654 : vec4<bool> = (vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1646.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1654.x, x_1654.y);
    let x_1657 : bool = u_xlatb5.y;
    if (x_1657) {
      let x_1662 : f32 = u_xlat4.w;
      x_1658 = x_1662;
    } else {
      let x_1665 : f32 = u_xlat4.x;
      x_1658 = x_1665;
    }
    let x_1666 : f32 = x_1658;
    u_xlat56 = x_1666;
    let x_1668 : bool = u_xlatb5.x;
    if (x_1668) {
      let x_1672 : vec4<f32> = u_xlat4;
      x_1669 = vec3<f32>(x_1672.x, x_1672.y, x_1672.z);
    } else {
      let x_1675 : f32 = u_xlat56;
      x_1669 = vec3<f32>(x_1675, x_1675, x_1675);
    }
    let x_1677 : vec3<f32> = x_1669;
    let x_1678 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1684 : vec4<f32> = u_xlat4;
  let x_1687 : vec4<f32> = x_43.x_MainLightColor;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1684.x, x_1684.y, x_1684.z) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1692 : f32 = u_xlat54;
  let x_1694 : vec4<f32> = u_xlat4;
  let x_1696 : vec3<f32> = (vec3<f32>(x_1692, x_1692, x_1692) * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
  let x_1699 : vec4<f32> = u_xlat0;
  let x_1701 : vec4<f32> = u_xlat3;
  let x_1703 : vec3<f32> = (vec3<f32>(x_1699.x, x_1699.x, x_1699.x) * vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
  let x_1704 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
  let x_1706 : f32 = u_xlat55;
  let x_1712 : f32 = x_1710.unity_LightData.z;
  u_xlat0.x = (x_1706 * x_1712);
  let x_1715 : vec4<f32> = u_xlat0;
  let x_1717 : vec4<f32> = u_xlat4;
  let x_1719 : vec3<f32> = (vec3<f32>(x_1715.x, x_1715.x, x_1715.x) * vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
  let x_1720 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1722 : vec3<f32> = u_xlat2;
  let x_1724 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_1722, vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1729 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1729, 0.0f, 1.0f);
  let x_1732 : vec4<f32> = u_xlat0;
  let x_1734 : vec4<f32> = u_xlat4;
  let x_1736 : vec3<f32> = (vec3<f32>(x_1732.x, x_1732.x, x_1732.x) * vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
  let x_1737 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
  let x_1739 : vec4<f32> = u_xlat1;
  let x_1741 : vec4<f32> = u_xlat4;
  let x_1743 : vec3<f32> = (vec3<f32>(x_1739.x, x_1739.y, x_1739.z) * vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
  let x_1744 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
  let x_1747 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1749 : f32 = x_1710.unity_LightData.y;
  u_xlat0.x = min(x_1747, x_1749);
  let x_1755 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1755));
  let x_1759 : f32 = x_1573.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1761 : f32 = x_1573.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1763 : f32 = x_1573.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1765 : f32 = x_1573.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1766 : vec4<f32> = vec4<f32>(x_1759, x_1761, x_1763, x_1765);
  let x_1772 : vec4<bool> = (vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1766.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1772.x, x_1772.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1783 : u32 = u_xlatu_loop_1;
    let x_1784 : u32 = u_xlatu0;
    if ((x_1783 < x_1784)) {
    } else {
      break;
    }
    let x_1787 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1787 >> 2u);
    let x_1791 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1791 & 3u));
    let x_1794 : u32 = u_xlatu56;
    let x_1797 : vec4<f32> = x_1710.unity_LightIndices[bitcast<i32>(x_1794)];
    let x_1807 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1812 : vec4<u32> = indexable[x_1807];
    u_xlat56 = dot(x_1797, bitcast<vec4<f32>>(x_1812));
    let x_1815 : f32 = u_xlat56;
    u_xlatu56 = bitcast<u32>(i32(x_1815));
    let x_1818 : vec4<f32> = vs_TEXCOORD2;
    let x_1831 : u32 = u_xlatu56;
    let x_1834 : vec4<f32> = x_1830.x_AdditionalLightsPosition[bitcast<i32>(x_1831)];
    let x_1837 : u32 = u_xlatu56;
    let x_1840 : vec4<f32> = x_1830.x_AdditionalLightsPosition[bitcast<i32>(x_1837)];
    let x_1842 : vec3<f32> = ((-(vec3<f32>(x_1818.x, x_1818.y, x_1818.z)) * vec3<f32>(x_1834.w, x_1834.w, x_1834.w)) + vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
    let x_1843 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
    let x_1845 : vec4<f32> = u_xlat7;
    let x_1847 : vec4<f32> = u_xlat7;
    u_xlat57 = dot(vec3<f32>(x_1845.x, x_1845.y, x_1845.z), vec3<f32>(x_1847.x, x_1847.y, x_1847.z));
    let x_1850 : f32 = u_xlat57;
    u_xlat57 = max(x_1850, 6.10351562e-05f);
    let x_1854 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1854);
    let x_1856 : f32 = u_xlat58;
    let x_1858 : vec4<f32> = u_xlat7;
    let x_1860 : vec3<f32> = (vec3<f32>(x_1856, x_1856, x_1856) * vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
    let x_1861 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
    let x_1863 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1863);
    let x_1865 : f32 = u_xlat57;
    let x_1866 : u32 = u_xlatu56;
    let x_1869 : f32 = x_1830.x_AdditionalLightsAttenuation[bitcast<i32>(x_1866)].x;
    u_xlat57 = (x_1865 * x_1869);
    let x_1871 : f32 = u_xlat57;
    let x_1873 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1871) * x_1873) + 1.0f);
    let x_1876 : f32 = u_xlat57;
    u_xlat57 = max(x_1876, 0.0f);
    let x_1878 : f32 = u_xlat57;
    let x_1879 : f32 = u_xlat57;
    u_xlat57 = (x_1878 * x_1879);
    let x_1881 : f32 = u_xlat57;
    let x_1882 : f32 = u_xlat58;
    u_xlat57 = (x_1881 * x_1882);
    let x_1884 : u32 = u_xlatu56;
    let x_1887 : vec4<f32> = x_1830.x_AdditionalLightsSpotDir[bitcast<i32>(x_1884)];
    let x_1889 : vec4<f32> = u_xlat7;
    u_xlat58 = dot(vec3<f32>(x_1887.x, x_1887.y, x_1887.z), vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
    let x_1892 : f32 = u_xlat58;
    let x_1893 : u32 = u_xlatu56;
    let x_1896 : f32 = x_1830.x_AdditionalLightsAttenuation[bitcast<i32>(x_1893)].z;
    let x_1898 : u32 = u_xlatu56;
    let x_1901 : f32 = x_1830.x_AdditionalLightsAttenuation[bitcast<i32>(x_1898)].w;
    u_xlat58 = ((x_1892 * x_1896) + x_1901);
    let x_1903 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1903, 0.0f, 1.0f);
    let x_1905 : f32 = u_xlat58;
    let x_1906 : f32 = u_xlat58;
    u_xlat58 = (x_1905 * x_1906);
    let x_1908 : f32 = u_xlat57;
    let x_1909 : f32 = u_xlat58;
    u_xlat57 = (x_1908 * x_1909);
    let x_1912 : u32 = u_xlatu56;
    u_xlatu58 = (x_1912 >> 5u);
    let x_1915 : u32 = u_xlatu56;
    u_xlati41 = (1i << bitcast<u32>((bitcast<i32>(x_1915) & 31i)));
    let x_1921 : i32 = u_xlati41;
    let x_1923 : u32 = u_xlatu58;
    let x_1926 : f32 = x_1573.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1923)].el;
    u_xlati58 = bitcast<i32>((bitcast<u32>(x_1921) & bitcast<u32>(x_1926)));
    let x_1930 : i32 = u_xlati58;
    if ((x_1930 != 0i)) {
      let x_1940 : u32 = u_xlatu56;
      let x_1943 : f32 = x_1939.x_AdditionalLightsLightTypes[bitcast<i32>(x_1940)].el;
      u_xlati58 = i32(x_1943);
      let x_1945 : i32 = u_xlati58;
      u_xlati41 = select(1i, 0i, (x_1945 != 0i));
      let x_1949 : u32 = u_xlatu56;
      u_xlati59 = (bitcast<i32>(x_1949) << bitcast<u32>(2i));
      let x_1952 : i32 = u_xlati41;
      if ((x_1952 != 0i)) {
        let x_1956 : vec4<f32> = vs_TEXCOORD2;
        let x_1958 : i32 = u_xlati59;
        let x_1961 : i32 = u_xlati59;
        let x_1965 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_1958 + 1i) / 4i)][((x_1961 + 1i) % 4i)];
        let x_1967 : vec3<f32> = (vec3<f32>(x_1956.y, x_1956.y, x_1956.y) * vec3<f32>(x_1965.x, x_1965.y, x_1965.w));
        let x_1968 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
        let x_1970 : i32 = u_xlati59;
        let x_1972 : i32 = u_xlati59;
        let x_1975 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[(x_1970 / 4i)][(x_1972 % 4i)];
        let x_1977 : vec4<f32> = vs_TEXCOORD2;
        let x_1980 : vec4<f32> = u_xlat8;
        let x_1982 : vec3<f32> = ((vec3<f32>(x_1975.x, x_1975.y, x_1975.w) * vec3<f32>(x_1977.x, x_1977.x, x_1977.x)) + vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
        let x_1983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
        let x_1985 : i32 = u_xlati59;
        let x_1988 : i32 = u_xlati59;
        let x_1992 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_1985 + 2i) / 4i)][((x_1988 + 2i) % 4i)];
        let x_1994 : vec4<f32> = vs_TEXCOORD2;
        let x_1997 : vec4<f32> = u_xlat8;
        let x_1999 : vec3<f32> = ((vec3<f32>(x_1992.x, x_1992.y, x_1992.w) * vec3<f32>(x_1994.z, x_1994.z, x_1994.z)) + vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
        let x_2000 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
        let x_2002 : vec4<f32> = u_xlat8;
        let x_2004 : i32 = u_xlati59;
        let x_2007 : i32 = u_xlati59;
        let x_2011 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_2004 + 3i) / 4i)][((x_2007 + 3i) % 4i)];
        let x_2013 : vec3<f32> = (vec3<f32>(x_2002.x, x_2002.y, x_2002.z) + vec3<f32>(x_2011.x, x_2011.y, x_2011.w));
        let x_2014 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
        let x_2016 : vec4<f32> = u_xlat8;
        let x_2018 : vec4<f32> = u_xlat8;
        let x_2020 : vec2<f32> = (vec2<f32>(x_2016.x, x_2016.y) / vec2<f32>(x_2018.z, x_2018.z));
        let x_2021 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2020.x, x_2020.y, x_2021.z, x_2021.w);
        let x_2023 : vec4<f32> = u_xlat8;
        let x_2026 : vec2<f32> = ((vec2<f32>(x_2023.x, x_2023.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2027 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2026.x, x_2026.y, x_2027.z, x_2027.w);
        let x_2029 : vec4<f32> = u_xlat8;
        let x_2033 : vec2<f32> = clamp(vec2<f32>(x_2029.x, x_2029.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2034 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2033.x, x_2033.y, x_2034.z, x_2034.w);
        let x_2036 : u32 = u_xlatu56;
        let x_2039 : vec4<f32> = x_1939.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2036)];
        let x_2041 : vec4<f32> = u_xlat8;
        let x_2044 : u32 = u_xlatu56;
        let x_2047 : vec4<f32> = x_1939.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2044)];
        let x_2049 : vec2<f32> = ((vec2<f32>(x_2039.x, x_2039.y) * vec2<f32>(x_2041.x, x_2041.y)) + vec2<f32>(x_2047.z, x_2047.w));
        let x_2050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2049.x, x_2049.y, x_2050.z, x_2050.w);
      } else {
        let x_2054 : i32 = u_xlati58;
        u_xlatb58 = (x_2054 == 1i);
        let x_2056 : bool = u_xlatb58;
        u_xlati58 = select(0i, 1i, x_2056);
        let x_2058 : i32 = u_xlati58;
        if ((x_2058 != 0i)) {
          let x_2063 : vec4<f32> = vs_TEXCOORD2;
          let x_2065 : i32 = u_xlati59;
          let x_2068 : i32 = u_xlati59;
          let x_2072 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_2065 + 1i) / 4i)][((x_2068 + 1i) % 4i)];
          u_xlat44 = (vec2<f32>(x_2063.y, x_2063.y) * vec2<f32>(x_2072.x, x_2072.y));
          let x_2075 : i32 = u_xlati59;
          let x_2077 : i32 = u_xlati59;
          let x_2080 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[(x_2075 / 4i)][(x_2077 % 4i)];
          let x_2082 : vec4<f32> = vs_TEXCOORD2;
          let x_2085 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2080.x, x_2080.y) * vec2<f32>(x_2082.x, x_2082.x)) + x_2085);
          let x_2087 : i32 = u_xlati59;
          let x_2090 : i32 = u_xlati59;
          let x_2094 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_2087 + 2i) / 4i)][((x_2090 + 2i) % 4i)];
          let x_2096 : vec4<f32> = vs_TEXCOORD2;
          let x_2099 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2094.x, x_2094.y) * vec2<f32>(x_2096.z, x_2096.z)) + x_2099);
          let x_2101 : vec2<f32> = u_xlat44;
          let x_2102 : i32 = u_xlati59;
          let x_2105 : i32 = u_xlati59;
          let x_2109 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_2102 + 3i) / 4i)][((x_2105 + 3i) % 4i)];
          u_xlat44 = (x_2101 + vec2<f32>(x_2109.x, x_2109.y));
          let x_2112 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2112 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2115 : vec2<f32> = u_xlat44;
          u_xlat44 = fract(x_2115);
          let x_2117 : u32 = u_xlatu56;
          let x_2120 : vec4<f32> = x_1939.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2117)];
          let x_2122 : vec2<f32> = u_xlat44;
          let x_2124 : u32 = u_xlatu56;
          let x_2127 : vec4<f32> = x_1939.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2124)];
          let x_2129 : vec2<f32> = ((vec2<f32>(x_2120.x, x_2120.y) * x_2122) + vec2<f32>(x_2127.z, x_2127.w));
          let x_2130 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2129.x, x_2129.y, x_2130.z, x_2130.w);
        } else {
          let x_2133 : vec4<f32> = vs_TEXCOORD2;
          let x_2135 : i32 = u_xlati59;
          let x_2138 : i32 = u_xlati59;
          let x_2142 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_2135 + 1i) / 4i)][((x_2138 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2133.y, x_2133.y, x_2133.y, x_2133.y) * x_2142);
          let x_2144 : i32 = u_xlati59;
          let x_2146 : i32 = u_xlati59;
          let x_2149 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[(x_2144 / 4i)][(x_2146 % 4i)];
          let x_2150 : vec4<f32> = vs_TEXCOORD2;
          let x_2153 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2149 * vec4<f32>(x_2150.x, x_2150.x, x_2150.x, x_2150.x)) + x_2153);
          let x_2155 : i32 = u_xlati59;
          let x_2158 : i32 = u_xlati59;
          let x_2162 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_2155 + 2i) / 4i)][((x_2158 + 2i) % 4i)];
          let x_2163 : vec4<f32> = vs_TEXCOORD2;
          let x_2166 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2162 * vec4<f32>(x_2163.z, x_2163.z, x_2163.z, x_2163.z)) + x_2166);
          let x_2168 : vec4<f32> = u_xlat9;
          let x_2169 : i32 = u_xlati59;
          let x_2172 : i32 = u_xlati59;
          let x_2176 : vec4<f32> = x_1939.x_AdditionalLightsWorldToLights[((x_2169 + 3i) / 4i)][((x_2172 + 3i) % 4i)];
          u_xlat9 = (x_2168 + x_2176);
          let x_2178 : vec4<f32> = u_xlat9;
          let x_2180 : vec4<f32> = u_xlat9;
          let x_2182 : vec3<f32> = (vec3<f32>(x_2178.x, x_2178.y, x_2178.z) / vec3<f32>(x_2180.w, x_2180.w, x_2180.w));
          let x_2183 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2182.x, x_2182.y, x_2182.z, x_2183.w);
          let x_2185 : vec4<f32> = u_xlat9;
          let x_2187 : vec4<f32> = u_xlat9;
          u_xlat58 = dot(vec3<f32>(x_2185.x, x_2185.y, x_2185.z), vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
          let x_2190 : f32 = u_xlat58;
          u_xlat58 = inverseSqrt(x_2190);
          let x_2192 : f32 = u_xlat58;
          let x_2194 : vec4<f32> = u_xlat9;
          let x_2196 : vec3<f32> = (vec3<f32>(x_2192, x_2192, x_2192) * vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
          let x_2197 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
          let x_2199 : vec4<f32> = u_xlat9;
          u_xlat58 = dot(abs(vec3<f32>(x_2199.x, x_2199.y, x_2199.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2204 : f32 = u_xlat58;
          u_xlat58 = max(x_2204, 0.000001f);
          let x_2207 : f32 = u_xlat58;
          u_xlat58 = (1.0f / x_2207);
          let x_2209 : f32 = u_xlat58;
          let x_2211 : vec4<f32> = u_xlat9;
          let x_2213 : vec3<f32> = (vec3<f32>(x_2209, x_2209, x_2209) * vec3<f32>(x_2211.z, x_2211.x, x_2211.y));
          let x_2214 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2213.x, x_2213.y, x_2213.z, x_2214.w);
          let x_2217 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2217);
          let x_2221 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2221, 0.0f, 1.0f);
          let x_2225 : vec4<f32> = u_xlat10;
          let x_2228 : vec4<bool> = (vec4<f32>(x_2225.y, x_2225.z, x_2225.y, x_2225.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb41 = vec2<bool>(x_2228.x, x_2228.y);
          let x_2232 : bool = u_xlatb41.x;
          if (x_2232) {
            let x_2237 : f32 = u_xlat10.x;
            x_2233 = x_2237;
          } else {
            let x_2240 : f32 = u_xlat10.x;
            x_2233 = -(x_2240);
          }
          let x_2242 : f32 = x_2233;
          u_xlat41.x = x_2242;
          let x_2245 : bool = u_xlatb41.y;
          if (x_2245) {
            let x_2250 : f32 = u_xlat10.x;
            x_2246 = x_2250;
          } else {
            let x_2253 : f32 = u_xlat10.x;
            x_2246 = -(x_2253);
          }
          let x_2255 : f32 = x_2246;
          u_xlat41.y = x_2255;
          let x_2257 : vec4<f32> = u_xlat9;
          let x_2259 : f32 = u_xlat58;
          let x_2262 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2257.x, x_2257.y) * vec2<f32>(x_2259, x_2259)) + x_2262);
          let x_2264 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2264 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2267 : vec2<f32> = u_xlat41;
          u_xlat41 = clamp(x_2267, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2271 : u32 = u_xlatu56;
          let x_2274 : vec4<f32> = x_1939.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2271)];
          let x_2276 : vec2<f32> = u_xlat41;
          let x_2278 : u32 = u_xlatu56;
          let x_2281 : vec4<f32> = x_1939.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2278)];
          let x_2283 : vec2<f32> = ((vec2<f32>(x_2274.x, x_2274.y) * x_2276) + vec2<f32>(x_2281.z, x_2281.w));
          let x_2284 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
        }
      }
      let x_2291 : vec4<f32> = u_xlat8;
      let x_2294 : f32 = x_43.x_GlobalMipBias.x;
      let x_2295 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2291.x, x_2291.y), x_2294);
      u_xlat8 = x_2295;
      let x_2297 : bool = u_xlatb5.y;
      if (x_2297) {
        let x_2302 : f32 = u_xlat8.w;
        x_2298 = x_2302;
      } else {
        let x_2305 : f32 = u_xlat8.x;
        x_2298 = x_2305;
      }
      let x_2306 : f32 = x_2298;
      u_xlat58 = x_2306;
      let x_2308 : bool = u_xlatb5.x;
      if (x_2308) {
        let x_2312 : vec4<f32> = u_xlat8;
        x_2309 = vec3<f32>(x_2312.x, x_2312.y, x_2312.z);
      } else {
        let x_2315 : f32 = u_xlat58;
        x_2309 = vec3<f32>(x_2315, x_2315, x_2315);
      }
      let x_2317 : vec3<f32> = x_2309;
      let x_2318 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2324 : vec4<f32> = u_xlat8;
    let x_2326 : u32 = u_xlatu56;
    let x_2329 : vec4<f32> = x_1830.x_AdditionalLightsColor[bitcast<i32>(x_2326)];
    let x_2331 : vec3<f32> = (vec3<f32>(x_2324.x, x_2324.y, x_2324.z) * vec3<f32>(x_2329.x, x_2329.y, x_2329.z));
    let x_2332 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
    let x_2334 : f32 = u_xlat54;
    let x_2336 : vec4<f32> = u_xlat8;
    let x_2338 : vec3<f32> = (vec3<f32>(x_2334, x_2334, x_2334) * vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
    let x_2339 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
    let x_2341 : f32 = u_xlat57;
    let x_2343 : vec4<f32> = u_xlat8;
    let x_2345 : vec3<f32> = (vec3<f32>(x_2341, x_2341, x_2341) * vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
    let x_2346 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
    let x_2348 : vec3<f32> = u_xlat2;
    let x_2349 : vec4<f32> = u_xlat7;
    u_xlat56 = dot(x_2348, vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
    let x_2352 : f32 = u_xlat56;
    u_xlat56 = clamp(x_2352, 0.0f, 1.0f);
    let x_2354 : f32 = u_xlat56;
    let x_2356 : vec4<f32> = u_xlat8;
    let x_2358 : vec3<f32> = (vec3<f32>(x_2354, x_2354, x_2354) * vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
    let x_2359 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
    let x_2361 : vec4<f32> = u_xlat7;
    let x_2363 : vec4<f32> = u_xlat1;
    let x_2366 : vec4<f32> = u_xlat6;
    let x_2368 : vec3<f32> = ((vec3<f32>(x_2361.x, x_2361.y, x_2361.z) * vec3<f32>(x_2363.x, x_2363.y, x_2363.z)) + vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
    let x_2369 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);

    continuing {
      let x_2371 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2371 + bitcast<u32>(1i));
    }
  }
  let x_2373 : vec4<f32> = u_xlat3;
  let x_2375 : vec4<f32> = u_xlat1;
  let x_2378 : vec4<f32> = u_xlat4;
  let x_2380 : vec3<f32> = ((vec3<f32>(x_2373.x, x_2373.y, x_2373.z) * vec3<f32>(x_2375.x, x_2375.y, x_2375.z)) + vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
  let x_2381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
  let x_2385 : vec4<f32> = u_xlat6;
  let x_2387 : vec4<f32> = u_xlat1;
  let x_2389 : vec3<f32> = (vec3<f32>(x_2385.x, x_2385.y, x_2385.z) + vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2390 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
  let x_2392 : bool = u_xlatb36;
  let x_2393 : f32 = u_xlat18;
  SV_Target0.w = select(1.0f, x_2393, x_2392);
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

