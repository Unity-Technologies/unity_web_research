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
  x_ScaleBiasRt : vec4<f32>,
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_286 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1634 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1873 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1983 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb19 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb21 : vec2<bool>;
  var u_xlat21 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat40 : vec2<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat39 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
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
  var u_xlatb39 : bool;
  var x_1586 : f32;
  var x_1718 : f32;
  var x_1729 : vec3<f32>;
  var u_xlatu55 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var u_xlati59 : i32;
  var u_xlati7 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb59 : bool;
  var u_xlatb7 : vec4<bool>;
  var x_2286 : f32;
  var x_2299 : f32;
  var x_2361 : f32;
  var x_2372 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2461 : f32;
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
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_62 : vec4<f32> = hlslcc_FragCoord;
  let x_66 : f32 = x_43.x_DitheringTextureInvSize;
  let x_68 : vec2<f32> = (vec2<f32>(x_62.x, x_62.y) * vec2<f32>(x_66, x_66));
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_69.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_43.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.x = x_80.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb19 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb19;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_134, x_135);
  let x_139 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_139);
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * x_144);
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  u_xlat1.w = 1.0f;
  let x_153 : vec4<f32> = x_92.unity_SHAr;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_153, x_154);
  let x_159 : vec4<f32> = x_92.unity_SHAg;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_159, x_160);
  let x_166 : vec4<f32> = x_92.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_92.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_92.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_92.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat1.y;
  let x_199 : f32 = u_xlat1.y;
  u_xlat55 = (x_197 * x_199);
  let x_202 : f32 = u_xlat1.x;
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat55;
  u_xlat55 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_92.unity_SHC;
  let x_213 : f32 = u_xlat55;
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat2;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_221 + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_230 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_235 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_231.x, x_231.y));
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = hlslcc_FragCoord;
  let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_243.z, x_243.w);
  let x_246 : f32 = u_xlat3.y;
  let x_249 : f32 = x_43.x_ScaleBiasRt.x;
  let x_252 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_246 * x_249) + x_252);
  let x_254 : f32 = u_xlat55;
  u_xlat3.z = (-(x_254) + 1.0f);
  let x_263 : vec4<f32> = u_xlat3;
  let x_266 : f32 = x_43.x_GlobalMipBias.x;
  let x_267 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_263.x, x_263.z), x_266);
  u_xlat55 = x_267.x;
  let x_270 : f32 = u_xlat55;
  u_xlat56 = (x_270 + -1.0f);
  let x_275 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_276 : f32 = u_xlat56;
  u_xlat56 = ((x_275 * x_276) + 1.0f);
  let x_279 : f32 = u_xlat55;
  u_xlat55 = min(x_279, 1.0f);
  let x_288 : f32 = x_286.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_288);
  let x_290 : bool = u_xlatb3;
  if (x_290) {
    let x_294 : f32 = x_286.x_MainLightShadowParams.y;
    u_xlatb3 = (x_294 == 1.0f);
    let x_296 : bool = u_xlatb3;
    if (x_296) {
      let x_300 : vec4<f32> = vs_TEXCOORD6;
      let x_304 : vec4<f32> = x_286.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_300.x, x_300.y, x_300.x, x_300.y) + x_304);
      let x_307 : vec4<f32> = u_xlat3;
      let x_308 : vec2<f32> = vec2<f32>(x_307.x, x_307.y);
      let x_310 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_308.x, x_308.y, x_310);
      let x_322 : vec3<f32> = txVec0;
      let x_324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_322.xy, x_322.z);
      u_xlat4.x = x_324;
      let x_327 : vec4<f32> = u_xlat3;
      let x_328 : vec2<f32> = vec2<f32>(x_327.z, x_327.w);
      let x_330 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_328.x, x_328.y, x_330);
      let x_337 : vec3<f32> = txVec1;
      let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_337.xy, x_337.z);
      u_xlat4.y = x_339;
      let x_341 : vec4<f32> = vs_TEXCOORD6;
      let x_344 : vec4<f32> = x_286.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_341.x, x_341.y, x_341.x, x_341.y) + x_344);
      let x_347 : vec4<f32> = u_xlat3;
      let x_348 : vec2<f32> = vec2<f32>(x_347.x, x_347.y);
      let x_350 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_348.x, x_348.y, x_350);
      let x_357 : vec3<f32> = txVec2;
      let x_359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_357.xy, x_357.z);
      u_xlat4.z = x_359;
      let x_362 : vec4<f32> = u_xlat3;
      let x_363 : vec2<f32> = vec2<f32>(x_362.z, x_362.w);
      let x_365 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_363.x, x_363.y, x_365);
      let x_372 : vec3<f32> = txVec3;
      let x_374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_372.xy, x_372.z);
      u_xlat4.w = x_374;
      let x_376 : vec4<f32> = u_xlat4;
      u_xlat3.x = dot(x_376, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_386 : f32 = x_286.x_MainLightShadowParams.y;
      u_xlatb21.x = (x_386 == 2.0f);
      let x_391 : bool = u_xlatb21.x;
      if (x_391) {
        let x_395 : vec4<f32> = vs_TEXCOORD6;
        let x_399 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_404 : vec2<f32> = ((vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_399.z, x_399.w)) + vec2<f32>(0.5f, 0.5f));
        let x_405 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_404.x, x_404.y, x_405.z);
        let x_407 : vec3<f32> = u_xlat21;
        let x_409 : vec2<f32> = floor(vec2<f32>(x_407.x, x_407.y));
        let x_410 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_409.x, x_409.y, x_410.z);
        let x_412 : vec4<f32> = vs_TEXCOORD6;
        let x_415 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_418 : vec3<f32> = u_xlat21;
        let x_421 : vec2<f32> = ((vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_415.z, x_415.w)) + -(vec2<f32>(x_418.x, x_418.y)));
        let x_422 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_425 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_425.x, x_425.x, x_425.y, x_425.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_430 : vec4<f32> = u_xlat5;
        let x_432 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_430.x, x_430.x, x_430.z, x_430.z) * vec4<f32>(x_432.x, x_432.x, x_432.z, x_432.z));
        let x_437 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_437.y, x_437.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_442 : vec4<f32> = u_xlat6;
        let x_445 : vec4<f32> = u_xlat4;
        let x_448 : vec2<f32> = ((vec2<f32>(x_442.x, x_442.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_445.x, x_445.y)));
        let x_449 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_448.x, x_449.y, x_448.y, x_449.w);
        let x_451 : vec4<f32> = u_xlat4;
        let x_454 : vec2<f32> = (-(vec2<f32>(x_451.x, x_451.y)) + vec2<f32>(1.0f, 1.0f));
        let x_455 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_458 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_458.x, x_458.y), vec2<f32>(0.0f, 0.0f));
        let x_462 : vec2<f32> = u_xlat42;
        let x_464 : vec2<f32> = u_xlat42;
        let x_466 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_462) * x_464) + vec2<f32>(x_466.x, x_466.y));
        let x_469 : vec4<f32> = u_xlat4;
        let x_471 : vec2<f32> = max(vec2<f32>(x_469.x, x_469.y), vec2<f32>(0.0f, 0.0f));
        let x_472 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_474 : vec4<f32> = u_xlat4;
        let x_477 : vec4<f32> = u_xlat4;
        let x_480 : vec4<f32> = u_xlat5;
        let x_482 : vec2<f32> = ((-(vec2<f32>(x_474.x, x_474.y)) * vec2<f32>(x_477.x, x_477.y)) + vec2<f32>(x_480.y, x_480.w));
        let x_483 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
        let x_485 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_485 + vec2<f32>(1.0f, 1.0f));
        let x_487 : vec4<f32> = u_xlat4;
        let x_489 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) + vec2<f32>(1.0f, 1.0f));
        let x_490 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_493 : vec4<f32> = u_xlat5;
        let x_497 : vec2<f32> = (vec2<f32>(x_493.x, x_493.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_501 : vec4<f32> = u_xlat6;
        let x_503 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_504 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec2<f32> = u_xlat42;
        let x_507 : vec2<f32> = (x_506 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_508 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_511 : vec4<f32> = u_xlat4;
        let x_513 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_514 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_516 : vec4<f32> = u_xlat5;
        let x_518 : vec2<f32> = (vec2<f32>(x_516.y, x_516.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_519 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_522 : f32 = u_xlat6.x;
        u_xlat7.z = x_522;
        let x_525 : f32 = u_xlat4.x;
        u_xlat7.w = x_525;
        let x_528 : f32 = u_xlat9.x;
        u_xlat8.z = x_528;
        let x_531 : f32 = u_xlat40.x;
        u_xlat8.w = x_531;
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_533.z, x_533.w, x_533.x, x_533.z) + vec4<f32>(x_535.z, x_535.w, x_535.x, x_535.z));
        let x_539 : f32 = u_xlat7.y;
        u_xlat6.z = x_539;
        let x_542 : f32 = u_xlat4.y;
        u_xlat6.w = x_542;
        let x_545 : f32 = u_xlat8.y;
        u_xlat9.z = x_545;
        let x_548 : f32 = u_xlat40.y;
        u_xlat9.w = x_548;
        let x_550 : vec4<f32> = u_xlat6;
        let x_552 : vec4<f32> = u_xlat9;
        let x_554 : vec3<f32> = (vec3<f32>(x_550.z, x_550.y, x_550.w) + vec3<f32>(x_552.z, x_552.y, x_552.w));
        let x_555 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat8;
        let x_559 : vec4<f32> = u_xlat5;
        let x_561 : vec3<f32> = (vec3<f32>(x_557.x, x_557.z, x_557.w) / vec3<f32>(x_559.z, x_559.w, x_559.y));
        let x_562 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat6;
        let x_570 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_571 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
        let x_573 : vec4<f32> = u_xlat9;
        let x_575 : vec4<f32> = u_xlat4;
        let x_577 : vec3<f32> = (vec3<f32>(x_573.z, x_573.y, x_573.w) / vec3<f32>(x_575.x, x_575.y, x_575.z));
        let x_578 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat7;
        let x_582 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat6;
        let x_588 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_590 : vec3<f32> = (vec3<f32>(x_585.y, x_585.x, x_585.z) * vec3<f32>(x_588.x, x_588.x, x_588.x));
        let x_591 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
        let x_593 : vec4<f32> = u_xlat7;
        let x_596 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_598 : vec3<f32> = (vec3<f32>(x_593.x, x_593.y, x_593.z) * vec3<f32>(x_596.y, x_596.y, x_596.y));
        let x_599 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
        let x_602 : f32 = u_xlat7.x;
        u_xlat6.w = x_602;
        let x_604 : vec3<f32> = u_xlat21;
        let x_607 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_604.x, x_604.y, x_604.x, x_604.y) * vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y)) + vec4<f32>(x_610.y, x_610.w, x_610.x, x_610.w));
        let x_613 : vec3<f32> = u_xlat21;
        let x_616 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat6;
        let x_621 : vec2<f32> = ((vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_616.x, x_616.y)) + vec2<f32>(x_619.z, x_619.w));
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
        let x_625 : f32 = u_xlat6.y;
        u_xlat7.w = x_625;
        let x_627 : vec4<f32> = u_xlat7;
        let x_628 : vec2<f32> = vec2<f32>(x_627.y, x_627.z);
        let x_629 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_629.x, x_628.x, x_629.z, x_628.y);
        let x_632 : vec3<f32> = u_xlat21;
        let x_635 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_638 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y) * vec4<f32>(x_635.x, x_635.y, x_635.x, x_635.y)) + vec4<f32>(x_638.x, x_638.y, x_638.z, x_638.y));
        let x_641 : vec3<f32> = u_xlat21;
        let x_644 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_647 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_641.x, x_641.y, x_641.x, x_641.y) * vec4<f32>(x_644.x, x_644.y, x_644.x, x_644.y)) + vec4<f32>(x_647.w, x_647.y, x_647.w, x_647.z));
        let x_650 : vec3<f32> = u_xlat21;
        let x_653 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_656 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_650.x, x_650.y, x_650.x, x_650.y) * vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y)) + vec4<f32>(x_656.x, x_656.w, x_656.z, x_656.w));
        let x_660 : vec4<f32> = u_xlat4;
        let x_662 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_660.x, x_660.x, x_660.x, x_660.y) * vec4<f32>(x_662.z, x_662.w, x_662.y, x_662.z));
        let x_666 : vec4<f32> = u_xlat4;
        let x_668 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_666.y, x_666.y, x_666.z, x_666.z) * x_668);
        let x_671 : f32 = u_xlat4.z;
        let x_673 : f32 = u_xlat5.y;
        u_xlat21.x = (x_671 * x_673);
        let x_677 : vec4<f32> = u_xlat8;
        let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
        let x_680 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_678.x, x_678.y, x_680);
        let x_688 : vec3<f32> = txVec4;
        let x_690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_688.xy, x_688.z);
        u_xlat39 = x_690;
        let x_692 : vec4<f32> = u_xlat8;
        let x_693 : vec2<f32> = vec2<f32>(x_692.z, x_692.w);
        let x_695 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_693.x, x_693.y, x_695);
        let x_703 : vec3<f32> = txVec5;
        let x_705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_703.xy, x_703.z);
        u_xlat57 = x_705;
        let x_706 : f32 = u_xlat57;
        let x_708 : f32 = u_xlat11.y;
        u_xlat57 = (x_706 * x_708);
        let x_711 : f32 = u_xlat11.x;
        let x_712 : f32 = u_xlat39;
        let x_714 : f32 = u_xlat57;
        u_xlat39 = ((x_711 * x_712) + x_714);
        let x_717 : vec4<f32> = u_xlat9;
        let x_718 : vec2<f32> = vec2<f32>(x_717.x, x_717.y);
        let x_720 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_718.x, x_718.y, x_720);
        let x_727 : vec3<f32> = txVec6;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_727.xy, x_727.z);
        u_xlat57 = x_729;
        let x_731 : f32 = u_xlat11.z;
        let x_732 : f32 = u_xlat57;
        let x_734 : f32 = u_xlat39;
        u_xlat39 = ((x_731 * x_732) + x_734);
        let x_737 : vec4<f32> = u_xlat7;
        let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.y);
        let x_740 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_738.x, x_738.y, x_740);
        let x_747 : vec3<f32> = txVec7;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_747.xy, x_747.z);
        u_xlat57 = x_749;
        let x_751 : f32 = u_xlat11.w;
        let x_752 : f32 = u_xlat57;
        let x_754 : f32 = u_xlat39;
        u_xlat39 = ((x_751 * x_752) + x_754);
        let x_757 : vec4<f32> = u_xlat10;
        let x_758 : vec2<f32> = vec2<f32>(x_757.x, x_757.y);
        let x_760 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec8;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_767.xy, x_767.z);
        u_xlat57 = x_769;
        let x_771 : f32 = u_xlat12.x;
        let x_772 : f32 = u_xlat57;
        let x_774 : f32 = u_xlat39;
        u_xlat39 = ((x_771 * x_772) + x_774);
        let x_777 : vec4<f32> = u_xlat10;
        let x_778 : vec2<f32> = vec2<f32>(x_777.z, x_777.w);
        let x_780 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_778.x, x_778.y, x_780);
        let x_787 : vec3<f32> = txVec9;
        let x_789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_787.xy, x_787.z);
        u_xlat57 = x_789;
        let x_791 : f32 = u_xlat12.y;
        let x_792 : f32 = u_xlat57;
        let x_794 : f32 = u_xlat39;
        u_xlat39 = ((x_791 * x_792) + x_794);
        let x_797 : vec4<f32> = u_xlat7;
        let x_798 : vec2<f32> = vec2<f32>(x_797.z, x_797.w);
        let x_800 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_798.x, x_798.y, x_800);
        let x_807 : vec3<f32> = txVec10;
        let x_809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_807.xy, x_807.z);
        u_xlat57 = x_809;
        let x_811 : f32 = u_xlat12.z;
        let x_812 : f32 = u_xlat57;
        let x_814 : f32 = u_xlat39;
        u_xlat39 = ((x_811 * x_812) + x_814);
        let x_817 : vec4<f32> = u_xlat6;
        let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec11;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat57 = x_829;
        let x_831 : f32 = u_xlat12.w;
        let x_832 : f32 = u_xlat57;
        let x_834 : f32 = u_xlat39;
        u_xlat39 = ((x_831 * x_832) + x_834);
        let x_837 : vec4<f32> = u_xlat6;
        let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
        let x_840 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_847 : vec3<f32> = txVec12;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_847.xy, x_847.z);
        u_xlat57 = x_849;
        let x_851 : f32 = u_xlat21.x;
        let x_852 : f32 = u_xlat57;
        let x_854 : f32 = u_xlat39;
        u_xlat3.x = ((x_851 * x_852) + x_854);
      } else {
        let x_858 : vec4<f32> = vs_TEXCOORD6;
        let x_861 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_864 : vec2<f32> = ((vec2<f32>(x_858.x, x_858.y) * vec2<f32>(x_861.z, x_861.w)) + vec2<f32>(0.5f, 0.5f));
        let x_865 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_864.x, x_864.y, x_865.z);
        let x_867 : vec3<f32> = u_xlat21;
        let x_869 : vec2<f32> = floor(vec2<f32>(x_867.x, x_867.y));
        let x_870 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_869.x, x_869.y, x_870.z);
        let x_872 : vec4<f32> = vs_TEXCOORD6;
        let x_875 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_878 : vec3<f32> = u_xlat21;
        let x_881 : vec2<f32> = ((vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_875.z, x_875.w)) + -(vec2<f32>(x_878.x, x_878.y)));
        let x_882 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_881.x, x_881.y, x_882.z, x_882.w);
        let x_884 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_884.x, x_884.x, x_884.y, x_884.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_887 : vec4<f32> = u_xlat5;
        let x_889 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_887.x, x_887.x, x_887.z, x_887.z) * vec4<f32>(x_889.x, x_889.x, x_889.z, x_889.z));
        let x_892 : vec4<f32> = u_xlat6;
        let x_896 : vec2<f32> = (vec2<f32>(x_892.y, x_892.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_897 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_897.x, x_896.x, x_897.z, x_896.y);
        let x_899 : vec4<f32> = u_xlat6;
        let x_902 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_899.x, x_899.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_902.x, x_902.y)));
        let x_906 : vec4<f32> = u_xlat4;
        let x_909 : vec2<f32> = (-(vec2<f32>(x_906.x, x_906.y)) + vec2<f32>(1.0f, 1.0f));
        let x_910 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_909.x, x_910.y, x_909.y, x_910.w);
        let x_912 : vec4<f32> = u_xlat4;
        let x_914 : vec2<f32> = min(vec2<f32>(x_912.x, x_912.y), vec2<f32>(0.0f, 0.0f));
        let x_915 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
        let x_917 : vec4<f32> = u_xlat6;
        let x_920 : vec4<f32> = u_xlat6;
        let x_923 : vec4<f32> = u_xlat5;
        let x_925 : vec2<f32> = ((-(vec2<f32>(x_917.x, x_917.y)) * vec2<f32>(x_920.x, x_920.y)) + vec2<f32>(x_923.x, x_923.z));
        let x_926 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_925.x, x_926.y, x_925.y, x_926.w);
        let x_928 : vec4<f32> = u_xlat4;
        let x_930 : vec2<f32> = max(vec2<f32>(x_928.x, x_928.y), vec2<f32>(0.0f, 0.0f));
        let x_931 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat6;
        let x_936 : vec4<f32> = u_xlat6;
        let x_939 : vec4<f32> = u_xlat5;
        let x_941 : vec2<f32> = ((-(vec2<f32>(x_933.x, x_933.y)) * vec2<f32>(x_936.x, x_936.y)) + vec2<f32>(x_939.y, x_939.w));
        let x_942 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_942.x, x_941.x, x_942.z, x_941.y);
        let x_944 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_944 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_948 : f32 = u_xlat5.y;
        u_xlat6.z = (x_948 * 0.081632003f);
        let x_952 : vec2<f32> = u_xlat40;
        let x_955 : vec2<f32> = (vec2<f32>(x_952.y, x_952.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_956 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_958.x, x_958.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_962 : f32 = u_xlat5.w;
        u_xlat8.z = (x_962 * 0.081632003f);
        let x_966 : f32 = u_xlat8.y;
        u_xlat6.x = x_966;
        let x_968 : vec4<f32> = u_xlat4;
        let x_975 : vec2<f32> = ((vec2<f32>(x_968.x, x_968.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_976 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_976.x, x_975.x, x_976.z, x_975.y);
        let x_978 : vec4<f32> = u_xlat4;
        let x_982 : vec2<f32> = ((vec2<f32>(x_978.x, x_978.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_983 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_982.x, x_983.y, x_982.y, x_983.w);
        let x_986 : f32 = u_xlat40.x;
        u_xlat5.y = x_986;
        let x_989 : f32 = u_xlat7.y;
        u_xlat5.w = x_989;
        let x_991 : vec4<f32> = u_xlat5;
        let x_992 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_991 + x_992);
        let x_994 : vec4<f32> = u_xlat4;
        let x_997 : vec2<f32> = ((vec2<f32>(x_994.y, x_994.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec4<f32> = u_xlat4;
        let x_1003 : vec2<f32> = ((vec2<f32>(x_1000.y, x_1000.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1004 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1003.x, x_1004.y, x_1003.y, x_1004.w);
        let x_1007 : f32 = u_xlat40.y;
        u_xlat7.y = x_1007;
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_1009 + x_1010);
        let x_1012 : vec4<f32> = u_xlat5;
        let x_1013 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_1012 / x_1013);
        let x_1015 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_1015 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_1021 / x_1022);
        let x_1024 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1024 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1026 : vec4<f32> = u_xlat5;
        let x_1029 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1026.w, x_1026.x, x_1026.y, x_1026.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.x, x_1029.x));
        let x_1032 : vec4<f32> = u_xlat7;
        let x_1035 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1032.x, x_1032.w, x_1032.y, x_1032.z) * vec4<f32>(x_1035.y, x_1035.y, x_1035.y, x_1035.y));
        let x_1038 : vec4<f32> = u_xlat5;
        let x_1039 : vec3<f32> = vec3<f32>(x_1038.y, x_1038.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1039.x, x_1040.y, x_1039.y, x_1039.z);
        let x_1043 : f32 = u_xlat7.x;
        u_xlat8.y = x_1043;
        let x_1045 : vec3<f32> = u_xlat21;
        let x_1048 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) * vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y)) + vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1051.y));
        let x_1054 : vec3<f32> = u_xlat21;
        let x_1057 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat8;
        let x_1062 : vec2<f32> = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1057.x, x_1057.y)) + vec2<f32>(x_1060.w, x_1060.y));
        let x_1063 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1066 : f32 = u_xlat8.y;
        u_xlat5.y = x_1066;
        let x_1069 : f32 = u_xlat7.z;
        u_xlat8.y = x_1069;
        let x_1071 : vec3<f32> = u_xlat21;
        let x_1074 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y) * vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y)) + vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1077.y));
        let x_1081 : vec3<f32> = u_xlat21;
        let x_1084 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(x_1087.w, x_1087.y));
        let x_1091 : f32 = u_xlat8.y;
        u_xlat5.z = x_1091;
        let x_1093 : vec3<f32> = u_xlat21;
        let x_1096 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y) * vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y)) + vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.z));
        let x_1103 : f32 = u_xlat7.w;
        u_xlat8.y = x_1103;
        let x_1106 : vec3<f32> = u_xlat21;
        let x_1109 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y) * vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y)) + vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1112.y));
        let x_1116 : vec3<f32> = u_xlat21;
        let x_1119 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.w, x_1122.y));
        let x_1126 : f32 = u_xlat8.y;
        u_xlat5.w = x_1126;
        let x_1129 : vec3<f32> = u_xlat21;
        let x_1132 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.x, x_1132.y)) + vec2<f32>(x_1135.x, x_1135.w));
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1139 : vec3<f32> = vec3<f32>(x_1138.x, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1139.z);
        let x_1142 : vec3<f32> = u_xlat21;
        let x_1145 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1148 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.y) * vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y)) + vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1148.y));
        let x_1152 : vec3<f32> = u_xlat21;
        let x_1155 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1152.x, x_1152.y) * vec2<f32>(x_1155.x, x_1155.y)) + vec2<f32>(x_1158.w, x_1158.y));
        let x_1162 : f32 = u_xlat5.x;
        u_xlat7.x = x_1162;
        let x_1164 : vec3<f32> = u_xlat21;
        let x_1167 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat7;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.x, x_1170.y));
        let x_1173 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1172.x, x_1172.y, x_1173.z);
        let x_1176 : vec4<f32> = u_xlat4;
        let x_1178 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1176.x, x_1176.x, x_1176.x, x_1176.x) * x_1178);
        let x_1181 : vec4<f32> = u_xlat4;
        let x_1183 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1181.y, x_1181.y, x_1181.y, x_1181.y) * x_1183);
        let x_1186 : vec4<f32> = u_xlat4;
        let x_1188 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1186.z, x_1186.z, x_1186.z, x_1186.z) * x_1188);
        let x_1190 : vec4<f32> = u_xlat4;
        let x_1192 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1190.w, x_1190.w, x_1190.w, x_1190.w) * x_1192);
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec13;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1205.xy, x_1205.z);
        u_xlat57 = x_1207;
        let x_1209 : vec4<f32> = u_xlat9;
        let x_1210 : vec2<f32> = vec2<f32>(x_1209.z, x_1209.w);
        let x_1212 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec14;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1219.xy, x_1219.z);
        u_xlat5.x = x_1221;
        let x_1224 : f32 = u_xlat5.x;
        let x_1226 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1224 * x_1226);
        let x_1230 : f32 = u_xlat15.x;
        let x_1231 : f32 = u_xlat57;
        let x_1234 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1230 * x_1231) + x_1234);
        let x_1237 : vec4<f32> = u_xlat10;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.x, x_1237.y);
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec15;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat5.x = x_1249;
        let x_1252 : f32 = u_xlat15.z;
        let x_1254 : f32 = u_xlat5.x;
        let x_1256 : f32 = u_xlat57;
        u_xlat57 = ((x_1252 * x_1254) + x_1256);
        let x_1259 : vec4<f32> = u_xlat12;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.x, x_1259.y);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec16;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1269.xy, x_1269.z);
        u_xlat5.x = x_1271;
        let x_1274 : f32 = u_xlat15.w;
        let x_1276 : f32 = u_xlat5.x;
        let x_1278 : f32 = u_xlat57;
        u_xlat57 = ((x_1274 * x_1276) + x_1278);
        let x_1281 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec17;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1291.xy, x_1291.z);
        u_xlat5.x = x_1293;
        let x_1296 : f32 = u_xlat16.x;
        let x_1298 : f32 = u_xlat5.x;
        let x_1300 : f32 = u_xlat57;
        u_xlat57 = ((x_1296 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec18;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1313.xy, x_1313.z);
        u_xlat5.x = x_1315;
        let x_1318 : f32 = u_xlat16.y;
        let x_1320 : f32 = u_xlat5.x;
        let x_1322 : f32 = u_xlat57;
        u_xlat57 = ((x_1318 * x_1320) + x_1322);
        let x_1325 : vec2<f32> = u_xlat46;
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec19;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat5.x = x_1336;
        let x_1339 : f32 = u_xlat16.z;
        let x_1341 : f32 = u_xlat5.x;
        let x_1343 : f32 = u_xlat57;
        u_xlat57 = ((x_1339 * x_1341) + x_1343);
        let x_1346 : vec4<f32> = u_xlat12;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.z, x_1346.w);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec20;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1356.xy, x_1356.z);
        u_xlat5.x = x_1358;
        let x_1361 : f32 = u_xlat16.w;
        let x_1363 : f32 = u_xlat5.x;
        let x_1365 : f32 = u_xlat57;
        u_xlat57 = ((x_1361 * x_1363) + x_1365);
        let x_1368 : vec4<f32> = u_xlat13;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec21;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat5.x = x_1380;
        let x_1383 : f32 = u_xlat17.x;
        let x_1385 : f32 = u_xlat5.x;
        let x_1387 : f32 = u_xlat57;
        u_xlat57 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat13;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.z, x_1390.w);
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec22;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat5.x = x_1402;
        let x_1405 : f32 = u_xlat17.y;
        let x_1407 : f32 = u_xlat5.x;
        let x_1409 : f32 = u_xlat57;
        u_xlat57 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec2<f32> = u_xlat23;
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec23;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1421.xy, x_1421.z);
        u_xlat5.x = x_1423;
        let x_1426 : f32 = u_xlat17.z;
        let x_1428 : f32 = u_xlat5.x;
        let x_1430 : f32 = u_xlat57;
        u_xlat57 = ((x_1426 * x_1428) + x_1430);
        let x_1433 : vec2<f32> = u_xlat14;
        let x_1435 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec24;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1442.xy, x_1442.z);
        u_xlat5.x = x_1444;
        let x_1447 : f32 = u_xlat17.w;
        let x_1449 : f32 = u_xlat5.x;
        let x_1451 : f32 = u_xlat57;
        u_xlat57 = ((x_1447 * x_1449) + x_1451);
        let x_1454 : vec4<f32> = u_xlat8;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.x, x_1454.y);
        let x_1457 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec25;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1464.xy, x_1464.z);
        u_xlat5.x = x_1466;
        let x_1469 : f32 = u_xlat4.x;
        let x_1471 : f32 = u_xlat5.x;
        let x_1473 : f32 = u_xlat57;
        u_xlat57 = ((x_1469 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat8;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.z, x_1476.w);
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec26;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1486.xy, x_1486.z);
        u_xlat4.x = x_1488;
        let x_1491 : f32 = u_xlat4.y;
        let x_1493 : f32 = u_xlat4.x;
        let x_1495 : f32 = u_xlat57;
        u_xlat57 = ((x_1491 * x_1493) + x_1495);
        let x_1498 : vec2<f32> = u_xlat43;
        let x_1500 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec27;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1507.xy, x_1507.z);
        u_xlat4.x = x_1509;
        let x_1512 : f32 = u_xlat4.z;
        let x_1514 : f32 = u_xlat4.x;
        let x_1516 : f32 = u_xlat57;
        u_xlat57 = ((x_1512 * x_1514) + x_1516);
        let x_1519 : vec3<f32> = u_xlat21;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec28;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1529.xy, x_1529.z);
        u_xlat21.x = x_1531;
        let x_1534 : f32 = u_xlat4.w;
        let x_1536 : f32 = u_xlat21.x;
        let x_1538 : f32 = u_xlat57;
        u_xlat3.x = ((x_1534 * x_1536) + x_1538);
      }
    }
  } else {
    let x_1543 : vec4<f32> = vs_TEXCOORD6;
    let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
    let x_1546 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
    let x_1553 : vec3<f32> = txVec29;
    let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
    u_xlat3.x = x_1555;
  }
  let x_1558 : f32 = x_286.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1558) + 1.0f);
  let x_1563 : f32 = u_xlat3.x;
  let x_1565 : f32 = x_286.x_MainLightShadowParams.x;
  let x_1568 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1563 * x_1565) + x_1568);
  let x_1572 : f32 = vs_TEXCOORD6.z;
  u_xlatb21.x = (0.0f >= x_1572);
  let x_1577 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1577 >= 1.0f);
  let x_1579 : bool = u_xlatb39;
  let x_1581 : bool = u_xlatb21.x;
  u_xlatb21.x = (x_1579 | x_1581);
  let x_1585 : bool = u_xlatb21.x;
  if (x_1585) {
    x_1586 = 1.0f;
  } else {
    let x_1591 : f32 = u_xlat3.x;
    x_1586 = x_1591;
  }
  let x_1592 : f32 = x_1586;
  u_xlat3.x = x_1592;
  let x_1595 : vec3<f32> = vs_TEXCOORD1;
  let x_1598 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1595 + -(x_1598));
  let x_1601 : vec3<f32> = u_xlat21;
  let x_1602 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1601, x_1602);
  let x_1606 : f32 = u_xlat21.x;
  let x_1608 : f32 = x_286.x_MainLightShadowParams.z;
  let x_1611 : f32 = x_286.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1606 * x_1608) + x_1611);
  let x_1615 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1615, 0.0f, 1.0f);
  let x_1619 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1619) + 1.0f);
  let x_1623 : f32 = u_xlat21.x;
  let x_1624 : f32 = u_xlat39;
  let x_1627 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1623 * x_1624) + x_1627);
  let x_1636 : f32 = x_1634.x_MainLightCookieTextureFormat;
  u_xlatb21.x = !((x_1636 == -1.0f));
  let x_1640 : bool = u_xlatb21.x;
  if (x_1640) {
    let x_1643 : vec3<f32> = vs_TEXCOORD1;
    let x_1646 : vec4<f32> = x_1634.x_MainLightWorldToLight[1i];
    let x_1648 : vec2<f32> = (vec2<f32>(x_1643.y, x_1643.y) * vec2<f32>(x_1646.x, x_1646.y));
    let x_1649 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1648.x, x_1648.y, x_1649.z);
    let x_1652 : vec4<f32> = x_1634.x_MainLightWorldToLight[0i];
    let x_1654 : vec3<f32> = vs_TEXCOORD1;
    let x_1657 : vec3<f32> = u_xlat21;
    let x_1659 : vec2<f32> = ((vec2<f32>(x_1652.x, x_1652.y) * vec2<f32>(x_1654.x, x_1654.x)) + vec2<f32>(x_1657.x, x_1657.y));
    let x_1660 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1659.x, x_1659.y, x_1660.z);
    let x_1663 : vec4<f32> = x_1634.x_MainLightWorldToLight[2i];
    let x_1665 : vec3<f32> = vs_TEXCOORD1;
    let x_1668 : vec3<f32> = u_xlat21;
    let x_1670 : vec2<f32> = ((vec2<f32>(x_1663.x, x_1663.y) * vec2<f32>(x_1665.z, x_1665.z)) + vec2<f32>(x_1668.x, x_1668.y));
    let x_1671 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1670.x, x_1670.y, x_1671.z);
    let x_1673 : vec3<f32> = u_xlat21;
    let x_1677 : vec4<f32> = x_1634.x_MainLightWorldToLight[3i];
    let x_1679 : vec2<f32> = (vec2<f32>(x_1673.x, x_1673.y) + vec2<f32>(x_1677.x, x_1677.y));
    let x_1680 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1679.x, x_1679.y, x_1680.z);
    let x_1682 : vec3<f32> = u_xlat21;
    let x_1685 : vec2<f32> = ((vec2<f32>(x_1682.x, x_1682.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1686 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1685.x, x_1685.y, x_1686.z);
    let x_1693 : vec3<f32> = u_xlat21;
    let x_1696 : f32 = x_43.x_GlobalMipBias.x;
    let x_1697 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1693.x, x_1693.y), x_1696);
    u_xlat4 = x_1697;
    let x_1699 : f32 = x_1634.x_MainLightCookieTextureFormat;
    let x_1701 : f32 = x_1634.x_MainLightCookieTextureFormat;
    let x_1703 : f32 = x_1634.x_MainLightCookieTextureFormat;
    let x_1705 : f32 = x_1634.x_MainLightCookieTextureFormat;
    let x_1706 : vec4<f32> = vec4<f32>(x_1699, x_1701, x_1703, x_1705);
    let x_1714 : vec4<bool> = (vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1706.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb21 = vec2<bool>(x_1714.x, x_1714.y);
    let x_1717 : bool = u_xlatb21.y;
    if (x_1717) {
      let x_1722 : f32 = u_xlat4.w;
      x_1718 = x_1722;
    } else {
      let x_1725 : f32 = u_xlat4.x;
      x_1718 = x_1725;
    }
    let x_1726 : f32 = x_1718;
    u_xlat39 = x_1726;
    let x_1728 : bool = u_xlatb21.x;
    if (x_1728) {
      let x_1732 : vec4<f32> = u_xlat4;
      x_1729 = vec3<f32>(x_1732.x, x_1732.y, x_1732.z);
    } else {
      let x_1735 : f32 = u_xlat39;
      x_1729 = vec3<f32>(x_1735, x_1735, x_1735);
    }
    let x_1737 : vec3<f32> = x_1729;
    u_xlat21 = x_1737;
  } else {
    u_xlat21.x = 1.0f;
    u_xlat21.y = 1.0f;
    u_xlat21.z = 1.0f;
  }
  let x_1742 : vec3<f32> = u_xlat21;
  let x_1744 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (x_1742 * vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
  let x_1747 : f32 = u_xlat56;
  let x_1749 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1747, x_1747, x_1747) * x_1749);
  let x_1751 : f32 = u_xlat55;
  let x_1753 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1751, x_1751, x_1751) * x_1753);
  let x_1756 : f32 = u_xlat3.x;
  let x_1759 : f32 = x_92.unity_LightData.z;
  u_xlat55 = (x_1756 * x_1759);
  let x_1761 : f32 = u_xlat55;
  let x_1763 : vec3<f32> = u_xlat21;
  let x_1764 : vec3<f32> = (vec3<f32>(x_1761, x_1761, x_1761) * x_1763);
  let x_1765 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec4<f32> = u_xlat1;
  let x_1770 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1767.x, x_1767.y, x_1767.z), vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
  let x_1773 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1773, 0.0f, 1.0f);
  let x_1775 : f32 = u_xlat55;
  let x_1777 : vec4<f32> = u_xlat3;
  let x_1779 : vec3<f32> = (vec3<f32>(x_1775, x_1775, x_1775) * vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
  let x_1780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
  let x_1782 : vec4<f32> = u_xlat0;
  let x_1784 : vec4<f32> = u_xlat3;
  let x_1786 : vec3<f32> = (vec3<f32>(x_1782.y, x_1782.z, x_1782.w) * vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
  let x_1787 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  let x_1790 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1792 : f32 = x_92.unity_LightData.y;
  u_xlat55 = min(x_1790, x_1792);
  let x_1796 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1796));
  let x_1801 : f32 = x_1634.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1803 : f32 = x_1634.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1805 : f32 = x_1634.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1807 : f32 = x_1634.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1808 : vec4<f32> = vec4<f32>(x_1801, x_1803, x_1805, x_1807);
  let x_1814 : vec4<bool> = (vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1808.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1814.x, x_1814.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1825 : u32 = u_xlatu_loop_1;
    let x_1826 : u32 = u_xlatu55;
    if ((x_1825 < x_1826)) {
    } else {
      break;
    }
    let x_1829 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1829 >> 2u);
    let x_1833 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1833 & 3u));
    let x_1836 : u32 = u_xlatu40;
    let x_1839 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_1836)];
    let x_1849 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1854 : vec4<u32> = indexable[x_1849];
    u_xlat40.x = dot(x_1839, bitcast<vec4<f32>>(x_1854));
    let x_1859 : f32 = u_xlat40.x;
    u_xlatu40 = bitcast<u32>(i32(x_1859));
    let x_1862 : vec3<f32> = vs_TEXCOORD1;
    let x_1874 : u32 = u_xlatu40;
    let x_1877 : vec4<f32> = x_1873.x_AdditionalLightsPosition[bitcast<i32>(x_1874)];
    let x_1880 : u32 = u_xlatu40;
    let x_1883 : vec4<f32> = x_1873.x_AdditionalLightsPosition[bitcast<i32>(x_1880)];
    let x_1885 : vec3<f32> = ((-(x_1862) * vec3<f32>(x_1877.w, x_1877.w, x_1877.w)) + vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
    let x_1886 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
    let x_1889 : vec4<f32> = u_xlat6;
    let x_1891 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1889.x, x_1889.y, x_1889.z), vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
    let x_1894 : f32 = u_xlat58;
    u_xlat58 = max(x_1894, 6.10351562e-05f);
    let x_1898 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_1898);
    let x_1900 : f32 = u_xlat59;
    let x_1902 : vec4<f32> = u_xlat6;
    let x_1904 : vec3<f32> = (vec3<f32>(x_1900, x_1900, x_1900) * vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
    let x_1905 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
    let x_1907 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_1907);
    let x_1909 : f32 = u_xlat58;
    let x_1910 : u32 = u_xlatu40;
    let x_1913 : f32 = x_1873.x_AdditionalLightsAttenuation[bitcast<i32>(x_1910)].x;
    u_xlat58 = (x_1909 * x_1913);
    let x_1915 : f32 = u_xlat58;
    let x_1917 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1915) * x_1917) + 1.0f);
    let x_1920 : f32 = u_xlat58;
    u_xlat58 = max(x_1920, 0.0f);
    let x_1922 : f32 = u_xlat58;
    let x_1923 : f32 = u_xlat58;
    u_xlat58 = (x_1922 * x_1923);
    let x_1925 : f32 = u_xlat58;
    let x_1926 : f32 = u_xlat59;
    u_xlat58 = (x_1925 * x_1926);
    let x_1928 : u32 = u_xlatu40;
    let x_1931 : vec4<f32> = x_1873.x_AdditionalLightsSpotDir[bitcast<i32>(x_1928)];
    let x_1933 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1931.x, x_1931.y, x_1931.z), vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
    let x_1936 : f32 = u_xlat59;
    let x_1937 : u32 = u_xlatu40;
    let x_1940 : f32 = x_1873.x_AdditionalLightsAttenuation[bitcast<i32>(x_1937)].z;
    let x_1942 : u32 = u_xlatu40;
    let x_1945 : f32 = x_1873.x_AdditionalLightsAttenuation[bitcast<i32>(x_1942)].w;
    u_xlat59 = ((x_1936 * x_1940) + x_1945);
    let x_1947 : f32 = u_xlat59;
    u_xlat59 = clamp(x_1947, 0.0f, 1.0f);
    let x_1949 : f32 = u_xlat59;
    let x_1950 : f32 = u_xlat59;
    u_xlat59 = (x_1949 * x_1950);
    let x_1952 : f32 = u_xlat58;
    let x_1953 : f32 = u_xlat59;
    u_xlat58 = (x_1952 * x_1953);
    let x_1956 : u32 = u_xlatu40;
    u_xlatu59 = (x_1956 >> 5u);
    let x_1959 : u32 = u_xlatu40;
    u_xlati60 = (1i << bitcast<u32>((bitcast<i32>(x_1959) & 31i)));
    let x_1965 : i32 = u_xlati60;
    let x_1967 : u32 = u_xlatu59;
    let x_1970 : f32 = x_1634.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1967)].el;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_1965) & bitcast<u32>(x_1970)));
    let x_1974 : i32 = u_xlati59;
    if ((x_1974 != 0i)) {
      let x_1984 : u32 = u_xlatu40;
      let x_1987 : f32 = x_1983.x_AdditionalLightsLightTypes[bitcast<i32>(x_1984)].el;
      u_xlati59 = i32(x_1987);
      let x_1989 : i32 = u_xlati59;
      u_xlati60 = select(1i, 0i, (x_1989 != 0i));
      let x_1993 : u32 = u_xlatu40;
      u_xlati7 = (bitcast<i32>(x_1993) << bitcast<u32>(2i));
      let x_1996 : i32 = u_xlati60;
      if ((x_1996 != 0i)) {
        let x_2001 : vec3<f32> = vs_TEXCOORD1;
        let x_2003 : i32 = u_xlati7;
        let x_2006 : i32 = u_xlati7;
        let x_2010 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2003 + 1i) / 4i)][((x_2006 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_2001.y, x_2001.y, x_2001.y) * vec3<f32>(x_2010.x, x_2010.y, x_2010.w));
        let x_2013 : i32 = u_xlati7;
        let x_2015 : i32 = u_xlati7;
        let x_2018 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[(x_2013 / 4i)][(x_2015 % 4i)];
        let x_2020 : vec3<f32> = vs_TEXCOORD1;
        let x_2023 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2018.x, x_2018.y, x_2018.w) * vec3<f32>(x_2020.x, x_2020.x, x_2020.x)) + x_2023);
        let x_2025 : i32 = u_xlati7;
        let x_2028 : i32 = u_xlati7;
        let x_2032 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2025 + 2i) / 4i)][((x_2028 + 2i) % 4i)];
        let x_2034 : vec3<f32> = vs_TEXCOORD1;
        let x_2037 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2032.x, x_2032.y, x_2032.w) * vec3<f32>(x_2034.z, x_2034.z, x_2034.z)) + x_2037);
        let x_2039 : vec3<f32> = u_xlat25;
        let x_2040 : i32 = u_xlati7;
        let x_2043 : i32 = u_xlati7;
        let x_2047 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2040 + 3i) / 4i)][((x_2043 + 3i) % 4i)];
        u_xlat25 = (x_2039 + vec3<f32>(x_2047.x, x_2047.y, x_2047.w));
        let x_2050 : vec3<f32> = u_xlat25;
        let x_2052 : vec3<f32> = u_xlat25;
        let x_2054 : vec2<f32> = (vec2<f32>(x_2050.x, x_2050.y) / vec2<f32>(x_2052.z, x_2052.z));
        let x_2055 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2054.x, x_2054.y, x_2055.z);
        let x_2057 : vec3<f32> = u_xlat25;
        let x_2060 : vec2<f32> = ((vec2<f32>(x_2057.x, x_2057.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2061 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2060.x, x_2060.y, x_2061.z);
        let x_2063 : vec3<f32> = u_xlat25;
        let x_2067 : vec2<f32> = clamp(vec2<f32>(x_2063.x, x_2063.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2068 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2067.x, x_2067.y, x_2068.z);
        let x_2070 : u32 = u_xlatu40;
        let x_2073 : vec4<f32> = x_1983.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2070)];
        let x_2075 : vec3<f32> = u_xlat25;
        let x_2078 : u32 = u_xlatu40;
        let x_2081 : vec4<f32> = x_1983.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2078)];
        let x_2083 : vec2<f32> = ((vec2<f32>(x_2073.x, x_2073.y) * vec2<f32>(x_2075.x, x_2075.y)) + vec2<f32>(x_2081.z, x_2081.w));
        let x_2084 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2083.x, x_2083.y, x_2084.z);
      } else {
        let x_2088 : i32 = u_xlati59;
        u_xlatb59 = (x_2088 == 1i);
        let x_2090 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_2090);
        let x_2092 : i32 = u_xlati59;
        if ((x_2092 != 0i)) {
          let x_2096 : vec3<f32> = vs_TEXCOORD1;
          let x_2098 : i32 = u_xlati7;
          let x_2101 : i32 = u_xlati7;
          let x_2105 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2098 + 1i) / 4i)][((x_2101 + 1i) % 4i)];
          let x_2107 : vec2<f32> = (vec2<f32>(x_2096.y, x_2096.y) * vec2<f32>(x_2105.x, x_2105.y));
          let x_2108 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2107.x, x_2107.y, x_2108.z, x_2108.w);
          let x_2110 : i32 = u_xlati7;
          let x_2112 : i32 = u_xlati7;
          let x_2115 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[(x_2110 / 4i)][(x_2112 % 4i)];
          let x_2117 : vec3<f32> = vs_TEXCOORD1;
          let x_2120 : vec4<f32> = u_xlat8;
          let x_2122 : vec2<f32> = ((vec2<f32>(x_2115.x, x_2115.y) * vec2<f32>(x_2117.x, x_2117.x)) + vec2<f32>(x_2120.x, x_2120.y));
          let x_2123 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2122.x, x_2122.y, x_2123.z, x_2123.w);
          let x_2125 : i32 = u_xlati7;
          let x_2128 : i32 = u_xlati7;
          let x_2132 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2125 + 2i) / 4i)][((x_2128 + 2i) % 4i)];
          let x_2134 : vec3<f32> = vs_TEXCOORD1;
          let x_2137 : vec4<f32> = u_xlat8;
          let x_2139 : vec2<f32> = ((vec2<f32>(x_2132.x, x_2132.y) * vec2<f32>(x_2134.z, x_2134.z)) + vec2<f32>(x_2137.x, x_2137.y));
          let x_2140 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2139.x, x_2139.y, x_2140.z, x_2140.w);
          let x_2142 : vec4<f32> = u_xlat8;
          let x_2144 : i32 = u_xlati7;
          let x_2147 : i32 = u_xlati7;
          let x_2151 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2144 + 3i) / 4i)][((x_2147 + 3i) % 4i)];
          let x_2153 : vec2<f32> = (vec2<f32>(x_2142.x, x_2142.y) + vec2<f32>(x_2151.x, x_2151.y));
          let x_2154 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2153.x, x_2153.y, x_2154.z, x_2154.w);
          let x_2156 : vec4<f32> = u_xlat8;
          let x_2159 : vec2<f32> = ((vec2<f32>(x_2156.x, x_2156.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2160 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
          let x_2162 : vec4<f32> = u_xlat8;
          let x_2164 : vec2<f32> = fract(vec2<f32>(x_2162.x, x_2162.y));
          let x_2165 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2164.x, x_2164.y, x_2165.z, x_2165.w);
          let x_2167 : u32 = u_xlatu40;
          let x_2170 : vec4<f32> = x_1983.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2167)];
          let x_2172 : vec4<f32> = u_xlat8;
          let x_2175 : u32 = u_xlatu40;
          let x_2178 : vec4<f32> = x_1983.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2175)];
          let x_2180 : vec2<f32> = ((vec2<f32>(x_2170.x, x_2170.y) * vec2<f32>(x_2172.x, x_2172.y)) + vec2<f32>(x_2178.z, x_2178.w));
          let x_2181 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2180.x, x_2180.y, x_2181.z);
        } else {
          let x_2184 : vec3<f32> = vs_TEXCOORD1;
          let x_2186 : i32 = u_xlati7;
          let x_2189 : i32 = u_xlati7;
          let x_2193 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2186 + 1i) / 4i)][((x_2189 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2184.y, x_2184.y, x_2184.y, x_2184.y) * x_2193);
          let x_2195 : i32 = u_xlati7;
          let x_2197 : i32 = u_xlati7;
          let x_2200 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[(x_2195 / 4i)][(x_2197 % 4i)];
          let x_2201 : vec3<f32> = vs_TEXCOORD1;
          let x_2204 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2200 * vec4<f32>(x_2201.x, x_2201.x, x_2201.x, x_2201.x)) + x_2204);
          let x_2206 : i32 = u_xlati7;
          let x_2209 : i32 = u_xlati7;
          let x_2213 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2206 + 2i) / 4i)][((x_2209 + 2i) % 4i)];
          let x_2214 : vec3<f32> = vs_TEXCOORD1;
          let x_2217 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2213 * vec4<f32>(x_2214.z, x_2214.z, x_2214.z, x_2214.z)) + x_2217);
          let x_2219 : vec4<f32> = u_xlat8;
          let x_2220 : i32 = u_xlati7;
          let x_2223 : i32 = u_xlati7;
          let x_2227 : vec4<f32> = x_1983.x_AdditionalLightsWorldToLights[((x_2220 + 3i) / 4i)][((x_2223 + 3i) % 4i)];
          u_xlat8 = (x_2219 + x_2227);
          let x_2229 : vec4<f32> = u_xlat8;
          let x_2231 : vec4<f32> = u_xlat8;
          let x_2233 : vec3<f32> = (vec3<f32>(x_2229.x, x_2229.y, x_2229.z) / vec3<f32>(x_2231.w, x_2231.w, x_2231.w));
          let x_2234 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
          let x_2236 : vec4<f32> = u_xlat8;
          let x_2238 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(vec3<f32>(x_2236.x, x_2236.y, x_2236.z), vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
          let x_2241 : f32 = u_xlat59;
          u_xlat59 = inverseSqrt(x_2241);
          let x_2243 : f32 = u_xlat59;
          let x_2245 : vec4<f32> = u_xlat8;
          let x_2247 : vec3<f32> = (vec3<f32>(x_2243, x_2243, x_2243) * vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
          let x_2248 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
          let x_2250 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(abs(vec3<f32>(x_2250.x, x_2250.y, x_2250.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2255 : f32 = u_xlat59;
          u_xlat59 = max(x_2255, 0.000001f);
          let x_2258 : f32 = u_xlat59;
          u_xlat59 = (1.0f / x_2258);
          let x_2260 : f32 = u_xlat59;
          let x_2262 : vec4<f32> = u_xlat8;
          let x_2264 : vec3<f32> = (vec3<f32>(x_2260, x_2260, x_2260) * vec3<f32>(x_2262.z, x_2262.x, x_2262.y));
          let x_2265 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
          let x_2268 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2268);
          let x_2272 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2272, 0.0f, 1.0f);
          let x_2277 : vec4<f32> = u_xlat9;
          let x_2280 : vec4<bool> = (vec4<f32>(x_2277.y, x_2277.y, x_2277.y, x_2277.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2281 : vec2<bool> = vec2<bool>(x_2280.x, x_2280.w);
          let x_2282 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_2281.x, x_2282.y, x_2282.z, x_2281.y);
          let x_2285 : bool = u_xlatb7.x;
          if (x_2285) {
            let x_2290 : f32 = u_xlat9.x;
            x_2286 = x_2290;
          } else {
            let x_2293 : f32 = u_xlat9.x;
            x_2286 = -(x_2293);
          }
          let x_2295 : f32 = x_2286;
          u_xlat7.x = x_2295;
          let x_2298 : bool = u_xlatb7.w;
          if (x_2298) {
            let x_2303 : f32 = u_xlat9.x;
            x_2299 = x_2303;
          } else {
            let x_2306 : f32 = u_xlat9.x;
            x_2299 = -(x_2306);
          }
          let x_2308 : f32 = x_2299;
          u_xlat7.w = x_2308;
          let x_2310 : vec4<f32> = u_xlat8;
          let x_2312 : f32 = u_xlat59;
          let x_2315 : vec4<f32> = u_xlat7;
          let x_2317 : vec2<f32> = ((vec2<f32>(x_2310.x, x_2310.y) * vec2<f32>(x_2312, x_2312)) + vec2<f32>(x_2315.x, x_2315.w));
          let x_2318 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2317.x, x_2318.y, x_2318.z, x_2317.y);
          let x_2320 : vec4<f32> = u_xlat7;
          let x_2323 : vec2<f32> = ((vec2<f32>(x_2320.x, x_2320.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2324 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2323.x, x_2324.y, x_2324.z, x_2323.y);
          let x_2326 : vec4<f32> = u_xlat7;
          let x_2330 : vec2<f32> = clamp(vec2<f32>(x_2326.x, x_2326.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2331 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2330.x, x_2331.y, x_2331.z, x_2330.y);
          let x_2333 : u32 = u_xlatu40;
          let x_2336 : vec4<f32> = x_1983.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2333)];
          let x_2338 : vec4<f32> = u_xlat7;
          let x_2341 : u32 = u_xlatu40;
          let x_2344 : vec4<f32> = x_1983.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2341)];
          let x_2346 : vec2<f32> = ((vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(x_2338.x, x_2338.w)) + vec2<f32>(x_2344.z, x_2344.w));
          let x_2347 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2346.x, x_2346.y, x_2347.z);
        }
      }
      let x_2354 : vec3<f32> = u_xlat25;
      let x_2357 : f32 = x_43.x_GlobalMipBias.x;
      let x_2358 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2354.x, x_2354.y), x_2357);
      u_xlat7 = x_2358;
      let x_2360 : bool = u_xlatb4.y;
      if (x_2360) {
        let x_2365 : f32 = u_xlat7.w;
        x_2361 = x_2365;
      } else {
        let x_2368 : f32 = u_xlat7.x;
        x_2361 = x_2368;
      }
      let x_2369 : f32 = x_2361;
      u_xlat59 = x_2369;
      let x_2371 : bool = u_xlatb4.x;
      if (x_2371) {
        let x_2375 : vec4<f32> = u_xlat7;
        x_2372 = vec3<f32>(x_2375.x, x_2375.y, x_2375.z);
      } else {
        let x_2378 : f32 = u_xlat59;
        x_2372 = vec3<f32>(x_2378, x_2378, x_2378);
      }
      let x_2380 : vec3<f32> = x_2372;
      let x_2381 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2387 : vec4<f32> = u_xlat7;
    let x_2389 : u32 = u_xlatu40;
    let x_2392 : vec4<f32> = x_1873.x_AdditionalLightsColor[bitcast<i32>(x_2389)];
    let x_2394 : vec3<f32> = (vec3<f32>(x_2387.x, x_2387.y, x_2387.z) * vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
    let x_2395 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
    let x_2397 : f32 = u_xlat56;
    let x_2399 : vec4<f32> = u_xlat7;
    let x_2401 : vec3<f32> = (vec3<f32>(x_2397, x_2397, x_2397) * vec3<f32>(x_2399.x, x_2399.y, x_2399.z));
    let x_2402 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
    let x_2404 : f32 = u_xlat58;
    let x_2406 : vec4<f32> = u_xlat7;
    let x_2408 : vec3<f32> = (vec3<f32>(x_2404, x_2404, x_2404) * vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
    let x_2409 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
    let x_2411 : vec4<f32> = u_xlat1;
    let x_2413 : vec4<f32> = u_xlat6;
    u_xlat40.x = dot(vec3<f32>(x_2411.x, x_2411.y, x_2411.z), vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
    let x_2418 : f32 = u_xlat40.x;
    u_xlat40.x = clamp(x_2418, 0.0f, 1.0f);
    let x_2421 : vec2<f32> = u_xlat40;
    let x_2423 : vec4<f32> = u_xlat7;
    let x_2425 : vec3<f32> = (vec3<f32>(x_2421.x, x_2421.x, x_2421.x) * vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
    let x_2426 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
    let x_2428 : vec4<f32> = u_xlat6;
    let x_2430 : vec4<f32> = u_xlat0;
    let x_2433 : vec4<f32> = u_xlat5;
    let x_2435 : vec3<f32> = ((vec3<f32>(x_2428.x, x_2428.y, x_2428.z) * vec3<f32>(x_2430.y, x_2430.z, x_2430.w)) + vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
    let x_2436 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);

    continuing {
      let x_2438 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2438 + bitcast<u32>(1i));
    }
  }
  let x_2441 : vec3<f32> = u_xlat2;
  let x_2442 : vec4<f32> = u_xlat0;
  let x_2445 : vec4<f32> = u_xlat3;
  u_xlat18 = ((x_2441 * vec3<f32>(x_2442.y, x_2442.z, x_2442.w)) + vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
  let x_2450 : vec4<f32> = u_xlat5;
  let x_2452 : vec3<f32> = u_xlat18;
  let x_2453 : vec3<f32> = (vec3<f32>(x_2450.x, x_2450.y, x_2450.z) + x_2452);
  let x_2454 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
  let x_2458 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2458 == 1.0f);
  let x_2460 : bool = u_xlatb18;
  if (x_2460) {
    let x_2465 : f32 = u_xlat0.x;
    x_2461 = x_2465;
  } else {
    x_2461 = 1.0f;
  }
  let x_2467 : f32 = x_2461;
  SV_Target0.w = x_2467;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

