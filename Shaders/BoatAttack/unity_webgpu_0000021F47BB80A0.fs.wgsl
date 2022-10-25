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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_271 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_1591 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1725 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1839 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1961 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlatb56 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat57 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat22 : f32;
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
  var u_xlatb4 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_1676 : f32;
  var x_1687 : vec3<f32>;
  var u_xlatu54 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu57 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlat41 : vec2<f32>;
  var u_xlatu41 : u32;
  var u_xlati59 : i32;
  var u_xlati41 : i32;
  var u_xlati60 : i32;
  var u_xlatb41 : bool;
  var u_xlatb44 : vec2<bool>;
  var u_xlat44 : vec2<f32>;
  var x_2262 : f32;
  var x_2275 : f32;
  var x_2327 : f32;
  var x_2339 : vec3<f32>;
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
  let x_162 : f32 = hlslcc_FragCoord.w;
  let x_165 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_162 * x_165);
  let x_169 : f32 = u_xlat0.x;
  let x_173 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_169 / x_173);
  let x_177 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_177) + 1.0f);
  let x_182 : f32 = u_xlat0.x;
  let x_184 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_182 * x_184);
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_188, 0.0f);
  let x_192 : f32 = u_xlat0.x;
  let x_195 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_192 * x_195);
  let x_205 : vec2<f32> = vs_TEXCOORD1;
  let x_207 : f32 = x_43.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_205, x_207);
  u_xlat3 = vec3<f32>(x_208.x, x_208.y, x_208.z);
  let x_214 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_215 : vec2<f32> = vec2<f32>(x_214.x, x_214.y);
  let x_219 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_215.x, x_215.y));
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat4;
  let x_224 : vec4<f32> = hlslcc_FragCoord;
  let x_226 : vec2<f32> = (vec2<f32>(x_222.x, x_222.y) * vec2<f32>(x_224.x, x_224.y));
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_230 : f32 = u_xlat4.y;
  let x_233 : f32 = x_43.x_ScaleBiasRt.x;
  let x_236 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat54 = ((x_230 * x_233) + x_236);
  let x_238 : f32 = u_xlat54;
  u_xlat4.z = (-(x_238) + 1.0f);
  let x_247 : vec4<f32> = u_xlat4;
  let x_250 : f32 = x_43.x_GlobalMipBias.x;
  let x_251 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_247.x, x_247.z), x_250);
  u_xlat54 = x_251.x;
  let x_254 : f32 = u_xlat54;
  u_xlat55 = (x_254 + -1.0f);
  let x_259 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_260 : f32 = u_xlat55;
  u_xlat55 = ((x_259 * x_260) + 1.0f);
  let x_263 : f32 = u_xlat54;
  u_xlat54 = min(x_263, 1.0f);
  let x_273 : f32 = x_271.x_MainLightShadowParams.y;
  u_xlatb56 = (0.0f < x_273);
  let x_275 : bool = u_xlatb56;
  if (x_275) {
    let x_279 : f32 = x_271.x_MainLightShadowParams.y;
    u_xlatb56 = (x_279 == 1.0f);
    let x_281 : bool = u_xlatb56;
    if (x_281) {
      let x_285 : vec4<f32> = vs_TEXCOORD6;
      let x_289 : vec4<f32> = x_271.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_285.x, x_285.y, x_285.x, x_285.y) + x_289);
      let x_292 : vec4<f32> = u_xlat4;
      let x_293 : vec2<f32> = vec2<f32>(x_292.x, x_292.y);
      let x_295 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_293.x, x_293.y, x_295);
      let x_308 : vec3<f32> = txVec0;
      let x_310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_308.xy, x_308.z);
      u_xlat5.x = x_310;
      let x_313 : vec4<f32> = u_xlat4;
      let x_314 : vec2<f32> = vec2<f32>(x_313.z, x_313.w);
      let x_316 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_314.x, x_314.y, x_316);
      let x_323 : vec3<f32> = txVec1;
      let x_325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_323.xy, x_323.z);
      u_xlat5.y = x_325;
      let x_327 : vec4<f32> = vs_TEXCOORD6;
      let x_331 : vec4<f32> = x_271.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_327.x, x_327.y, x_327.x, x_327.y) + x_331);
      let x_334 : vec4<f32> = u_xlat4;
      let x_335 : vec2<f32> = vec2<f32>(x_334.x, x_334.y);
      let x_337 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_335.x, x_335.y, x_337);
      let x_344 : vec3<f32> = txVec2;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_344.xy, x_344.z);
      u_xlat5.z = x_346;
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.z, x_349.w);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_359 : vec3<f32> = txVec3;
      let x_361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_359.xy, x_359.z);
      u_xlat5.w = x_361;
      let x_364 : vec4<f32> = u_xlat5;
      u_xlat56 = dot(x_364, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_371 : f32 = x_271.x_MainLightShadowParams.y;
      u_xlatb57 = (x_371 == 2.0f);
      let x_374 : bool = u_xlatb57;
      if (x_374) {
        let x_377 : vec4<f32> = vs_TEXCOORD6;
        let x_380 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_384 : vec2<f32> = ((vec2<f32>(x_377.x, x_377.y) * vec2<f32>(x_380.z, x_380.w)) + vec2<f32>(0.5f, 0.5f));
        let x_385 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
        let x_387 : vec4<f32> = u_xlat4;
        let x_389 : vec2<f32> = floor(vec2<f32>(x_387.x, x_387.y));
        let x_390 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
        let x_394 : vec4<f32> = vs_TEXCOORD6;
        let x_397 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_400 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_397.z, x_397.w)) + -(vec2<f32>(x_400.x, x_400.y)));
        let x_404 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_404.x, x_404.x, x_404.y, x_404.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_409 : vec4<f32> = u_xlat5;
        let x_411 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_409.x, x_409.x, x_409.z, x_409.z) * vec4<f32>(x_411.x, x_411.x, x_411.z, x_411.z));
        let x_414 : vec4<f32> = u_xlat6;
        let x_418 : vec2<f32> = (vec2<f32>(x_414.y, x_414.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_419 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_418.x, x_419.y, x_418.y, x_419.w);
        let x_421 : vec4<f32> = u_xlat6;
        let x_424 : vec2<f32> = u_xlat40;
        let x_426 : vec2<f32> = ((vec2<f32>(x_421.x, x_421.z) * vec2<f32>(0.5f, 0.5f)) + -(x_424));
        let x_427 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
        let x_430 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_430) + vec2<f32>(1.0f, 1.0f));
        let x_434 : vec2<f32> = u_xlat40;
        let x_436 : vec2<f32> = min(x_434, vec2<f32>(0.0f, 0.0f));
        let x_437 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
        let x_439 : vec4<f32> = u_xlat7;
        let x_442 : vec4<f32> = u_xlat7;
        let x_445 : vec2<f32> = u_xlat42;
        let x_446 : vec2<f32> = ((-(vec2<f32>(x_439.x, x_439.y)) * vec2<f32>(x_442.x, x_442.y)) + x_445);
        let x_447 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
        let x_449 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_449, vec2<f32>(0.0f, 0.0f));
        let x_451 : vec2<f32> = u_xlat40;
        let x_453 : vec2<f32> = u_xlat40;
        let x_455 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_451) * x_453) + vec2<f32>(x_455.y, x_455.w));
        let x_458 : vec4<f32> = u_xlat7;
        let x_460 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) + vec2<f32>(1.0f, 1.0f));
        let x_461 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
        let x_463 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_463 + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat6;
        let x_470 : vec2<f32> = (vec2<f32>(x_466.x, x_466.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_471 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
        let x_473 : vec2<f32> = u_xlat42;
        let x_474 : vec2<f32> = (x_473 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_475 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
        let x_477 : vec4<f32> = u_xlat7;
        let x_479 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_480 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_483 : vec2<f32> = u_xlat40;
        let x_484 : vec2<f32> = (x_483 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_485 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_487 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_487.y, x_487.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_491 : f32 = u_xlat7.x;
        u_xlat8.z = x_491;
        let x_494 : f32 = u_xlat40.x;
        u_xlat8.w = x_494;
        let x_497 : f32 = u_xlat9.x;
        u_xlat6.z = x_497;
        let x_500 : f32 = u_xlat5.x;
        u_xlat6.w = x_500;
        let x_503 : vec4<f32> = u_xlat6;
        let x_505 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_503.z, x_503.w, x_503.x, x_503.z) + vec4<f32>(x_505.z, x_505.w, x_505.x, x_505.z));
        let x_509 : f32 = u_xlat8.y;
        u_xlat7.z = x_509;
        let x_512 : f32 = u_xlat40.y;
        u_xlat7.w = x_512;
        let x_515 : f32 = u_xlat6.y;
        u_xlat9.z = x_515;
        let x_518 : f32 = u_xlat5.z;
        u_xlat9.w = x_518;
        let x_520 : vec4<f32> = u_xlat7;
        let x_522 : vec4<f32> = u_xlat9;
        let x_524 : vec3<f32> = (vec3<f32>(x_520.z, x_520.y, x_520.w) + vec3<f32>(x_522.z, x_522.y, x_522.w));
        let x_525 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat6;
        let x_529 : vec4<f32> = u_xlat10;
        let x_531 : vec3<f32> = (vec3<f32>(x_527.x, x_527.z, x_527.w) / vec3<f32>(x_529.z, x_529.w, x_529.y));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat6;
        let x_540 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_541 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat9;
        let x_545 : vec4<f32> = u_xlat5;
        let x_547 : vec3<f32> = (vec3<f32>(x_543.z, x_543.y, x_543.w) / vec3<f32>(x_545.x, x_545.y, x_545.z));
        let x_548 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
        let x_550 : vec4<f32> = u_xlat7;
        let x_552 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_553 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat6;
        let x_558 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_560 : vec3<f32> = (vec3<f32>(x_555.y, x_555.x, x_555.z) * vec3<f32>(x_558.x, x_558.x, x_558.x));
        let x_561 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
        let x_563 : vec4<f32> = u_xlat7;
        let x_566 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_568 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(x_566.y, x_566.y, x_566.y));
        let x_569 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_572 : f32 = u_xlat7.x;
        u_xlat6.w = x_572;
        let x_574 : vec4<f32> = u_xlat4;
        let x_577 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_574.x, x_574.y, x_574.x, x_574.y) * vec4<f32>(x_577.x, x_577.y, x_577.x, x_577.y)) + vec4<f32>(x_580.y, x_580.w, x_580.x, x_580.w));
        let x_583 : vec4<f32> = u_xlat4;
        let x_586 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_589 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(x_586.x, x_586.y)) + vec2<f32>(x_589.z, x_589.w));
        let x_593 : f32 = u_xlat6.y;
        u_xlat7.w = x_593;
        let x_595 : vec4<f32> = u_xlat7;
        let x_596 : vec2<f32> = vec2<f32>(x_595.y, x_595.z);
        let x_597 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_597.x, x_596.x, x_597.z, x_596.y);
        let x_599 : vec4<f32> = u_xlat4;
        let x_602 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_605 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y)) + vec4<f32>(x_605.x, x_605.y, x_605.z, x_605.y));
        let x_608 : vec4<f32> = u_xlat4;
        let x_611 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) * vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y)) + vec4<f32>(x_614.w, x_614.y, x_614.w, x_614.z));
        let x_617 : vec4<f32> = u_xlat4;
        let x_620 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y) * vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y)) + vec4<f32>(x_623.x, x_623.w, x_623.z, x_623.w));
        let x_627 : vec4<f32> = u_xlat5;
        let x_629 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_627.x, x_627.x, x_627.x, x_627.y) * vec4<f32>(x_629.z, x_629.w, x_629.y, x_629.z));
        let x_633 : vec4<f32> = u_xlat5;
        let x_635 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_633.y, x_633.y, x_633.z, x_633.z) * x_635);
        let x_639 : f32 = u_xlat5.z;
        let x_641 : f32 = u_xlat10.y;
        u_xlat57 = (x_639 * x_641);
        let x_644 : vec4<f32> = u_xlat8;
        let x_645 : vec2<f32> = vec2<f32>(x_644.x, x_644.y);
        let x_647 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_645.x, x_645.y, x_647);
        let x_654 : vec3<f32> = txVec4;
        let x_656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_654.xy, x_654.z);
        u_xlat4.x = x_656;
        let x_659 : vec4<f32> = u_xlat8;
        let x_660 : vec2<f32> = vec2<f32>(x_659.z, x_659.w);
        let x_662 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_660.x, x_660.y, x_662);
        let x_670 : vec3<f32> = txVec5;
        let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_670.xy, x_670.z);
        u_xlat22 = x_672;
        let x_673 : f32 = u_xlat22;
        let x_675 : f32 = u_xlat11.y;
        u_xlat22 = (x_673 * x_675);
        let x_678 : f32 = u_xlat11.x;
        let x_680 : f32 = u_xlat4.x;
        let x_682 : f32 = u_xlat22;
        u_xlat4.x = ((x_678 * x_680) + x_682);
        let x_686 : vec2<f32> = u_xlat40;
        let x_688 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_686.x, x_686.y, x_688);
        let x_695 : vec3<f32> = txVec6;
        let x_697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_695.xy, x_695.z);
        u_xlat22 = x_697;
        let x_699 : f32 = u_xlat11.z;
        let x_700 : f32 = u_xlat22;
        let x_703 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_699 * x_700) + x_703);
        let x_707 : vec4<f32> = u_xlat7;
        let x_708 : vec2<f32> = vec2<f32>(x_707.x, x_707.y);
        let x_710 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_708.x, x_708.y, x_710);
        let x_717 : vec3<f32> = txVec7;
        let x_719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_717.xy, x_717.z);
        u_xlat22 = x_719;
        let x_721 : f32 = u_xlat11.w;
        let x_722 : f32 = u_xlat22;
        let x_725 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_721 * x_722) + x_725);
        let x_729 : vec4<f32> = u_xlat9;
        let x_730 : vec2<f32> = vec2<f32>(x_729.x, x_729.y);
        let x_732 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec8;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
        u_xlat22 = x_741;
        let x_743 : f32 = u_xlat12.x;
        let x_744 : f32 = u_xlat22;
        let x_747 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_743 * x_744) + x_747);
        let x_751 : vec4<f32> = u_xlat9;
        let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
        let x_754 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_761 : vec3<f32> = txVec9;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_761.xy, x_761.z);
        u_xlat22 = x_763;
        let x_765 : f32 = u_xlat12.y;
        let x_766 : f32 = u_xlat22;
        let x_769 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_765 * x_766) + x_769);
        let x_773 : vec4<f32> = u_xlat7;
        let x_774 : vec2<f32> = vec2<f32>(x_773.z, x_773.w);
        let x_776 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec10;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_783.xy, x_783.z);
        u_xlat22 = x_785;
        let x_787 : f32 = u_xlat12.z;
        let x_788 : f32 = u_xlat22;
        let x_791 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_787 * x_788) + x_791);
        let x_795 : vec4<f32> = u_xlat6;
        let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec11;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
        u_xlat22 = x_807;
        let x_809 : f32 = u_xlat12.w;
        let x_810 : f32 = u_xlat22;
        let x_813 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_809 * x_810) + x_813);
        let x_817 : vec4<f32> = u_xlat6;
        let x_818 : vec2<f32> = vec2<f32>(x_817.z, x_817.w);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec12;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat22 = x_829;
        let x_830 : f32 = u_xlat57;
        let x_831 : f32 = u_xlat22;
        let x_834 : f32 = u_xlat4.x;
        u_xlat56 = ((x_830 * x_831) + x_834);
      } else {
        let x_837 : vec4<f32> = vs_TEXCOORD6;
        let x_840 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_843 : vec2<f32> = ((vec2<f32>(x_837.x, x_837.y) * vec2<f32>(x_840.z, x_840.w)) + vec2<f32>(0.5f, 0.5f));
        let x_844 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
        let x_846 : vec4<f32> = u_xlat4;
        let x_848 : vec2<f32> = floor(vec2<f32>(x_846.x, x_846.y));
        let x_849 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_851 : vec4<f32> = vs_TEXCOORD6;
        let x_854 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_857 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_851.x, x_851.y) * vec2<f32>(x_854.z, x_854.w)) + -(vec2<f32>(x_857.x, x_857.y)));
        let x_861 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_861.x, x_861.x, x_861.y, x_861.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_864 : vec4<f32> = u_xlat5;
        let x_866 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_864.x, x_864.x, x_864.z, x_864.z) * vec4<f32>(x_866.x, x_866.x, x_866.z, x_866.z));
        let x_869 : vec4<f32> = u_xlat6;
        let x_873 : vec2<f32> = (vec2<f32>(x_869.y, x_869.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_874 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_874.x, x_873.x, x_874.z, x_873.y);
        let x_876 : vec4<f32> = u_xlat6;
        let x_879 : vec2<f32> = u_xlat40;
        let x_881 : vec2<f32> = ((vec2<f32>(x_876.x, x_876.z) * vec2<f32>(0.5f, 0.5f)) + -(x_879));
        let x_882 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_881.x, x_882.y, x_881.y, x_882.w);
        let x_884 : vec2<f32> = u_xlat40;
        let x_886 : vec2<f32> = (-(x_884) + vec2<f32>(1.0f, 1.0f));
        let x_887 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_886.x, x_886.y, x_887.z, x_887.w);
        let x_889 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_889, vec2<f32>(0.0f, 0.0f));
        let x_891 : vec2<f32> = u_xlat42;
        let x_893 : vec2<f32> = u_xlat42;
        let x_895 : vec4<f32> = u_xlat6;
        let x_897 : vec2<f32> = ((-(x_891) * x_893) + vec2<f32>(x_895.x, x_895.y));
        let x_898 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_900, vec2<f32>(0.0f, 0.0f));
        let x_903 : vec2<f32> = u_xlat42;
        let x_905 : vec2<f32> = u_xlat42;
        let x_907 : vec4<f32> = u_xlat5;
        let x_909 : vec2<f32> = ((-(x_903) * x_905) + vec2<f32>(x_907.y, x_907.w));
        let x_910 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_909.x, x_910.y, x_909.y);
        let x_912 : vec4<f32> = u_xlat6;
        let x_915 : vec2<f32> = (vec2<f32>(x_912.x, x_912.y) + vec2<f32>(2.0f, 2.0f));
        let x_916 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec3<f32> = u_xlat23;
        let x_920 : vec2<f32> = (vec2<f32>(x_918.x, x_918.z) + vec2<f32>(2.0f, 2.0f));
        let x_921 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_921.x, x_920.x, x_921.z, x_920.y);
        let x_924 : f32 = u_xlat5.y;
        u_xlat8.z = (x_924 * 0.081632003f);
        let x_928 : vec4<f32> = u_xlat5;
        let x_931 : vec3<f32> = (vec3<f32>(x_928.z, x_928.x, x_928.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_932 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
        let x_934 : vec4<f32> = u_xlat6;
        let x_937 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_938 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_941 : f32 = u_xlat9.y;
        u_xlat8.x = x_941;
        let x_943 : vec2<f32> = u_xlat40;
        let x_950 : vec2<f32> = ((vec2<f32>(x_943.x, x_943.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_951 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_951.x, x_950.x, x_951.z, x_950.y);
        let x_953 : vec2<f32> = u_xlat40;
        let x_957 : vec2<f32> = ((vec2<f32>(x_953.x, x_953.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_958 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_957.x, x_958.y, x_957.y, x_958.w);
        let x_961 : f32 = u_xlat5.x;
        u_xlat6.y = x_961;
        let x_964 : f32 = u_xlat7.y;
        u_xlat6.w = x_964;
        let x_966 : vec4<f32> = u_xlat6;
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_966 + x_967);
        let x_969 : vec2<f32> = u_xlat40;
        let x_972 : vec2<f32> = ((vec2<f32>(x_969.y, x_969.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_973 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_973.x, x_972.x, x_973.z, x_972.y);
        let x_975 : vec2<f32> = u_xlat40;
        let x_978 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_979 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_978.x, x_979.y, x_978.y, x_979.w);
        let x_982 : f32 = u_xlat5.y;
        u_xlat7.y = x_982;
        let x_984 : vec4<f32> = u_xlat7;
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_984 + x_985);
        let x_987 : vec4<f32> = u_xlat6;
        let x_988 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_987 / x_988);
        let x_990 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_990 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_996 : vec4<f32> = u_xlat7;
        let x_997 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_996 / x_997);
        let x_999 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_999 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1004 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1001.w, x_1001.x, x_1001.y, x_1001.z) * vec4<f32>(x_1004.x, x_1004.x, x_1004.x, x_1004.x));
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1007.x, x_1007.w, x_1007.y, x_1007.z) * vec4<f32>(x_1010.y, x_1010.y, x_1010.y, x_1010.y));
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1014 : vec3<f32> = vec3<f32>(x_1013.y, x_1013.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1014.z);
        let x_1018 : f32 = u_xlat7.x;
        u_xlat9.y = x_1018;
        let x_1020 : vec4<f32> = u_xlat4;
        let x_1023 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) * vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y)) + vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1026.y));
        let x_1029 : vec4<f32> = u_xlat4;
        let x_1032 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.w, x_1035.y));
        let x_1039 : f32 = u_xlat9.y;
        u_xlat6.y = x_1039;
        let x_1042 : f32 = u_xlat7.z;
        u_xlat9.y = x_1042;
        let x_1044 : vec4<f32> = u_xlat4;
        let x_1047 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1050.y));
        let x_1053 : vec4<f32> = u_xlat4;
        let x_1056 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1059 : vec4<f32> = u_xlat9;
        let x_1061 : vec2<f32> = ((vec2<f32>(x_1053.x, x_1053.y) * vec2<f32>(x_1056.x, x_1056.y)) + vec2<f32>(x_1059.w, x_1059.y));
        let x_1062 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1065 : f32 = u_xlat9.y;
        u_xlat6.z = x_1065;
        let x_1068 : vec4<f32> = u_xlat4;
        let x_1071 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y) * vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y)) + vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.z));
        let x_1078 : f32 = u_xlat7.w;
        u_xlat9.y = x_1078;
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) * vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y)) + vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.y));
        let x_1091 : vec4<f32> = u_xlat4;
        let x_1094 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(x_1097.w, x_1097.y));
        let x_1101 : f32 = u_xlat9.y;
        u_xlat6.w = x_1101;
        let x_1104 : vec4<f32> = u_xlat4;
        let x_1107 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1107.x, x_1107.y)) + vec2<f32>(x_1110.x, x_1110.w));
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1114 : vec3<f32> = vec3<f32>(x_1113.x, x_1113.z, x_1113.w);
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1114.x, x_1115.y, x_1114.y, x_1114.z);
        let x_1117 : vec4<f32> = u_xlat4;
        let x_1120 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.y));
        let x_1127 : vec4<f32> = u_xlat4;
        let x_1130 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.w, x_1133.y));
        let x_1137 : f32 = u_xlat6.x;
        u_xlat7.x = x_1137;
        let x_1139 : vec4<f32> = u_xlat4;
        let x_1142 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat7;
        let x_1147 : vec2<f32> = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(x_1142.x, x_1142.y)) + vec2<f32>(x_1145.x, x_1145.y));
        let x_1148 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1147.x, x_1147.y, x_1148.z, x_1148.w);
        let x_1151 : vec4<f32> = u_xlat5;
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1151.x, x_1151.x, x_1151.x, x_1151.x) * x_1153);
        let x_1156 : vec4<f32> = u_xlat5;
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1156.y, x_1156.y, x_1156.y, x_1156.y) * x_1158);
        let x_1161 : vec4<f32> = u_xlat5;
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1161.z, x_1161.z, x_1161.z, x_1161.z) * x_1163);
        let x_1165 : vec4<f32> = u_xlat5;
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1165.w, x_1165.w, x_1165.w, x_1165.w) * x_1167);
        let x_1170 : vec4<f32> = u_xlat10;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.x, x_1170.y);
        let x_1173 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1180 : vec3<f32> = txVec13;
        let x_1182 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1180.xy, x_1180.z);
        u_xlat57 = x_1182;
        let x_1184 : vec4<f32> = u_xlat10;
        let x_1185 : vec2<f32> = vec2<f32>(x_1184.z, x_1184.w);
        let x_1187 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
        let x_1194 : vec3<f32> = txVec14;
        let x_1196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1194.xy, x_1194.z);
        u_xlat6.x = x_1196;
        let x_1199 : f32 = u_xlat6.x;
        let x_1201 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1199 * x_1201);
        let x_1205 : f32 = u_xlat15.x;
        let x_1206 : f32 = u_xlat57;
        let x_1209 : f32 = u_xlat6.x;
        u_xlat57 = ((x_1205 * x_1206) + x_1209);
        let x_1212 : vec2<f32> = u_xlat40;
        let x_1214 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec15;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1221.xy, x_1221.z);
        u_xlat40.x = x_1223;
        let x_1226 : f32 = u_xlat15.z;
        let x_1228 : f32 = u_xlat40.x;
        let x_1230 : f32 = u_xlat57;
        u_xlat57 = ((x_1226 * x_1228) + x_1230);
        let x_1233 : vec4<f32> = u_xlat13;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.x, x_1233.y);
        let x_1236 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec16;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1243.xy, x_1243.z);
        u_xlat40.x = x_1245;
        let x_1248 : f32 = u_xlat15.w;
        let x_1250 : f32 = u_xlat40.x;
        let x_1252 : f32 = u_xlat57;
        u_xlat57 = ((x_1248 * x_1250) + x_1252);
        let x_1255 : vec4<f32> = u_xlat11;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec17;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat40.x = x_1267;
        let x_1270 : f32 = u_xlat16.x;
        let x_1272 : f32 = u_xlat40.x;
        let x_1274 : f32 = u_xlat57;
        u_xlat57 = ((x_1270 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.z, x_1277.w);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec18;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat40.x = x_1289;
        let x_1292 : f32 = u_xlat16.y;
        let x_1294 : f32 = u_xlat40.x;
        let x_1296 : f32 = u_xlat57;
        u_xlat57 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat12;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec19;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat40.x = x_1311;
        let x_1314 : f32 = u_xlat16.z;
        let x_1316 : f32 = u_xlat40.x;
        let x_1318 : f32 = u_xlat57;
        u_xlat57 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec4<f32> = u_xlat13;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec20;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat40.x = x_1333;
        let x_1336 : f32 = u_xlat16.w;
        let x_1338 : f32 = u_xlat40.x;
        let x_1340 : f32 = u_xlat57;
        u_xlat57 = ((x_1336 * x_1338) + x_1340);
        let x_1343 : vec4<f32> = u_xlat14;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.x, x_1343.y);
        let x_1346 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec21;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1353.xy, x_1353.z);
        u_xlat40.x = x_1355;
        let x_1358 : f32 = u_xlat17.x;
        let x_1360 : f32 = u_xlat40.x;
        let x_1362 : f32 = u_xlat57;
        u_xlat57 = ((x_1358 * x_1360) + x_1362);
        let x_1365 : vec4<f32> = u_xlat14;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.z, x_1365.w);
        let x_1368 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec22;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1375.xy, x_1375.z);
        u_xlat40.x = x_1377;
        let x_1380 : f32 = u_xlat17.y;
        let x_1382 : f32 = u_xlat40.x;
        let x_1384 : f32 = u_xlat57;
        u_xlat57 = ((x_1380 * x_1382) + x_1384);
        let x_1387 : vec2<f32> = u_xlat24;
        let x_1389 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec23;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1396.xy, x_1396.z);
        u_xlat40.x = x_1398;
        let x_1401 : f32 = u_xlat17.z;
        let x_1403 : f32 = u_xlat40.x;
        let x_1405 : f32 = u_xlat57;
        u_xlat57 = ((x_1401 * x_1403) + x_1405);
        let x_1408 : vec2<f32> = u_xlat48;
        let x_1410 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec24;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat40.x = x_1419;
        let x_1422 : f32 = u_xlat17.w;
        let x_1424 : f32 = u_xlat40.x;
        let x_1426 : f32 = u_xlat57;
        u_xlat57 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat9;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec25;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat40.x = x_1441;
        let x_1444 : f32 = u_xlat5.x;
        let x_1446 : f32 = u_xlat40.x;
        let x_1448 : f32 = u_xlat57;
        u_xlat57 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec26;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat40.x = x_1463;
        let x_1466 : f32 = u_xlat5.y;
        let x_1468 : f32 = u_xlat40.x;
        let x_1470 : f32 = u_xlat57;
        u_xlat57 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec2<f32> = u_xlat43;
        let x_1475 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec27;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat40.x = x_1484;
        let x_1487 : f32 = u_xlat5.z;
        let x_1489 : f32 = u_xlat40.x;
        let x_1491 : f32 = u_xlat57;
        u_xlat57 = ((x_1487 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat4;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.x, x_1494.y);
        let x_1497 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec28;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat4.x = x_1506;
        let x_1509 : f32 = u_xlat5.w;
        let x_1511 : f32 = u_xlat4.x;
        let x_1513 : f32 = u_xlat57;
        u_xlat56 = ((x_1509 * x_1511) + x_1513);
      }
    }
  } else {
    let x_1517 : vec4<f32> = vs_TEXCOORD6;
    let x_1518 : vec2<f32> = vec2<f32>(x_1517.x, x_1517.y);
    let x_1520 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
    let x_1527 : vec3<f32> = txVec29;
    let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1527.xy, x_1527.z);
    u_xlat56 = x_1529;
  }
  let x_1531 : f32 = x_271.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1531) + 1.0f);
  let x_1534 : f32 = u_xlat56;
  let x_1536 : f32 = x_271.x_MainLightShadowParams.x;
  let x_1538 : f32 = u_xlat57;
  u_xlat56 = ((x_1534 * x_1536) + x_1538);
  let x_1541 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (0.0f >= x_1541);
  let x_1545 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1545 >= 1.0f);
  let x_1547 : bool = u_xlatb57;
  let x_1548 : bool = u_xlatb4;
  u_xlatb57 = (x_1547 | x_1548);
  let x_1550 : bool = u_xlatb57;
  let x_1551 : f32 = u_xlat56;
  u_xlat56 = select(x_1551, 1.0f, x_1550);
  let x_1554 : vec4<f32> = vs_TEXCOORD2;
  let x_1558 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1560 : vec3<f32> = (vec3<f32>(x_1554.x, x_1554.y, x_1554.z) + -(x_1558));
  let x_1561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
  let x_1563 : vec4<f32> = u_xlat4;
  let x_1565 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_1563.x, x_1563.y, x_1563.z), vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
  let x_1568 : f32 = u_xlat57;
  let x_1570 : f32 = x_271.x_MainLightShadowParams.z;
  let x_1573 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1568 * x_1570) + x_1573);
  let x_1575 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1575, 0.0f, 1.0f);
  let x_1577 : f32 = u_xlat56;
  u_xlat4.x = (-(x_1577) + 1.0f);
  let x_1581 : f32 = u_xlat57;
  let x_1583 : f32 = u_xlat4.x;
  let x_1585 : f32 = u_xlat56;
  u_xlat56 = ((x_1581 * x_1583) + x_1585);
  let x_1593 : f32 = x_1591.x_MainLightCookieTextureFormat;
  u_xlatb57 = !((x_1593 == -1.0f));
  let x_1595 : bool = u_xlatb57;
  if (x_1595) {
    let x_1598 : vec4<f32> = vs_TEXCOORD2;
    let x_1601 : vec4<f32> = x_1591.x_MainLightWorldToLight[1i];
    let x_1603 : vec2<f32> = (vec2<f32>(x_1598.y, x_1598.y) * vec2<f32>(x_1601.x, x_1601.y));
    let x_1604 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1603.x, x_1603.y, x_1604.z, x_1604.w);
    let x_1607 : vec4<f32> = x_1591.x_MainLightWorldToLight[0i];
    let x_1609 : vec4<f32> = vs_TEXCOORD2;
    let x_1612 : vec4<f32> = u_xlat4;
    let x_1614 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.y) * vec2<f32>(x_1609.x, x_1609.x)) + vec2<f32>(x_1612.x, x_1612.y));
    let x_1615 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
    let x_1618 : vec4<f32> = x_1591.x_MainLightWorldToLight[2i];
    let x_1620 : vec4<f32> = vs_TEXCOORD2;
    let x_1623 : vec4<f32> = u_xlat4;
    let x_1625 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1620.z, x_1620.z)) + vec2<f32>(x_1623.x, x_1623.y));
    let x_1626 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1625.x, x_1625.y, x_1626.z, x_1626.w);
    let x_1628 : vec4<f32> = u_xlat4;
    let x_1632 : vec4<f32> = x_1591.x_MainLightWorldToLight[3i];
    let x_1634 : vec2<f32> = (vec2<f32>(x_1628.x, x_1628.y) + vec2<f32>(x_1632.x, x_1632.y));
    let x_1635 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
    let x_1637 : vec4<f32> = u_xlat4;
    let x_1640 : vec2<f32> = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1641 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
    let x_1648 : vec4<f32> = u_xlat4;
    let x_1651 : f32 = x_43.x_GlobalMipBias.x;
    let x_1652 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1648.x, x_1648.y), x_1651);
    u_xlat4 = x_1652;
    let x_1657 : f32 = x_1591.x_MainLightCookieTextureFormat;
    let x_1659 : f32 = x_1591.x_MainLightCookieTextureFormat;
    let x_1661 : f32 = x_1591.x_MainLightCookieTextureFormat;
    let x_1663 : f32 = x_1591.x_MainLightCookieTextureFormat;
    let x_1664 : vec4<f32> = vec4<f32>(x_1657, x_1659, x_1661, x_1663);
    let x_1672 : vec4<bool> = (vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1664.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1672.x, x_1672.y);
    let x_1675 : bool = u_xlatb5.y;
    if (x_1675) {
      let x_1680 : f32 = u_xlat4.w;
      x_1676 = x_1680;
    } else {
      let x_1683 : f32 = u_xlat4.x;
      x_1676 = x_1683;
    }
    let x_1684 : f32 = x_1676;
    u_xlat57 = x_1684;
    let x_1686 : bool = u_xlatb5.x;
    if (x_1686) {
      let x_1690 : vec4<f32> = u_xlat4;
      x_1687 = vec3<f32>(x_1690.x, x_1690.y, x_1690.z);
    } else {
      let x_1693 : f32 = u_xlat57;
      x_1687 = vec3<f32>(x_1693, x_1693, x_1693);
    }
    let x_1695 : vec3<f32> = x_1687;
    let x_1696 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1702 : vec4<f32> = u_xlat4;
  let x_1705 : vec4<f32> = x_43.x_MainLightColor;
  let x_1707 : vec3<f32> = (vec3<f32>(x_1702.x, x_1702.y, x_1702.z) * vec3<f32>(x_1705.x, x_1705.y, x_1705.z));
  let x_1708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1710 : f32 = u_xlat55;
  let x_1712 : vec4<f32> = u_xlat4;
  let x_1714 : vec3<f32> = (vec3<f32>(x_1710, x_1710, x_1710) * vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
  let x_1715 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
  let x_1717 : f32 = u_xlat54;
  let x_1719 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1717, x_1717, x_1717) * x_1719);
  let x_1721 : f32 = u_xlat56;
  let x_1727 : f32 = x_1725.unity_LightData.z;
  u_xlat54 = (x_1721 * x_1727);
  let x_1729 : f32 = u_xlat54;
  let x_1731 : vec4<f32> = u_xlat4;
  let x_1733 : vec3<f32> = (vec3<f32>(x_1729, x_1729, x_1729) * vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
  let x_1734 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
  let x_1736 : vec3<f32> = u_xlat2;
  let x_1738 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat54 = dot(x_1736, vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
  let x_1741 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1741, 0.0f, 1.0f);
  let x_1743 : f32 = u_xlat54;
  let x_1745 : vec4<f32> = u_xlat4;
  let x_1747 : vec3<f32> = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
  let x_1748 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
  let x_1750 : vec4<f32> = u_xlat1;
  let x_1752 : vec4<f32> = u_xlat4;
  let x_1754 : vec3<f32> = (vec3<f32>(x_1750.x, x_1750.y, x_1750.z) * vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
  let x_1755 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
  let x_1758 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1760 : f32 = x_1725.unity_LightData.y;
  u_xlat54 = min(x_1758, x_1760);
  let x_1764 : f32 = u_xlat54;
  u_xlatu54 = bitcast<u32>(i32(x_1764));
  let x_1768 : f32 = x_1591.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1770 : f32 = x_1591.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1772 : f32 = x_1591.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1774 : f32 = x_1591.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1775 : vec4<f32> = vec4<f32>(x_1768, x_1770, x_1772, x_1774);
  let x_1781 : vec4<bool> = (vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1775.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1781.x, x_1781.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1792 : u32 = u_xlatu_loop_1;
    let x_1793 : u32 = u_xlatu54;
    if ((x_1792 < x_1793)) {
    } else {
      break;
    }
    let x_1796 : u32 = u_xlatu_loop_1;
    u_xlatu57 = (x_1796 >> 2u);
    let x_1800 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1800 & 3u));
    let x_1803 : u32 = u_xlatu57;
    let x_1806 : vec4<f32> = x_1725.unity_LightIndices[bitcast<i32>(x_1803)];
    let x_1816 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1821 : vec4<u32> = indexable[x_1816];
    u_xlat57 = dot(x_1806, bitcast<vec4<f32>>(x_1821));
    let x_1824 : f32 = u_xlat57;
    u_xlatu57 = bitcast<u32>(i32(x_1824));
    let x_1827 : vec4<f32> = vs_TEXCOORD2;
    let x_1840 : u32 = u_xlatu57;
    let x_1843 : vec4<f32> = x_1839.x_AdditionalLightsPosition[bitcast<i32>(x_1840)];
    let x_1846 : u32 = u_xlatu57;
    let x_1849 : vec4<f32> = x_1839.x_AdditionalLightsPosition[bitcast<i32>(x_1846)];
    let x_1851 : vec3<f32> = ((-(vec3<f32>(x_1827.x, x_1827.y, x_1827.z)) * vec3<f32>(x_1843.w, x_1843.w, x_1843.w)) + vec3<f32>(x_1849.x, x_1849.y, x_1849.z));
    let x_1852 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1852.w);
    let x_1855 : vec4<f32> = u_xlat7;
    let x_1857 : vec4<f32> = u_xlat7;
    u_xlat58 = dot(vec3<f32>(x_1855.x, x_1855.y, x_1855.z), vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
    let x_1860 : f32 = u_xlat58;
    u_xlat58 = max(x_1860, 6.10351562e-05f);
    let x_1864 : f32 = u_xlat58;
    u_xlat41.x = inverseSqrt(x_1864);
    let x_1867 : vec2<f32> = u_xlat41;
    let x_1869 : vec4<f32> = u_xlat7;
    let x_1871 : vec3<f32> = (vec3<f32>(x_1867.x, x_1867.x, x_1867.x) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
    let x_1872 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
    let x_1874 : f32 = u_xlat58;
    u_xlat41.x = (1.0f / x_1874);
    let x_1877 : f32 = u_xlat58;
    let x_1878 : u32 = u_xlatu57;
    let x_1881 : f32 = x_1839.x_AdditionalLightsAttenuation[bitcast<i32>(x_1878)].x;
    u_xlat58 = (x_1877 * x_1881);
    let x_1883 : f32 = u_xlat58;
    let x_1885 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1883) * x_1885) + 1.0f);
    let x_1888 : f32 = u_xlat58;
    u_xlat58 = max(x_1888, 0.0f);
    let x_1890 : f32 = u_xlat58;
    let x_1891 : f32 = u_xlat58;
    u_xlat58 = (x_1890 * x_1891);
    let x_1893 : f32 = u_xlat58;
    let x_1895 : f32 = u_xlat41.x;
    u_xlat58 = (x_1893 * x_1895);
    let x_1897 : u32 = u_xlatu57;
    let x_1900 : vec4<f32> = x_1839.x_AdditionalLightsSpotDir[bitcast<i32>(x_1897)];
    let x_1902 : vec4<f32> = u_xlat7;
    u_xlat41.x = dot(vec3<f32>(x_1900.x, x_1900.y, x_1900.z), vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
    let x_1907 : f32 = u_xlat41.x;
    let x_1908 : u32 = u_xlatu57;
    let x_1911 : f32 = x_1839.x_AdditionalLightsAttenuation[bitcast<i32>(x_1908)].z;
    let x_1913 : u32 = u_xlatu57;
    let x_1916 : f32 = x_1839.x_AdditionalLightsAttenuation[bitcast<i32>(x_1913)].w;
    u_xlat41.x = ((x_1907 * x_1911) + x_1916);
    let x_1920 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_1920, 0.0f, 1.0f);
    let x_1924 : f32 = u_xlat41.x;
    let x_1926 : f32 = u_xlat41.x;
    u_xlat41.x = (x_1924 * x_1926);
    let x_1929 : f32 = u_xlat58;
    let x_1931 : f32 = u_xlat41.x;
    u_xlat58 = (x_1929 * x_1931);
    let x_1934 : u32 = u_xlatu57;
    u_xlatu41 = (x_1934 >> 5u);
    let x_1937 : u32 = u_xlatu57;
    u_xlati59 = (1i << bitcast<u32>((bitcast<i32>(x_1937) & 31i)));
    let x_1943 : i32 = u_xlati59;
    let x_1945 : u32 = u_xlatu41;
    let x_1948 : f32 = x_1591.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1945)].el;
    u_xlati41 = bitcast<i32>((bitcast<u32>(x_1943) & bitcast<u32>(x_1948)));
    let x_1952 : i32 = u_xlati41;
    if ((x_1952 != 0i)) {
      let x_1962 : u32 = u_xlatu57;
      let x_1965 : f32 = x_1961.x_AdditionalLightsLightTypes[bitcast<i32>(x_1962)].el;
      u_xlati41 = i32(x_1965);
      let x_1967 : i32 = u_xlati41;
      u_xlati59 = select(1i, 0i, (x_1967 != 0i));
      let x_1971 : u32 = u_xlatu57;
      u_xlati60 = (bitcast<i32>(x_1971) << bitcast<u32>(2i));
      let x_1974 : i32 = u_xlati59;
      if ((x_1974 != 0i)) {
        let x_1978 : vec4<f32> = vs_TEXCOORD2;
        let x_1980 : i32 = u_xlati60;
        let x_1983 : i32 = u_xlati60;
        let x_1987 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_1980 + 1i) / 4i)][((x_1983 + 1i) % 4i)];
        let x_1989 : vec3<f32> = (vec3<f32>(x_1978.y, x_1978.y, x_1978.y) * vec3<f32>(x_1987.x, x_1987.y, x_1987.w));
        let x_1990 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
        let x_1992 : i32 = u_xlati60;
        let x_1994 : i32 = u_xlati60;
        let x_1997 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[(x_1992 / 4i)][(x_1994 % 4i)];
        let x_1999 : vec4<f32> = vs_TEXCOORD2;
        let x_2002 : vec4<f32> = u_xlat8;
        let x_2004 : vec3<f32> = ((vec3<f32>(x_1997.x, x_1997.y, x_1997.w) * vec3<f32>(x_1999.x, x_1999.x, x_1999.x)) + vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
        let x_2005 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
        let x_2007 : i32 = u_xlati60;
        let x_2010 : i32 = u_xlati60;
        let x_2014 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_2007 + 2i) / 4i)][((x_2010 + 2i) % 4i)];
        let x_2016 : vec4<f32> = vs_TEXCOORD2;
        let x_2019 : vec4<f32> = u_xlat8;
        let x_2021 : vec3<f32> = ((vec3<f32>(x_2014.x, x_2014.y, x_2014.w) * vec3<f32>(x_2016.z, x_2016.z, x_2016.z)) + vec3<f32>(x_2019.x, x_2019.y, x_2019.z));
        let x_2022 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
        let x_2024 : vec4<f32> = u_xlat8;
        let x_2026 : i32 = u_xlati60;
        let x_2029 : i32 = u_xlati60;
        let x_2033 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_2026 + 3i) / 4i)][((x_2029 + 3i) % 4i)];
        let x_2035 : vec3<f32> = (vec3<f32>(x_2024.x, x_2024.y, x_2024.z) + vec3<f32>(x_2033.x, x_2033.y, x_2033.w));
        let x_2036 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
        let x_2038 : vec4<f32> = u_xlat8;
        let x_2040 : vec4<f32> = u_xlat8;
        let x_2042 : vec2<f32> = (vec2<f32>(x_2038.x, x_2038.y) / vec2<f32>(x_2040.z, x_2040.z));
        let x_2043 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2042.x, x_2042.y, x_2043.z, x_2043.w);
        let x_2045 : vec4<f32> = u_xlat8;
        let x_2048 : vec2<f32> = ((vec2<f32>(x_2045.x, x_2045.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2049 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2048.x, x_2048.y, x_2049.z, x_2049.w);
        let x_2051 : vec4<f32> = u_xlat8;
        let x_2055 : vec2<f32> = clamp(vec2<f32>(x_2051.x, x_2051.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2056 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
        let x_2058 : u32 = u_xlatu57;
        let x_2061 : vec4<f32> = x_1961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2058)];
        let x_2063 : vec4<f32> = u_xlat8;
        let x_2066 : u32 = u_xlatu57;
        let x_2069 : vec4<f32> = x_1961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2066)];
        let x_2071 : vec2<f32> = ((vec2<f32>(x_2061.x, x_2061.y) * vec2<f32>(x_2063.x, x_2063.y)) + vec2<f32>(x_2069.z, x_2069.w));
        let x_2072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2071.x, x_2071.y, x_2072.z, x_2072.w);
      } else {
        let x_2076 : i32 = u_xlati41;
        u_xlatb41 = (x_2076 == 1i);
        let x_2078 : bool = u_xlatb41;
        u_xlati41 = select(0i, 1i, x_2078);
        let x_2080 : i32 = u_xlati41;
        if ((x_2080 != 0i)) {
          let x_2084 : vec4<f32> = vs_TEXCOORD2;
          let x_2086 : i32 = u_xlati60;
          let x_2089 : i32 = u_xlati60;
          let x_2093 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_2086 + 1i) / 4i)][((x_2089 + 1i) % 4i)];
          u_xlat41 = (vec2<f32>(x_2084.y, x_2084.y) * vec2<f32>(x_2093.x, x_2093.y));
          let x_2096 : i32 = u_xlati60;
          let x_2098 : i32 = u_xlati60;
          let x_2101 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[(x_2096 / 4i)][(x_2098 % 4i)];
          let x_2103 : vec4<f32> = vs_TEXCOORD2;
          let x_2106 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2101.x, x_2101.y) * vec2<f32>(x_2103.x, x_2103.x)) + x_2106);
          let x_2108 : i32 = u_xlati60;
          let x_2111 : i32 = u_xlati60;
          let x_2115 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_2108 + 2i) / 4i)][((x_2111 + 2i) % 4i)];
          let x_2117 : vec4<f32> = vs_TEXCOORD2;
          let x_2120 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2115.x, x_2115.y) * vec2<f32>(x_2117.z, x_2117.z)) + x_2120);
          let x_2122 : vec2<f32> = u_xlat41;
          let x_2123 : i32 = u_xlati60;
          let x_2126 : i32 = u_xlati60;
          let x_2130 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_2123 + 3i) / 4i)][((x_2126 + 3i) % 4i)];
          u_xlat41 = (x_2122 + vec2<f32>(x_2130.x, x_2130.y));
          let x_2133 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2133 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2136 : vec2<f32> = u_xlat41;
          u_xlat41 = fract(x_2136);
          let x_2138 : u32 = u_xlatu57;
          let x_2141 : vec4<f32> = x_1961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2138)];
          let x_2143 : vec2<f32> = u_xlat41;
          let x_2145 : u32 = u_xlatu57;
          let x_2148 : vec4<f32> = x_1961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2145)];
          let x_2150 : vec2<f32> = ((vec2<f32>(x_2141.x, x_2141.y) * x_2143) + vec2<f32>(x_2148.z, x_2148.w));
          let x_2151 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2150.x, x_2150.y, x_2151.z, x_2151.w);
        } else {
          let x_2154 : vec4<f32> = vs_TEXCOORD2;
          let x_2156 : i32 = u_xlati60;
          let x_2159 : i32 = u_xlati60;
          let x_2163 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_2156 + 1i) / 4i)][((x_2159 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2154.y, x_2154.y, x_2154.y, x_2154.y) * x_2163);
          let x_2165 : i32 = u_xlati60;
          let x_2167 : i32 = u_xlati60;
          let x_2170 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[(x_2165 / 4i)][(x_2167 % 4i)];
          let x_2171 : vec4<f32> = vs_TEXCOORD2;
          let x_2174 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2170 * vec4<f32>(x_2171.x, x_2171.x, x_2171.x, x_2171.x)) + x_2174);
          let x_2176 : i32 = u_xlati60;
          let x_2179 : i32 = u_xlati60;
          let x_2183 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_2176 + 2i) / 4i)][((x_2179 + 2i) % 4i)];
          let x_2184 : vec4<f32> = vs_TEXCOORD2;
          let x_2187 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2183 * vec4<f32>(x_2184.z, x_2184.z, x_2184.z, x_2184.z)) + x_2187);
          let x_2189 : vec4<f32> = u_xlat9;
          let x_2190 : i32 = u_xlati60;
          let x_2193 : i32 = u_xlati60;
          let x_2197 : vec4<f32> = x_1961.x_AdditionalLightsWorldToLights[((x_2190 + 3i) / 4i)][((x_2193 + 3i) % 4i)];
          u_xlat9 = (x_2189 + x_2197);
          let x_2199 : vec4<f32> = u_xlat9;
          let x_2201 : vec4<f32> = u_xlat9;
          let x_2203 : vec3<f32> = (vec3<f32>(x_2199.x, x_2199.y, x_2199.z) / vec3<f32>(x_2201.w, x_2201.w, x_2201.w));
          let x_2204 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2203.x, x_2203.y, x_2203.z, x_2204.w);
          let x_2206 : vec4<f32> = u_xlat9;
          let x_2208 : vec4<f32> = u_xlat9;
          u_xlat41.x = dot(vec3<f32>(x_2206.x, x_2206.y, x_2206.z), vec3<f32>(x_2208.x, x_2208.y, x_2208.z));
          let x_2213 : f32 = u_xlat41.x;
          u_xlat41.x = inverseSqrt(x_2213);
          let x_2216 : vec2<f32> = u_xlat41;
          let x_2218 : vec4<f32> = u_xlat9;
          let x_2220 : vec3<f32> = (vec3<f32>(x_2216.x, x_2216.x, x_2216.x) * vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
          let x_2221 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
          let x_2223 : vec4<f32> = u_xlat9;
          u_xlat41.x = dot(abs(vec3<f32>(x_2223.x, x_2223.y, x_2223.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2230 : f32 = u_xlat41.x;
          u_xlat41.x = max(x_2230, 0.000001f);
          let x_2235 : f32 = u_xlat41.x;
          u_xlat41.x = (1.0f / x_2235);
          let x_2238 : vec2<f32> = u_xlat41;
          let x_2240 : vec4<f32> = u_xlat9;
          let x_2242 : vec3<f32> = (vec3<f32>(x_2238.x, x_2238.x, x_2238.x) * vec3<f32>(x_2240.z, x_2240.x, x_2240.y));
          let x_2243 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
          let x_2246 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2246);
          let x_2250 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2250, 0.0f, 1.0f);
          let x_2254 : vec4<f32> = u_xlat10;
          let x_2257 : vec4<bool> = (vec4<f32>(x_2254.y, x_2254.z, x_2254.y, x_2254.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb44 = vec2<bool>(x_2257.x, x_2257.y);
          let x_2261 : bool = u_xlatb44.x;
          if (x_2261) {
            let x_2266 : f32 = u_xlat10.x;
            x_2262 = x_2266;
          } else {
            let x_2269 : f32 = u_xlat10.x;
            x_2262 = -(x_2269);
          }
          let x_2271 : f32 = x_2262;
          u_xlat44.x = x_2271;
          let x_2274 : bool = u_xlatb44.y;
          if (x_2274) {
            let x_2279 : f32 = u_xlat10.x;
            x_2275 = x_2279;
          } else {
            let x_2282 : f32 = u_xlat10.x;
            x_2275 = -(x_2282);
          }
          let x_2284 : f32 = x_2275;
          u_xlat44.y = x_2284;
          let x_2286 : vec4<f32> = u_xlat9;
          let x_2288 : vec2<f32> = u_xlat41;
          let x_2291 : vec2<f32> = u_xlat44;
          u_xlat41 = ((vec2<f32>(x_2286.x, x_2286.y) * vec2<f32>(x_2288.x, x_2288.x)) + x_2291);
          let x_2293 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2293 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2296 : vec2<f32> = u_xlat41;
          u_xlat41 = clamp(x_2296, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2300 : u32 = u_xlatu57;
          let x_2303 : vec4<f32> = x_1961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2300)];
          let x_2305 : vec2<f32> = u_xlat41;
          let x_2307 : u32 = u_xlatu57;
          let x_2310 : vec4<f32> = x_1961.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2307)];
          let x_2312 : vec2<f32> = ((vec2<f32>(x_2303.x, x_2303.y) * x_2305) + vec2<f32>(x_2310.z, x_2310.w));
          let x_2313 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2312.x, x_2312.y, x_2313.z, x_2313.w);
        }
      }
      let x_2320 : vec4<f32> = u_xlat8;
      let x_2323 : f32 = x_43.x_GlobalMipBias.x;
      let x_2324 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2320.x, x_2320.y), x_2323);
      u_xlat8 = x_2324;
      let x_2326 : bool = u_xlatb5.y;
      if (x_2326) {
        let x_2331 : f32 = u_xlat8.w;
        x_2327 = x_2331;
      } else {
        let x_2334 : f32 = u_xlat8.x;
        x_2327 = x_2334;
      }
      let x_2335 : f32 = x_2327;
      u_xlat41.x = x_2335;
      let x_2338 : bool = u_xlatb5.x;
      if (x_2338) {
        let x_2342 : vec4<f32> = u_xlat8;
        x_2339 = vec3<f32>(x_2342.x, x_2342.y, x_2342.z);
      } else {
        let x_2345 : vec2<f32> = u_xlat41;
        x_2339 = vec3<f32>(x_2345.x, x_2345.x, x_2345.x);
      }
      let x_2347 : vec3<f32> = x_2339;
      let x_2348 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2354 : vec4<f32> = u_xlat8;
    let x_2356 : u32 = u_xlatu57;
    let x_2359 : vec4<f32> = x_1839.x_AdditionalLightsColor[bitcast<i32>(x_2356)];
    let x_2361 : vec3<f32> = (vec3<f32>(x_2354.x, x_2354.y, x_2354.z) * vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
    let x_2362 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
    let x_2364 : f32 = u_xlat55;
    let x_2366 : vec4<f32> = u_xlat8;
    let x_2368 : vec3<f32> = (vec3<f32>(x_2364, x_2364, x_2364) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
    let x_2369 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
    let x_2371 : f32 = u_xlat58;
    let x_2373 : vec4<f32> = u_xlat8;
    let x_2375 : vec3<f32> = (vec3<f32>(x_2371, x_2371, x_2371) * vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
    let x_2376 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
    let x_2378 : vec3<f32> = u_xlat2;
    let x_2379 : vec4<f32> = u_xlat7;
    u_xlat57 = dot(x_2378, vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
    let x_2382 : f32 = u_xlat57;
    u_xlat57 = clamp(x_2382, 0.0f, 1.0f);
    let x_2384 : f32 = u_xlat57;
    let x_2386 : vec4<f32> = u_xlat8;
    let x_2388 : vec3<f32> = (vec3<f32>(x_2384, x_2384, x_2384) * vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
    let x_2389 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
    let x_2391 : vec4<f32> = u_xlat7;
    let x_2393 : vec4<f32> = u_xlat1;
    let x_2396 : vec4<f32> = u_xlat6;
    let x_2398 : vec3<f32> = ((vec3<f32>(x_2391.x, x_2391.y, x_2391.z) * vec3<f32>(x_2393.x, x_2393.y, x_2393.z)) + vec3<f32>(x_2396.x, x_2396.y, x_2396.z));
    let x_2399 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);

    continuing {
      let x_2401 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2401 + bitcast<u32>(1i));
    }
  }
  let x_2403 : vec3<f32> = u_xlat3;
  let x_2404 : vec4<f32> = u_xlat1;
  let x_2407 : vec4<f32> = u_xlat4;
  let x_2409 : vec3<f32> = ((x_2403 * vec3<f32>(x_2404.x, x_2404.y, x_2404.z)) + vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
  let x_2412 : vec4<f32> = u_xlat6;
  let x_2414 : vec4<f32> = u_xlat1;
  let x_2416 : vec3<f32> = (vec3<f32>(x_2412.x, x_2412.y, x_2412.z) + vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
  let x_2417 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
  let x_2420 : f32 = u_xlat0.x;
  let x_2422 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2420 * -(x_2422));
  let x_2427 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2427);
  let x_2430 : vec4<f32> = u_xlat1;
  let x_2434 : vec4<f32> = x_43.unity_FogColor;
  let x_2437 : vec3<f32> = (vec3<f32>(x_2430.x, x_2430.y, x_2430.z) + -(vec3<f32>(x_2434.x, x_2434.y, x_2434.z)));
  let x_2438 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
  let x_2442 : vec4<f32> = u_xlat0;
  let x_2444 : vec4<f32> = u_xlat1;
  let x_2448 : vec4<f32> = x_43.unity_FogColor;
  let x_2450 : vec3<f32> = ((vec3<f32>(x_2442.x, x_2442.x, x_2442.x) * vec3<f32>(x_2444.x, x_2444.y, x_2444.z)) + vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
  let x_2451 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
  let x_2453 : bool = u_xlatb36;
  let x_2454 : f32 = u_xlat18;
  SV_Target0.w = select(1.0f, x_2454, x_2453);
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

